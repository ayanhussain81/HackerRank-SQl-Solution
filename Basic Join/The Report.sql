# Author: Ayan Hussain
SELECT IF(G.GRADE >= 8  , S.NAME , "NULL") , G.GRADE, S.MARKS FROM STUDENTS S 
INNER JOIN GRADES G
ON S.MARKS BETWEEN G.Min_MARK AND G.Max_Mark
ORDER BY G.grade DESC, S.name ASC;