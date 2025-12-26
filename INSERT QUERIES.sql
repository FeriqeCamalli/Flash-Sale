INSERT INTO PRODUCTS (NAME, CODE, DESCRIPTION, STATUS, PRICE, DISCOUNT_PRICE, COST_PRICE)
VALUES 
('Laptop A', 'LP1001', 'Gaming Laptop', 1, 1500.00, 1400.00, 1200.00),
('Laptop B', 'LP1002', 'Office Laptop', 1, 1200.00, 1150.00, 1000.00),
('Mouse X', 'MS2001', 'Wireless Mouse', 1, 25.00, 20.00, 10.00),
('Keyboard Y', 'KB2002', 'Mechanical Keyboard', 1, 75.00, 70.00, 50.00),
('Monitor 24"', 'MN3001', 'Full HD Monitor', 1, 200.00, 180.00, 150.00),
('Monitor 27"', 'MN3002', 'QHD Monitor', 1, 350.00, 330.00, 280.00),
('Headphones', 'HP4001', 'Noise Cancelling', 1, 150.00, 130.00, 100.00),
('Webcam', 'WC5001', 'HD Webcam', 1, 80.00, 70.00, 50.00),
('USB Hub', 'UH6001', '4-Port USB Hub', 1, 30.00, 25.00, 15.00),
('External HDD', 'EH7001', '1TB HDD', 1, 100.00, 90.00, 70.00);


INSERT INTO INVENTORIES (PRODUCT_ID, WAREHOUSE_NO, QUANTITY)
VALUES
(1, 1, 50),
(2, 1, 40),
(3, 1, 10),
(4, 1, 60),
(5, 2, 30),
(6, 2, 20),
(7, 2, 25),
(8, 3, 15),
(9, 3, 50),
(10, 3,10);

INSERT INTO ORDERS (PRODUCT_ID, QUANTITY, PRICE, DESCRIPTION, WAREHOUSE_NO, STATUS)
VALUES
(1, 2, 1500.00, 'Oyun oynamaq ucun', 1, 1),
(2, 10, 1200.00, 'Sirket ehtiyaclari ucun', 1, 1),
(3, 5, 25.00, 'Sirket ehtiyaclari ucun', 1, 1),
(4, 3, 75.00, 'hediyye verilmesi ucun', 1, 2),
(5, 2, 200.00, '         ', 2, 1),
(6, 1, 350.00, 'Order for client F', 2, 3),
(7, 2, 150.00, 'Order for client G', 2, 1),
(8, 1, 80.00, 'Order for client H', 3, 2),
(9, 4, 30.00, 'Order for client I', 3, 1),
(10, 1, 100.00, 'Order for client J', 3, 4);

