-- добавим, посмотрим, удалим новый пост
SELECT * FROM Posts;
INSERT INTO Posts (user_id, content) VALUES (3, 'Test post,');
DELETE FROM Posts WHERE post_id = 3;

-- подсситать количество постов каждого пользователя
SELECT user_id, COUNT(*) AS post_count 
FROM Posts 
GROUP BY user_id 
HAVING COUNT(*)

-- список постов с именами пользователей
SELECT Posts.post_id, Users.username, Posts.content 
FROM Posts 
JOIN Users ON Posts.user_id = Users.user_id;

-- агрегатная функцяа
SELECT COUNT(*) AS total_posts FROM Posts;

-- Проверка индексов
EXPLAIN ANALYZE SELECT * FROM Posts WHERE user_id = 2;

-- описк комментария
SELECT * FROM Comments 
WHERE post_id IN (SELECT post_id FROM Posts WHERE user_id = 3)
AND text ILIKE '%for%';