# Author: Ayan Hussain
SELECT W.ID, WP.AGE, W.COINS_NEEDED , W.power FROM WANDS W
JOIN Wands_Property AS WP ON W.code = WP.code
where WP.is_evil = 0 and W.COINS_NEEDED = (SELECT MIN(X.COINS_NEEDED) FROM
                                           WANDS X JOIN WANDS_PROPERTY AS Y
                                           ON X.CODE = Y.CODE 
                                           WHERE Y.AGE = WP.AGE AND X.POWER = W.POWER)
order by  W.power DESC,  WP.age desc;
