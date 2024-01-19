Select * 
From SupermarketSales

--Standardise date format
Select Date, Convert(Date, Date)
From SupermarketSales

Update SupermarketSales
Set Date = Convert(Date, Date)

--Show correct time 
Select Time, Convert(Time, Time)
From SupermarketSales

Update SupermarketSales
Set Time = Convert(Time, Time)

--Remove unused columns
Select * 
From SupermarketSales

Alter Table SupermarketSales
Drop Column [gross margin percentage], [gross income]

Alter Table SupermarketSales
Drop Column Time

Alter Table SupermarketSales
Drop Column cogs










