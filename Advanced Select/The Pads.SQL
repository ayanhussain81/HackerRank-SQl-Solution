# Author: Ayan Hussain
SELECT CONCAT(NAME , '(',  LEFT(Occupation, 1), ')') AS NAMEE FROM OCCUPATIONS
ORDER BY NAMEE ;
SELECT CONCAT('There are a total of', ' ', count(occupation),' ', lower(occupation),'s.') as totals
from OCCUPATIONS
GROUP BY occupation
ORDER BY totals

