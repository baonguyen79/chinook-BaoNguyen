/*line_items_per_invoice.sql: Looking at the InvoiceLine table,
 provide a query that COUNTs the number of line items for each Invoice.
 HINT: GROUP BY*/
 select InvoiceLine.InvoiceId 
	, count(*) as "#items"
 from InvoiceLine
 group by InvoiceLine.InvoiceId
 