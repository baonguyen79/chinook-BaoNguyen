/*sales_agent_total_sales.sql: 
Provide a query that shows total sales made by each sales agent.*/
select Employee.FirstName || " " || Employee.LastName as SaleAgent
	, round(Total(Invoice.Total),2) as "Total sale"
from Invoice
join Customer on Customer.CustomerId = Invoice.CustomerId
join Employee on Employee.EmployeeId = Customer.SupportRepId
group by SaleAgent