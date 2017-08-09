/*sales_per_country.sql: 
Provide a query that shows the total sales per country.*/
select Invoice.BillingCountry  as  "Country"
	,	Total(Invoice.Total)   as  "Total Sale"
from Invoice
group by Invoice.BillingCountry