 /*  Task 1:    */
CREATE TABLE Employees (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(20),
    age INT,
    salary FLOAT
);

INSERT INTO Employees (name,age,salary) VALUES ('John Smith',32,55000.50);
INSERT INTO Employees (name,age,salary) VALUES ('Sarah Johnson',28,48000.75);
INSERT INTO Employees (name,age,salary) VALUES ('Michael Brown',41,71000.00);

SELECT * FROM Employees;

/*  Update task  */
/*  update the salary of employee to 31000.49 who's salary is less than 55000  */
UPDATE Employees SET salary = 31000.49 WHERE salary < 55000;

/*  remove the records of employess with salary more than 55000.50  */
DELETE FROM Employees WHERE salary > 55000.50;

/**************************************************************************************************************/
/* Task 2:  */

CREATE TABLE Books (
    id INT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(100),
	author VARCHAR(100),
    price FLOAT
);

INSERT INTO Books (title,author,price) VALUES ('The Great Gatsby','F. Scott Fitzgerald',10.99);
INSERT INTO Books (title,author,price) VALUES ('To Kill a Mockingbird','Harper Lee',12.50);
INSERT INTO Books (title,author,price) VALUES ('1984','George Orwell',8.99);
INSERT INTO Books (title,author,price) VALUES ('Pride and Prejudice','Jane Austen',9.75);

SELECT * FROM Books WHERE price > 10.00;

/*  drop the table called 'books'  */
DROP TABLE Books;

/**************************************************************************************************************/
/* Task 3: */
CREATE TABLE Students (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
	age int,
	major VARCHAR(50),
    GPA FLOAT
);

INSERT INTO Students (name,age,major,GPA) VALUES ('John Smith',22,'Computer Science',3.8);
INSERT INTO Students (name,age,major,GPA) VALUES ('Sarah Johnson',20,'Biology',3.2);
INSERT INTO Students (name,age,major,GPA) VALUES ('Michael Brown',24,'Business',3.5);
INSERT INTO Students (name,age,major,GPA) VALUES ('Emily Wilson',21,'English',3.9);
INSERT INTO Students (name,age,major,GPA) VALUES ('David Lee',23,'Psychology',3.6);

SELECT * FROM Students WHERE GPA > 3.5;
SELECT * FROM Students;

/*  add new column in the table students call it 'student_email' */
ALTER TABLE Students ADD student_email VARCHAR(50);
UPDATE Students SET student_email = 'jhon@gmail.com' WHERE name = 'John Smith';
UPDATE Students SET student_email = 'sarah@gmail.com' WHERE name = 'Sarah Johnson';
UPDATE Students SET student_email = 'michael@gmail.com' WHERE name = 'Michael Brown';
UPDATE Students SET student_email = 'emily@gmail.com' WHERE name = 'Emily Wilson';
UPDATE Students SET student_email = 'david@gmail.com' WHERE name = 'David Lee';

/*   remove the record with name David from table students */
DELETE FROM Students WHERE name LIKE 'David%';

/**************************************************************************************************************/
/* Task 4:  */

CREATE TABLE Orders (
    id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(50),
	customer_name VARCHAR(50),
	order_date date,
	quantity int
);

INSERT INTO Orders (product_name,customer_name,order_date,quantity) VALUES ('Widget A','John Smith','2023-02-14',5);
INSERT INTO Orders (product_name,customer_name,order_date,quantity) VALUES ('Widget B','Sarah Johnson','2023-02-13',3);
INSERT INTO Orders (product_name,customer_name,order_date,quantity) VALUES ('Widget C','Michael Brown','2023-02-12',7);

SELECT * FROM Orders;

/**************************************************************************************************************/
/*  Task 5:  */
CREATE TABLE Customers (
    customer_id	INTEGER PRIMARY KEY,
	customer_name VARCHAR(50),
    email VARCHAR(50),
	phone_number VARCHAR(50)
);

INSERT INTO Customers (customer_id,customer_name,email,phone_number) VALUES (1,'John Smith','john.smith@example.com','555-555-1212');
INSERT INTO Customers (customer_id,customer_name,email,phone_number) VALUES (2,'Jane Doe','jane.doe@example.com','555-555-2323');
INSERT INTO Customers (customer_id,customer_name,email,phone_number) VALUES (3,'Bob Brown','bob.brown@example.com','555-555-3434');

SELECT * FROM Customers;

SELECT * FROM Customers WHERE customer_id = 2;

/*remove the record with id =2 from table customers*/
DELETE FROM Customers WHERE customer_id = 2;

/**************************************************************************************************************/
/*  Task 6:    */
CREATE TABLE Products (
    product_id	INTEGER PRIMARY KEY,
	product_name VARCHAR(50),
    category VARCHAR(50),
	price DECIMAL,
	quantity_in_stock INTEGER
);

INSERT INTO Products (product_id,product_name,category,price,quantity_in_stock) VALUES (1,'iPhone','Electronics',999.99,100);
INSERT INTO Products (product_id,product_name,category,price,quantity_in_stock) VALUES (2,'Samsung Galaxy','Electronics',799.99,50);
INSERT INTO Products (product_id,product_name,category,price,quantity_in_stock) VALUES (3,'Nike Air Max','Shoes',119.99,200);

SELECT * FROM Products;
SELECT * FROM Products WHERE category = 'Electronics';

/**************************************************************************************************************/
/*  Task 7:    */

CREATE TABLE Movies (
    movie_id	INTEGER PRIMARY KEY,
	movie_title VARCHAR(50),
    director VARCHAR(50),
	genre  VARCHAR(50),
	release_year INTEGER
);

INSERT INTO Movies (movie_id,movie_title,director,genre,release_year) VALUES (1,'The Shawshank Redemption','Frank Darabont','Drama',1994);
INSERT INTO Movies (movie_id,movie_title,director,genre,release_year) VALUES (2,'The Godfather','Francis Ford Coppola','Drama',1972);
INSERT INTO Movies (movie_id,movie_title,director,genre,release_year) VALUES (3,'The Dark Knight','Christopher Nolan','Action',2008);

SELECT * FROM Movies;
SELECT * FROM Movies WHERE director = 'Christopher Nolan';

/**************************************************************************************************************/
/*  Task 8:    */

CREATE TABLE Inventory (
    product_id	INTEGER PRIMARY KEY,
	product_name VARCHAR(50),
    supplier VARCHAR(50),
	category  VARCHAR(50),
	quantity INTEGER,
	price REAL
);

INSERT INTO Inventory (product_id,product_name,supplier,category,quantity,price) VALUES (1,'iPhone 13','Apple Inc.','Electronics',10,999.99);
INSERT INTO Inventory (product_id,product_name,supplier,category,quantity,price) VALUES (2,'Kindle Paperwhite','Amazon','Books & Media',20,129.99);
INSERT INTO Inventory (product_id,product_name,supplier,category,quantity,price) VALUES (3,'Nike Air Max 90','Nike Inc','Apparel',5,119.99);

SELECT * FROM Inventory;
SELECT * FROM Inventory WHERE quantity >= 10 ;


