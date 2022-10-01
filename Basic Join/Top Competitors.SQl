# Author: Ayan Hussain

SELECT H.hacker_id , H.name  
FROM Submissions as S join Hackers as H ON S.hacker_id = H.hacker_id
JOIN Challenges as C on S.challenge_id = C.challenge_id
join Difficulty as D on C.difficulty_level = D.difficulty_level
where S.score = D.score
group by H.hacker_id , H.name
having count(*) > 1
order by count(*) desc, H.hacker_id ;