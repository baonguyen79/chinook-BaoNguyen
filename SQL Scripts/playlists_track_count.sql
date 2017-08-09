/*playlists_track_count.sql: 
Provide a query that shows the total number of tracks in each playlist. 
The Playlist name should be include on the resulant table.*/
select Playlist.Name
	,  count(*) as "#Tracks" 	
from Playlist 
join PlaylistTrack on PlaylistTrack.PlaylistId = Playlist.PlaylistId
group by PlaylistTrack.PlaylistId
