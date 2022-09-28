# Author: Ayan Hussain

SELECT C.hacker_id, H.name, count(C.challenge_id) AS cnt 
FROM Hackers AS H JOIN Challenges AS C ON H.hacker_id = C.hacker_id
GROUP BY C.hacker_id, H.name 
HAVING cnt = (SELECT count(C1.challenge_id) FROM Challenges AS C1 GROUP BY C1.hacker_id 
              ORDER BY count(*) desc limit 1) or
cnt NOT IN (SELECT count(C2.challenge_id) FROM Challenges AS C2 GROUP BY C2.hacker_id 
            HAVING C2.hacker_id <> C.hacker_id)
ORDER BY cnt DESC, C.hacker_id;