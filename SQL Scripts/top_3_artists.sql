/*top_3_artists.sql: 
Provide a query that shows the top 3 best selling artists.*/
select ArtistName
	,  TotalSale
  from (	
		select Artist.Name   as ArtistName
			,  round(Sum(Invoice.Total),2)  as TotalSale	
		from Invoice
		join InvoiceLine on InvoiceLine.InvoiceId = Invoice.InvoiceId
		join Track on Track.TrackId = InvoiceLine.TrackId
		join Album on Album.AlbumId = Track.AlbumId
		join Artist on Artist.ArtistId = Album.ArtistId
		group by ArtistName
		order by TotalSale desc	
	   ) limit 3	
