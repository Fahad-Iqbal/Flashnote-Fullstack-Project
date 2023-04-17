DROP DATABASE IF EXISTS flashnote_db;
CREATE DATABASE flashnote_db;
USE flashnote_db;

-- Relational Model
-- Users (user_id, user_name, user_email, password, created_at, updated_at)
-- Documents (document_id, user_id(FK), document_title, document_status, created_at, updated_at)
-- Notes (note_id, document_id(FK), parent_note(FK), order_of_appearance, note_content, created_at, updated_at)
-- Flashcards (flashcard_id, note_id(FK), prompt, response, is_disabled, time_for_next_review, created_at, updated_at)
-- Images (image_id, note_id(FK), filepath, created_at, updated_at)
-- Occulsions (occulsion_id, image_id(FK), start_x, start_y, end_x, end_y, created_at, updated_at)
-- Hashtags (hashtag_id, hashtag_name, created_at, updated_at)
-- notes_hashtags (note_id(FK), hashtag_id(FK))

CREATE TABLE users (
    user_id INT AUTO_INCREMENT,
    user_name VARCHAR(50) UNIQUE NOT NULL,
    user_email VARCHAR(255) UNIQUE NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id)
);

CREATE TABLE documents (
    document_id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    document_title VARCHAR(255) NOT NULL DEFAULT 'Untitled Document',
    document_status VARCHAR(10) NOT NULL DEFAULT 'draft',
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (document_id),
    CONSTRAINT fk_documents_user_id FOREIGN KEY (user_id)
        REFERENCES users (user_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE notes (
    note_id INT AUTO_INCREMENT,
    document_id INT NOT NULL,
    parent_note INT,
    order_of_appearance INT NOT NULL,
    note_content VARCHAR(5000) NOT NULL DEFAULT '',
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (note_id),
    CONSTRAINT fk_notes_document_id FOREIGN KEY (document_id)
        REFERENCES documents (document_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_notes_parent_note FOREIGN KEY (parent_note)
        REFERENCES notes (note_id)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE flashcards (
    flashcard_id INT AUTO_INCREMENT,
    note_id INT NOT NULL,
    prompt VARCHAR(5000) NOT NULL,
    response VARCHAR(5000) NOT NULL,
    is_disabled TINYINT NOT NULL DEFAULT 0,
    time_for_next_review TIMESTAMP NOT NULL DEFAULT NOW(),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (flashcard_id),
    CONSTRAINT fk_flashcards_note_id FOREIGN KEY (note_id)
        REFERENCES notes (note_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

 /* I altered the table by dropping 2 columns because they contain 
  duplicate information that is available in the notes table */
  
ALTER TABLE flashcards DROP COLUMN prompt, DROP COLUMN response;
DESCRIBE flashcards;

CREATE TABLE images (
    image_id INT AUTO_INCREMENT,
    note_id INT NOT NULL,
    filepath VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (image_id),
    CONSTRAINT fk_images_note_id FOREIGN KEY (note_id)
        REFERENCES notes (note_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE occulsions (
    occulsion_id INT AUTO_INCREMENT,
    image_id INT NOT NULL,
    start_x DECIMAL(6 , 2 ) NOT NULL,
    start_y DECIMAL(6 , 2 ) NOT NULL,
    end_x DECIMAL(6 , 2 ) NOT NULL,
    end_y DECIMAL(6 , 2 ) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (occulsion_id),
    CONSTRAINT fk_occulsions_image_id FOREIGN KEY (image_id)
        REFERENCES images (image_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE hashtags (
    hashtag_id INT AUTO_INCREMENT,
    hashtag_name VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (hashtag_id)
);

CREATE TABLE notes_hashtags (
    note_id INT NOT NULL,
    hashtag_id INT NOT NULL,
    PRIMARY KEY (note_id , hashtag_id),
    CONSTRAINT fk_notes_hashtags_note_id FOREIGN KEY (note_id)
        REFERENCES notes (note_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_notes_hashtags_hashtag_id FOREIGN KEY (hashtag_id)
        REFERENCES hashtags (hashtag_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

DELIMITER //
CREATE PROCEDURE get_flashcard_context(IN flash_id INT)
BEGIN
	WITH RECURSIVE context_cte AS ( 

	   SELECT notes.note_id,   -- base case: finds the note associated with the provided flashcard_id
			  note_content, 
			  parent_note,
			  order_of_appearance
	   FROM notes JOIN flashcards on notes.note_id = flashcards.note_id 
	   WHERE flashcards.flashcard_id = flash_id

	   UNION ALL  -- adds further entries to the base case

	   SELECT n.note_id,
			  n.note_content,
			  n.parent_note, 
			  n.order_of_appearance
	   FROM notes n
		 JOIN context_cte AS cte ON cte.parent_note = n.note_id -- recursively selects parent_notes from the earlier entries in the cte
	)
	SELECT note_content
	FROM context_cte where context_cte.note_id != (select f.note_id from flashcards as f where f.flashcard_id = flash_id) ORDER BY order_of_appearance;
END //



DELIMITER // 
CREATE PROCEDURE delete_note(IN n_id INT) 
BEGIN
   DECLARE max_ord INT;
   DECLARE ord INT;
   DECLARE doc_id INT;
   DECLARE note_to_update_id INT;
   SET ord = (SELECT order_of_appearance FROM notes WHERE note_id = n_id);
   SET doc_id = (SELECT document_id FROM notes WHERE note_id = n_id);
   SET max_ord = (SELECT MAX(order_of_appearance) FROM notes WHERE document_id = doc_id);

   WHILE ord < max_ord DO 
      SET note_to_update_id = (SELECT note_id FROM notes WHERE order_of_appearance = ord + 1 AND document_id = doc_id);
      UPDATE notes SET order_of_appearance = ord WHERE note_id = note_to_update_id;
      SET ord = ord + 1;
   END WHILE;

   DELETE FROM notes WHERE note_id = n_id;
END// 



DELIMITER //
CREATE PROCEDURE insert_note(IN note_position INT, IN doc_id INT, IN n_content VARCHAR(5000)) 
BEGIN
   DECLARE max_order INT;
   DECLARE ord INT;
   DECLARE note_to_update_id INT;
   SET ord = note_position;
   SET max_order = (SELECT MAX(order_of_appearance) FROM notes WHERE document_id = doc_id);
   
   WHILE max_order >= note_position DO 
      SET note_to_update_id = (SELECT note_id FROM notes WHERE order_of_appearance = max_order AND document_id = doc_id);
      UPDATE notes SET order_of_appearance = max_order + 1 WHERE note_id = note_to_update_id;
      SET max_order = max_order - 1;
   END WHILE;
   
   INSERT INTO notes (document_id, order_of_appearance, note_content) VALUES (doc_id, note_position, n_content);
END //
