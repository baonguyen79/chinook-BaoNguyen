/*invoices_line_item_count.sql: 
Provide a query that shows all Invoices but includes the # of invoice line items*/
select Invoice.InvoiceId  as "Invoice Id"
	,	count(*)  as "#Invoice Lines"
from Invoice
join InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
group by InvoiceLine.InvoiceId