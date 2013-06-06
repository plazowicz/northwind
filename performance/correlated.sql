 SELECT e."EmployeeID", c."CustomerID", s."SupplierID", cat."CategoryName", count(*), 
	sum(od."UnitPrice"*od."Quantity"*(1.0-od."Discount")),(
		select sum(odd."UnitPrice"*odd."Quantity"*(1.0-odd."Discount")) from Customers as cc 
	    	inner join Orders as oo on oo."CustomerID" = cc."CustomerID"
	    	inner join Order_Details as odd on oo."OrderID" = odd."OrderID"
	    	where cc."CustomerID" = c."CustomerID"
)
FROM 
	Customers as c
 	inner join Orders as o on o."CustomerID" = c."CustomerID"
 	inner join Order_Details as od on o."OrderID" = od."OrderID"
 	inner join Products as p on p."ProductID" = od."ProductID"
 	inner join Categories as cat on cat."CategoryID"=p."CategoryID" 
 	inner join Employees as e on e."EmployeeID" = o."EmployeeID"
 	inner join Suppliers as s on s."SupplierID" = p."SupplierID"
group by e."EmployeeID", c."CustomerID", cat."CategoryName", s."SupplierID"
having ( select sum((select count(*) from Orders as oo where oo."CustomerID" = cc."CustomerID")) 
	as suma from Customers as cc
	) > 10;

