/*line_item_track_artist.sql:
 Provide a query that includes the purchased track name 
 AND artist name with each invoice line item.*/
 
 select InvoiceLine.InvoiceId
	,	Track.Name  as "Track Name"
	,	Artist.Name  as "Artist Name"
 from InvoiceLine 
 join  Track on Track.TrackId = InvoiceLine.TrackId
 join  Album on Album.AlbumId = Track.AlbumId
 join  Artist on Artist.ArtistId = Album.ArtistId 