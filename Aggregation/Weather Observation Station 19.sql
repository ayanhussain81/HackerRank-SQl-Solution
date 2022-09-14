# Author: Ayan Hussain
select round(SQRT(power(max(LAT_N) - Min(LAT_N),2) + power(max(LONG_W) - Min(LONG_W),2)),4 ) FROM STATION