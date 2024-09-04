/*
In first exercise (javascript) we get this shape of table - let's call it Posts:
- userId (int)
- id (int) -> I assume that newwer posts get higher ID
- title (varchar)
- body (text)
*/


--1A: 
SELECT frst.userID AS 'User ID',
       frst.id AS 'First post ID', frst.title AS 'First post title', frst.body AS 'First post body',
       lst.id AS 'Last post ID', lst.title AS 'Last post title', lst.body AS 'Last post body'
FROM (
    SELECT userID, id, title, body
    FROM Posts
    WHERE id = (
                SELECT MIN(id) 
                FROM Posts AS p2 
                WHERE p2.userID = Posts.userID
                )
    ) AS frst
JOIN(
    SELECT userID, id, title, body
    FROM Posts
    WHERE id = (
                SELECT MAX(id) 
                FROM Posts AS p2 
                WHERE p2.userID = Posts.userID
                )
    ) AS lst
ON frst.userID = lst.userID;


--1B
select avg(cnt) as 'Average user posts'
from (
    select count(id) as cnt
    from Posts
    group by userID
)

--2
/*
Campaigns:
- campaignId, (varchar)
- createDate, (date)
- advertiserId, (varchar)
- adId, (int)
- budget, (int)

Ads:
- adId, (int)
- createDate, (date)
- campaignId, (varchar)
- geoTargeting (char)
*/

--2A
SELECT 
    c.*,
    a.adId,
    a.createDate AS addCreateDate,
    a.geoTargeting
FROM 
    Campaigns as c
LEFT JOIN 
    Ads as a
ON 
    c.campaignId = a.campaignId;

--2B
SELECT 
    a.geoTargeting,
    c.*
FROM 
    Ads AS a
JOIN 
    Campaigns AS c
ON 
    a.campaignId = c.campaignId
WHERE 
    a.geoTargeting IN (
        SELECT geoTargeting
        FROM Ads
        GROUP BY geoTargeting
        ORDER BY COUNT(*) DESC
        LIMIT 3
    );

--2C
SELECT 
    c.*,
    a.adId,
    a.createDate AS addCreateDate,
    a.geoTargeting
FROM 
    Campaigns AS c
LEFT JOIN 
    Ads AS a
ON 
    c.campaignId = a.campaignId
WHERE 
    c.campaignId IN (
        SELECT campaignId
        FROM Campaigns
        ORDER BY budget DESC
        LIMIT 3
    );


