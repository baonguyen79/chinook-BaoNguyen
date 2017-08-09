/*total_sales_{year}.sql: What are the respective total sales for each of those years?*/
select strftime('%Y',Invoice.InvoiceDate) as Year
	 , total(Invoice.Total) as "Total Sales"
from Invoice
where strftime('%Y',Invoice.InvoiceDate) between "2009" and "2011"
group by strftime('%Y',Invoice.InvoiceDate)