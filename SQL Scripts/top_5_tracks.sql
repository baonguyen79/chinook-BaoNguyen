/*top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.*/
select  Track  
	,  TrackPurchased
 from (
		select Track.Name as Track
			,  Sum(InvoiceLine.Quantity) as  TrackPurchased
		from Invoice
		join InvoiceLine on Invoice.InvoiceId = InvoiceLine.InvoiceId
		join Track on InvoiceLine.TrackId = Track.TrackId
		group by Track.Name
		order by TrackPurchased desc
		
	  )
limit 5