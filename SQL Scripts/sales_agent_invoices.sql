/*sales_agent_invoices.sql: 
Provide a query that shows the invoices associated with each sales agent.
 The resultant table should include the Sales Agent's full name.*/
 
 select Employee.FirstName || " " || Employee.LastName as Full_Name
	,	Employee.Title
	,	Employee.EmployeeId
	,   Invoice.CustomerId
	,   Invoice.InvoiceId	
 from Employee
 join Customer on Customer.SupportRepId = Employee.EmployeeId
 join Invoice on Invoice.CustomerId = Customer.CustomerId
 
 
 