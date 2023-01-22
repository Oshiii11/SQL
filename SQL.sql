CREATE DATABASE KADSE202f029;
USE KADSE202F029;

CREATE TABLE Customer
(CustomerID CHAR(6) CONSTRAINT CHK_ID CHECK (CustomerID LIKE 'C%'),
CName VARCHAR(50) NOT NULL,
CAddress VARCHAR(50) NOT NULL,
CTelePhone INT NOT NULL,
primary key(CustomerID));

create table Orders
(OrderID char(6) CONSTRAINT CHK_ID CHECK (OrderID like'O%'),
foreign key (CID) references Customer(CustomerID),
Orderdate  get date(),
Total decimal(8,2),
primary key (OrderID));

create table Supplier
(SupplierID char(6) constraint chk_ID  check (SupplierID Like 'S%'),
SName Varchar(50) not null,
SAddress varchar (50) not null,
STelePhone int,
primary key (SupplierID));

create table Product
(ProdID Char(6) constraint chk_ID check(ProdID like 'P%'),
Product_Name Varchar(50) not null,
Unit_Price decimal(8,2),
foreign key (SupID) references Supplier (SupplierID),
primary key (ProdID));

Create table OrderItem
(RECID char(6) constraint chk_ID check(RECID like 'R%'),
foreign key (OrderId) references Orders (OrderID),
foreign key (ProductID) references Product (ProdID),
Unit_Price decimal (8,2),
Quantity int,
primary key (RECID));

insert  INTO Customer(CustomerID,CName,CAddress,CTelePhone) values(C1, 'Amali','Colombo',0772569014);
insert  INTO Customer(CustomerID,CName,CAddress,CTelePhone) values(C2, 'Asanka','Colombo',0715469875);
insert  INTO Customer(CustomerID,CName,CAddress,CTelePhone) values(C3, 'Sunil', 'Kandy',0772548921);
insert  INTO Customer(CustomerID,CName,CAddress,CTelePhone) values(C4,'Kasun', 'Galle',0714589756);
insert  INTO Customer(CustomerID,CName,CAddress,CTelePhone) values(C5, 'Pathum','Matara',0784589415);

insert into Supplier(SupplierID,SName,SAddress,STelePhone) values(S1, 'Perera', 'Colombo', 0712569014);
insert into Supplier(SupplierID,SName,SAddress,STelePhone) values(S2, 'Silva', 'Matara', 0765469875);
insert into Supplier(SupplierID,SName,SAddress,STelePhone) values(S3, 'Ferenando', 'Jaffna', 0782548921);
insert into Supplier(SupplierID,SName,SAddress,STelePhone) values(S4, 'Damika', 'Gampha', 0774589756);
insert into Supplier(SupplierID,SName,SAddress,STelePhone) values(S5, 'Darshana', 'Gampola', 0784589415);

insert into Orders(OrderID,CID,Orderdate,Total) values(O1,C1, 2019-08-16, 8500.00);
insert into Orders(OrderID,CID,Orderdate,Total) values(O2, C1, 2019-08-16, 9750.00);
insert into Orders(OrderID,CID,Orderdate,Total) values(O3, C2, 2019-08-16,1500.00);
insert into Orders(OrderID,CID,Orderdate,Total) values(O4, C3, 2019-08-16, 27000.50);
insert into Orders(OrderID,CID,Orderdate,Total) values(O5, C4, 2019-08-16, 48252.00);

insert into Product(ProdID,Product_Name,Unit_Price,SupID) values(P1, 'Milk Packet', 35.00, S1);
insert into Product(ProdID,Product_Name,Unit_Price,SupID) values(P2, 'Yoghurt', 30.00, S1);
insert into Product(ProdID,Product_Name,Unit_Price,SupID) values(P3, 'Oats', 475.00, S2);
insert into Product(ProdID,Product_Name,Unit_Price,SupID) values(P4, 'Corn Flex',890.00, S3);
insert into Product(ProdID,Product_Name,Unit_Price,SupID) values(P5, 'Cheese', 1200.00, S2);

insert into OrderItem(RECID,OrderId,ProductID,Unit_Price,Quantity) values(R1, O1, P1, 35.00, 100);
insert into OrderItem(RECID,OrderId,ProductID,Unit_Price,Quantity) values(R2, O1, P2, 30.00, 166);
insert into OrderItem(RECID,OrderId,ProductID,Unit_Price,Quantity) values(R3, O2,P2, 30.00, 100);
insert into OrderItem(RECID,OrderId,ProductID,Unit_Price,Quantity) values(R4, O2, P3, 475.00, 14);
insert into OrderItem(RECID,OrderId,ProductID,Unit_Price,Quantity) values(R5 ,O3 ,P1 ,35.00 ,43);

select* from Customers where CAddress='Colombo'or CAddress= 'Kandy';
select CName,CAddress from Customers where CName like'A%';
select* from Customers where CName like 'S%' and CAddress='Kandy';
Select*from Customers order by  CName;
Select*from Orders where Total>50000;
Select*from Orders where Total between 15000 and 30000;
select *from Prodcuts where SupID='S1';


 
 
 






 