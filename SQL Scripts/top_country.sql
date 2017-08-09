/*top_country.sql: Which country's customers spent the most*/
select Country
	,  Max(TotalSale)
 from (select Invoice.BillingCountry  as  Country
			,	Total(Invoice.Total)   as  TotalSale
		from Invoice
		group by Invoice.BillingCountry
	  )	
