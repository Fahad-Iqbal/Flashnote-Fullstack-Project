drop database if exists flashnote_db;
create database flashnote_db;
use flashnote_db;

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
    password VARCHAR(255) NOT NULL,
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
    FOREIGN KEY (parent_note)
        REFERENCES notes (note_id)
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






















