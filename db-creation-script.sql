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

CREATE procedure delete_note(in n_id int)
BEGIN
  
  declare max_ord INT;
  declare ord INT;
  declare doc_id INT;
  declare note_to_update_id INT;
  SET ord = (select order_of_appearance from notes where note_id = n_id);
  set doc_id = (select document_id from notes where note_id = n_id);
  set max_ord = (select max(order_of_appearance) from notes where document_id = doc_id); 


   WHILE ord < max_ord DO
   
	SET note_to_update_id = (select note_id from notes where order_of_appearance = ord + 1 and document_id = doc_id);
	UPDATE notes 
	SET 
		order_of_appearance = ord
	WHERE
		note_id = note_to_update_id;
	SET ord = ord + 1;
     
   END WHILE;
DELETE FROM notes 
WHERE
    note_id = n_id;
	
END//


DELIMITER //

CREATE PROCEDURE insert_note(IN position INT, IN doc_id INT, IN n_content VARCHAR(5000))
BEGIN
  
  DECLARE max_ord INT;
  DECLARE ord INT;
  DECLARE note_to_update_id INT;
 
  SET ord = position;
  SET max_ord = (SELECT MAX(order_of_appearance) FROM notes WHERE document_id = doc_id); 


   WHILE max_ord >= position DO
   
	SET note_to_update_id = (SELECT note_id FROM notes WHERE order_of_appearance = max_ord AND document_id = doc_id);
	UPDATE notes 
SET 
    order_of_appearance = max_ord + 1
WHERE
    note_id = note_to_update_id;
	SET max_ord = max_ord - 1;
     
END WHILE;
INSERT INTO notes (document_id, order_of_appearance, note_content) VALUES (doc_id, position, n_content);
	
END//











