SELECT c."CustomerID", cat."CategoryName", count(*) 
FROM 
	Customers as c
 	inner join Orders as o on o."CustomerID" = c."CustomerID"
 	inner join Order_Details as od on o."OrderID" = od."OrderID"
 	inner join Products as p on p."ProductID" = od."ProductID"
 	inner join Categories as cat on cat."CategoryID" = p."CategoryID" 
group by c."CustomerID", cat."CategoryName";
