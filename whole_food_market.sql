1-Analyze all the tables by describing and printing their contents.

select * from orders;

2- Write a query for the same. Result should be such that the highest profit category and 
its respective sum of profit be on the top of result set.

select Category,SUM(Profit) from orders group by Category
order by SUM(Profit) desc;

Ques-Which category had the highest profits?
Ans- Technology

3-Write the query to update the city as Chandigarh where the State is Chandigarh.
Print all the contents of the table after updating.

UPDATE Orders 
SET City = 'Chandigarh' 
WHERE State = 'Chandigarh' AND City = 'Delhi';
select * from orders;

4-Write a query to find the total profit sum from orders table.

select sum(profit) from orders;

5-Write a query to get the OrderID, ProductName and Profit. 
Result should be with respect to profit(In increasing order).

select Order_ID,Product_Name, Profit from orders
order by Profit;

Ques-Your manager wants to know the Product with highest loss.
Write the Product_Name of such product. (Loss is when profit gets negative.)
Ans-Cubify CubeX 3D Printer Double Head Print

6-Write a query to get all the orders where there was a loss and report the order ID, product name and loss. 
Sort the result in a format that the highest loss is on the top.

select Order_ID,Product_Name, Profit from Orders
where Profit<'0'
order by Profit;

7-Write a query to get the list of all orders which have loss and 
sort them in descending order of discount given.

select Order_ID, Product_name, Profit, Discount from orders
where Profit<0
order by Discount desc;

Ques-Does the order with the highest loss was given the highest discount?
Ans-NO


8-You now want to know if there are particular states which are making losses. Write a query to get the State and sum of profit for each state. 
The result should be in increasing order of profit.

select State, Sum(Profit) from orders group by State
Order by SUM(Profit);

Ques-Select the states which are making a loss?
Ans-Delhi, Daman and Diu

9-Write a query to get state, category and sum of profits.

select State,Category, Sum(Profit) from orders group by State,Category
order by state;

10-Write a query to create a table in the database with Name as Manager and with values provided. 
Do assign proper Primary key.

CREATE TABLE Manager (Segment VARCHAR(100) Primary Key, Segment_Manager VARCHAR(100));

Insert into Manager(Segment,Segment_Manager) 
values ('Consumer','Gaganjit Singh'),
('Corporate','Aman Jain'),
('Home Office','Kush Arora');

Select * from Manager;

11-Write a query to get Segment, count of order, sum of profit.

select Segment, Count(Order_ID), Sum(Profit) from orders group by Segment;

12-Write the query to get sum of sales, sum of profit for the year 2020.

select Sum(Sales), Sum(Profit) from orders
where Order_Date like '%20';

13-Now your manager wants you to remove 2020 from the total sales and profit and present the result. Write a query to get the sum of sales of each segment and 
their respective segment manager for all years except 2020.

select Sum(orders.Sales), orders.Segment,manager.Segment_Manager from orders inner join manager
ON
orders.Segment=manager.Segment
where Order_Date Not Like '%20'
group by manager.Segment_Manager,orders.Segment;

14-Write a query to get Customer ID and sum of profit for each. 
The result should be such that you are easily able to find the highest profit customer.

select Customer_ID, Sum(Profit) from orders group by Customer_ID
order by Sum(Profit) desc;

15-Write a query to find the customer details having the highest Profit. 
The result should be such that you are easily able to find the highest profitable customer.

Select orders.Customer_ID, customers.Customer_Name_, SUM(orders.Sales), SUM(orders.Profit),
count(orders.Order_ID)
from orders inner join customers
on orders.Customer_ID=customers.Customer_ID
group by customers.Customer_ID, customers.Customer_Name_
order by SUM(orders.Profit) desc;

Write down the customer id of the highest profit customer.
Ans-TC-20980
