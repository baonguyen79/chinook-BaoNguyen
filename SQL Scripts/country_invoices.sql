/*country_invoices.sql: 
Provide a query that shows the # of invoices per country. HINT: GROUP BY*/
select Invoice.BillingCountry
	,  count(*)  as  "#Invoice"	
from Invoice
group by Invoice.BillingCountry