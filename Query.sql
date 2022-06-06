SELECT brandCode,Count(*)
FROM receiptitems
GROUP BY brandCode
Order by COUNT(*) desc
Limit 6;