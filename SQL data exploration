Select *
From SupermarketCustomerInfo

Select * 
From SupermarketProductInfo

Select Branch, City, [Customer type], [Product line], Rating
From SupermarketCustomerInfo

--Seeing higher ratings in Naypyitaw city
Select Branch, City, [Customer type], [Product line], Rating
From SupermarketCustomerInfo
Where City = 'Naypyitaw'
AND Rating > 5.1
Order by Rating Desc

-- Count of purcahses in each branch
Select Branch, Count(Branch) AS PurchaseCount
From SupermarketCustomerInfo
Group by Branch
Order by PurchaseCount

Select [Customer type], Gender, Count( Gender) As CustomerTypeCount
From SupermarketCustomerInfo
Group by [Customer type], Gender
Order by Gender

Select Branch, City, Quantity, [Unit price], [Tax 5%], Total, Date
From SupermarketProductInfo

--Looking at Total before tax 
Select Branch, City, Quantity, [Unit price], [Tax 5%], Total, Date, ([Unit price]*Quantity) As TotalBeforeTax
From SupermarketProductInfo
Order by TotalBeforeTax Desc

--Looking at Branch A Total 
Select Branch, Total, Date
From SupermarketProductInfo
Where Branch = 'A'

Select [Invoice ID], Branch,[Product line], Quantity
From SupermarketProductInfo
Where City = 'Mandalay' and [Product line] = 'Sports and travel'
Order by Quantity


--Number of products that have no rating
Select *
From SupermarketCustomerInfo
Inner JOIN SupermarketProductInfo
On SupermarketCustomerInfo.[Invoice ID] = SupermarketProductInfo.[Invoice ID]
Where Rating is null

--
Select cus.Branch, cus.City, pro.Total, pro.Quantity
From SupermarketCustomerInfo cus
Inner JOIN SupermarketProductInfo pro
On cus.[Invoice ID] = pro.[Invoice ID]
Where pro.Total is not null













 


