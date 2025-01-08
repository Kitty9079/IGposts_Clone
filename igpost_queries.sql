-- 1.Finding 5 oldest users
select * from users 
order by created_at 
LIMIT 5;

-- 2.What most popular they that people registered to ig?
select 
	   dayname(created_at) as day_created,
       count(*) as total
from users
group by day_created
order by total DESC 
LIMIT 2;

-- 3.Find User who never post photo.
SELECT DISTINCT username, image_url from users
LEFT JOIN photos
	ON users.id = photos.user_id
WHERE image_url is NULL;

-- 4.Who got the most like in single photos?
SELECT 
	username,
    photos.id,
    photos.image_url,
    count(*) as total 
FROM photos 
INNER JOIN likes 
	ON likes.photo_id = photos.id
INNER JOIN users
	ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC;

-- 5.How may times does the average user post?
SELECT
	(SELECT COUNT(*) FROM photos) /
	(SELECT COUNT(*) FROM users) AS `Average post per person`;
    
-- 6.What are the most used hashtag?
SELECT tags.tag_name,
	   COUNT(*) as total
FROM photo_tags
JOIN tags
	ON photo_tags.tag_id = tags.id 
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

-- 7.Find Users who have liked every single photo on the site.

-- Find Number of photos in site

SELECT count(*) FROM photos

-- Find the people who has like same as above

SELECT 
	username,
	count(*) as num_likes
FROM users
INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 





