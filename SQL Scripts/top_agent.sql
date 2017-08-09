/*top_agent.sql: 
Which sales agent made the most in sales over all?*/
select SaleAgent   as  "Sale Agent"
	,  Max(TotalSale)  as "Total Sale"
from (
		select Employee.FirstName || " " || Employee.LastName as SaleAgent
			, round(Total(Invoice.Total),2) as TotalSale
		from Invoice
		join Customer on Customer.CustomerId = Invoice.CustomerId
		join Employee on Employee.EmployeeId = Customer.SupportRepId
		group by SaleAgent
	)