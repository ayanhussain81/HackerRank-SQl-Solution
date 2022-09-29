# Author: Ayan Hussain
SELECT C.customer_id, C.name, CONCAT('+',CC.country_code,C.phone_number) 
FROM customers C , country_codes CC where C.country = CC.country 
order by C.customer_id ASC