# Author: Ayan Hussain

SET @rowindex := -1;
 
SELECT
   ROUND(AVG(d.LAT),4) as Median 
FROM
   (SELECT @rowindex:=@rowindex + 1 AS rowindex,
           STATION.LAT_N AS LAT
    FROM STATION
    ORDER BY STATION.LAT_N) AS d
WHERE
d.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));