/*top_media_type.sql: Provide a query that shows the most purchased Media Type.*/
select MediaType
	,  Max(TotalQty)  as "Total Sale"
	from (
			select MediaType.Name   as MediaType
				,  Sum(InvoiceLine.Quantity) as TotalQty
			from InvoiceLine
			join Track on Track.TrackId = InvoiceLine.TrackId
			join MediaType on MediaType.MediaTypeId = Track.MediaTypeId
			Group by  MediaType
		  )	


