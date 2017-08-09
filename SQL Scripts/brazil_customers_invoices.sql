/*brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil.
 The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
 */

 select FirstName
	  , LastName
	  , InvoiceId
	  , InvoiceDate
	  , BillingCountry 
 from Customer 
 join Invoice on Invoice.CustomerId = Customer.CustomerId
 where Country = "Brazil"