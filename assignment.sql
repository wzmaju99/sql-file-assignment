--creation of table--
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2)NOT NULL,
    StockQty INT,
    Supplier VARCHAR(100)NOT NULL,
    supplierloc varchar(30)not null);
    desc products;
--inserting values--
INSERT INTO Products VALUES(1, 'Laptop', 'Electronics', 75000.00, 20, 'Dell', 'Bangalore');
INSERT INTO Products VALUES(2, 'Smartphone', 'Electronics', 30000.00, 50, 'Samsung', 'Hyderabad');
INSERT INTO Products VALUES(3, 'Tablet', 'Electronics', 20000.00, 35, 'Apple', 'Mumbai');
INSERT INTO Products VALUES(4, 'Headphones', 'Electronics', 2500.00, 100, 'Sony', 'Delhi');
INSERT INTO Products VALUES(5, 'Desk Chair', 'Furniture', 5000.00, 15, 'Ikea', 'Chennai');
INSERT INTO Products VALUES(6, 'Dining Table', 'Furniture', 12000.00, 10, 'Godrej', 'Pune');
INSERT INTO Products VALUES(7, 'Notebook', 'Stationery', 50.00, 200, 'Camlin', 'Kolkata');
INSERT INTO Products VALUES(8, 'Pen Set', 'Stationery', 150.00, 300, 'Reynolds', 'Lucknow');
INSERT INTO Products VALUES(9, 'Printer', 'Electronics', 8000.00, 25, 'HP', 'Delhi');
INSERT INTO Products VALUES(10, 'Monitor', 'Electronics', 12000.00, 40, 'LG', 'Bangalore');
INSERT INTO Products VALUES(11, 'Sofa', 'Furniture', 25000.00, 8, 'Durian', 'Mumbai');
INSERT INTO Products VALUES(12, 'Bookshelf', 'Furniture', 7000.00, 12, 'Nilkamal', 'Chennai');
INSERT INTO Products VALUES(13, 'Water Bottle', 'Stationery', 200.00, 150, 'Milton', 'Pune');
INSERT INTO Products VALUES(14, 'Backpack', 'Stationery', 1200.00, 60, 'Wildcraft', 'Hyderabad');
INSERT INTO Products VALUES(15, 'Smartwatch', 'Electronics', 15000.00, 30, 'Apple', 'Delhi');
INSERT INTO Products VALUES(16, 'Camera', 'Electronics', 45000.00, 18, 'Canon', 'Kolkata');
INSERT INTO Products VALUES(17, 'Shoes', 'Fashion', 2500.00, 70, 'Nike', 'Mumbai');
INSERT INTO Products VALUES(18, 'T-Shirt', 'Fashion', 800.00, 120, 'Adidas', 'Bangalore');
INSERT INTO Products VALUES(19, 'Jeans', 'Fashion', 2000.00, 90, 'Levis', 'Chennai');
INSERT INTO Products VALUES(20, 'Jacket', 'Fashion', 3500.00, 40, 'Puma', 'Delhi');
select*from products;
--altering table--
alter table products modify supplier varchar(50);
desc products;
--filtering using where--
select*from products where supplierloc='Hyderabad';
--conditional operators--
select*from products where supplierloc in('Chennai','Bangalore','Hyderabad');
select productid,productname,price,supplier from products where stockqty>30;
select*from products where price>5000 and stockqty>20;
--update command--
update products set supplier='Hp' where supplierloc='Bangalore';
select*from products;
update products set supplier='Basic life'where productname='T-Shirt';
update products set stockqty=15 where productname='Sofa';
select*from products;
--order by clause--
select*from products order by productname;
select productid,productname,supplier,supplierloc from products order by price;
select*from products;
select*from products where category='Electronics' order by 5;
savepoint sp1;
commit;
select*from products;
--aggregate functions--
select count(*)from products;
update products set  stockqty='' where productname='Dining Table';
select count(stockqty)from products;
select sum(price)from products;
select sum(price)from products where stockqty>25 AND supplierloc='Bangalore';
select avg(price)from products where supplierloc='Chennai'or stockqty>=30;
select min(supplier)from products;
select max(price)from products;
--group by--
select category,sum(price)from products group by category;
select productname,category,price from products order by category;
select category,avg(price) from products group by category;
select category,max(price) from products group by category;
select category,min(price) from products group by category;
select category,count(category)as section,sum(price) as totalpice,min(price) as lowestprice from products group by category;
select* from products;
select category as header,sum(price) as totalprice,count(category) as count from products group by category having count(category)>=3;
select category,count(*),sum(price) from products group by category having sum(price)>5000;
savepoint sp2;
commit;




