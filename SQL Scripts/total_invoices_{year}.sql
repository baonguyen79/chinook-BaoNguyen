/*total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?*/
select count(*) as "#Invoices"
from Invoice
where strftime('%Y',Invoice.InvoiceDate) between "2009" and "2011"
