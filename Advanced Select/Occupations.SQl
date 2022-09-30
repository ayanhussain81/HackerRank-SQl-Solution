# Author: Ayan Hussain

SELECT 
    Doctor, 
    Professor, 
    Singer,
    Actor
    FROM (
    SELECT
    Namesequence,
    max(case Occupation when 'Doctor' then Name end) as Doctor,
    max(case Occupation when 'Professor' then Name end) as Professor,
    max(case Occupation when 'Singer' then Name end) as Singer,
    max(case Occupation when 'Actor' then Name end) as Actor
        
    from (SELECT 
         Occupation,
         NAME,
         row_number() over (partition by Occupation order by Name ASC) as Namesequence
        from occupations ) as Namelists
        group by Namesequence
    ) AS Names
    