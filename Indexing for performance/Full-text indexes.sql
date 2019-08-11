USE sql_blogs;

-- this can really slow
-- also this only returns only posts with the exact string present
-- in the title or body, it won't return posts that just contain 'react'
-- or contain 'redux react'
SELECT *
FROM psots
WHERE title LIKE '%react redux%'
	OR body LIKE '%react redux%';

-- solution would be a full-text index
CREATE FULLTEXT INDEX ix_title_body ON posts (title, body);

-- returns all records containing any word in the AGAINST argument
-- a fulltext index has a relevance score with floating point value between 0 and 1
-- for each row
SELECT *, MATCH(title, body) AGAINST ('react redux')
FROM posts
WHERE MATCH(title, body) AGAINST ('react redux');

-- fulltext searches have two modes,
-- natural text (default) and boolean mode
-- boolean mode allows you to exclude certain words
-- "-word" exclude from search
-- "+form" MUST have in title or body
SELECT *, MATCH(title, body) AGAINST ('react redux')
FROM posts
WHERE MATCH(title, body) AGAINST ('react -redux +form' IN BOOLEAN MODE);

-- searching for posts with an exact phrase
SELECT *, MATCH(title, body) AGAINST ('react redux')
FROM posts
WHERE MATCH(title, body) AGAINST ('"handling a form"' IN BOOLEAN MODE);