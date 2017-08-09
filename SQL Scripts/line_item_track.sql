/*line_item_track.sql: 
Provide a query that includes the purchased track name with each invoice line item.*/
select InvoiceLine.InvoiceId
	,  Track.Name 	
from InvoiceLine
join Track on Track.TrackId = InvoiceLine.TrackId