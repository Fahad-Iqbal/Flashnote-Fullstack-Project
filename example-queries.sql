-- Given a user_id and document_id, this query displays all the notes in the document

SELECT 
    note_content as Notes
FROM
    notes AS n
        JOIN
    documents AS d ON n.document_id = d.document_id
        JOIN
    users AS u ON d.user_id = u.user_id
WHERE
    u.user_id = 1 AND d.document_id = 1
ORDER BY order_of_appearance; 


-- This query returns all the parent notes (context) of a note associated with the given flashcard_id
-- In this specific example the query returns the parent notes of a note which is associated with the flashcard with flashcard_id = 1

CALL get_flashcard_context(1);


-- select the titles of all documents that belong to a specific user
SELECT 
    document_title AS 'Your Documents'
FROM
    documents
        JOIN
    users ON documents.user_id = users.user_id
WHERE
    users.user_id = 1;


-- change order_of_appearance for notes when a note is deleted
-- this example uses a stored procedure to delete a note with note_id = 1, and changes the order of appearance for all the following notes
CALL delete_note(5);
select * from notes where document_id = 1;

-- insert a new note and change order_of_appearance for the following notes using a stored procedure
-- insert_note(IN note_position INT, IN doc_id INT, IN n_content VARCHAR(5000))
CALL insert_note(7, 1, "New Note");

SELECT 
	order_of_appearance, note_content 
FROM 
	notes 
WHERE 
	document_id = 1 
ORDER BY order_of_appearance;


-- given the note_id and some string, update the note_content of a note 
UPDATE notes 
SET 
    note_content = 'Change this note'
WHERE
    note_id = 4;


-- given a document_id, search a document by search string
SELECT 
    note_content
FROM
    notes
        JOIN
    documents ON notes.document_id = documents.document_id
WHERE
    note_content LIKE '%photosynthesis%'
        AND documents.document_id = 4;
        
-- given a user_id, search all notes by search string
SELECT 
    note_content
FROM
    notes AS n
        JOIN
    documents AS d ON n.document_id = d.document_id
        JOIN
    users AS u ON d.user_id = u.user_id
WHERE
    u.user_id = 2
        AND n.note_content LIKE '%photosynthesis%';

-- given a document_id, search a document by hashtag
SELECT 
    note_content
FROM
    notes AS n
        JOIN
    documents AS d ON n.document_id = d.document_id
        JOIN
    notes_hashtags AS nh ON n.note_id = nh.note_id
        JOIN
    hashtags AS h ON nh.hashtag_id = h.hashtag_id
WHERE
    h.hashtag_name LIKE '%examprep%'
        AND d.document_id = 9;
        
-- given a user_id, search search all notes by hashtag
SELECT 
    note_content
FROM
    notes AS n
        JOIN
    documents AS d ON n.document_id = d.document_id
        JOIN
	users as u ON d.user_id = u.user_id
		JOIN
    notes_hashtags AS nh ON n.note_id = nh.note_id
        JOIN
    hashtags AS h ON nh.hashtag_id = h.hashtag_id
WHERE
    h.hashtag_name LIKE '%examprep%'
        AND u.user_id = 4;


-- show all flashcards that need to be practiced, i.e time_for_next_review < now()
SELECT 
    *
FROM
    flashcards
WHERE
    time_for_next_review < NOW() and is_disabled = 0;


-- given user_id, show how many flashcards need to be reviewed
SELECT 
    COUNT(*)
FROM
    flashcards AS f
        JOIN
    notes AS n ON f.note_id = n.note_id
        JOIN
    documents AS d ON n.document_id = d.document_id
        JOIN
    users AS u ON d.user_id = u.user_id
WHERE
    u.user_id = 1
        AND f.time_for_next_review < NOW()
        AND is_disabled = 0;


-- update flashcard time_for_next_review given a flashcard_id

/* I've learned that MySQL doesn't like to update the same table that it is reading from 
 so I had to split this into 2 queries */

SELECT DATE_ADD((SELECT time_for_next_review FROM flashcards WHERE flashcard_id = 5), INTERVAL 4 HOUR) INTO @NewReviewTime;
UPDATE flashcards SET time_for_next_review = @NewReviewTime WHERE flashcard_id = 5;

SELECT time_for_next_review FROM flashcards WHERE flashcard_id = 5;

-- disable a flashcard
UPDATE flashcards SET is_disabled = 1 WHERE flashcard_id = 9;
SELECT * FROM flashcards WHERE is_disabled = 1; 

-- show all user_names where the users have one or more documents
SELECT 
    user_name, COUNT(document_title)
FROM
    users
        JOIN
    documents ON users.user_id = documents.user_id
GROUP BY users.user_id;


-- show all user_names where the users have not created any documents
SELECT 
    user_name, COUNT(document_title)
FROM
    users
        LEFT JOIN
    documents ON users.user_id = documents.user_id
GROUP BY users.user_id
HAVING COUNT(document_title) = 0; 