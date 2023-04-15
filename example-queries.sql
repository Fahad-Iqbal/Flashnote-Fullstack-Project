-- This query returns all the parent notes of a specific note
-- In this specific example the query returns the parent notes of a note with note_id = 5

WITH RECURSIVE context_cte AS ( 
   SELECT note_id, 
          note_content, 
          parent_note,
          order_of_appearance
   FROM notes
   WHERE note_id = 5

   UNION ALL 

   SELECT n.note_id,
          n.note_content,
          n.parent_note, 
          n.order_of_appearance
   FROM notes n
     JOIN context_cte AS cte ON cte.parent_note = n.note_id
)
SELECT note_content
FROM context_cte WHERE note_id != 5 ORDER BY order_of_appearance ;


-- Given a user_id and document_id, this query displays all the notes in the document

SELECT 
    n.note_content AS 'Notes'
FROM
    notes AS n
        JOIN
    documents AS d ON n.document_id = d.document_id
        JOIN
    users AS u ON d.user_id = u.user_id
WHERE
    u.user_id = 1 AND d.document_id = 1
ORDER BY order_of_appearance; 
