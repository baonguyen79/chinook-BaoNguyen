/*top_2013_track.sql: Provide a query that shows the most purchased track of 2013*/
select  Track   as  "Track"
	,   Max(TrackPurchased)	 as "#Purchase"
 from (
		select Track.Name as Track
			,  Sum(InvoiceLine.Quantity)  as  TrackPurchased
		from Invoice
		join InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
		join Track on InvoiceLine.TrackId = Track.TrackId
		where strftime('%Y',Invoice.InvoiceDate) = "2013"
	  )

	  
