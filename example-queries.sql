-- This query returns all the parent notes (context) of a note associated with the given flashcard_id
-- In this specific example the query returns the parent notes of a note which is associated with the flashcard with flashcard_id = 1

WITH RECURSIVE context_cte AS ( 

   SELECT notes.note_id, 
          note_content, 
          parent_note,
          order_of_appearance
   FROM notes JOIN flashcards on notes.note_id = flashcards.note_id 
   WHERE flashcards.flashcard_id = 1

   UNION ALL 

   SELECT n.note_id,
          n.note_content,
          n.parent_note, 
          n.order_of_appearance
   FROM notes n
     JOIN context_cte AS cte ON cte.parent_note = n.note_id
)
SELECT note_content
FROM context_cte where context_cte.note_id != (select f.note_id from flashcards as f where f.flashcard_id = 1) ORDER BY order_of_appearance ;


-- Given a user_id and document_id, this query displays all the notes in the document

SELECT 
    n.note_content AS Notes
FROM
    notes AS n
        JOIN
    documents AS d ON n.document_id = d.document_id
        JOIN
    users AS u ON d.user_id = u.user_id
WHERE
    u.user_id = 1 AND d.document_id = 1
ORDER BY order_of_appearance; 


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
CALL delete_note(1);
select * from notes where document_id = 1;

-- insert a new note and change order_of_appearance for the preceding notes using a stored procedure
-- insert_note(IN position INT, IN doc_id INT, IN n_content VARCHAR(5000))
CALL insert_note(7, 1, "New Note");
SELECT order_of_appearance, note_content FROM notes WHERE document_id = 1 ORDER BY order_of_appearance;


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







