/*tracks_no_id.sql: 
Provide a query that shows all the Tracks, but displays no IDs. 
The result should include the Album name, Media type and Genre.*/
select Track.Name     as "Track Name"
	,	Album.Title		as "Album"
	,	MediaType.Name	as "Media Type"
	,   Genre.Name		as "Genre"
from Track
join Album on Album.AlbumId = Track.AlbumId
join MediaType on MediaType.MediaTypeId = Track.MediaTypeId
join Genre on Genre.GenreId = Track.GenreId