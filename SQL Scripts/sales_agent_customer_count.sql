/*sales_agent_customer_count.sql: 
Provide a query that shows the count of customers assigned to each sales agent.*/

select Employee.FirstName || " " || Employee.LastName as SaleAgent
	, count(*)  as "#Customers"
  from Employee
  join Customer on Customer.SupportRepId = Employee.EmployeeId
  group by SaleAgent