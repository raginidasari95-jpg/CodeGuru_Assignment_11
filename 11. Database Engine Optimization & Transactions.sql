CREATE TABLE lab_products (
  product_sku VARCHAR(50) PRIMARY KEY,
  product_serialcode VARCHAR(100) NOT NULL,
  wholesale_cost DECIMAL(10,2)
 );

 INSERT INTO lab_products 
 (product_sku, product_serialcode, wholesale_cost)
 VALUES
 ('SKU-100', 'SER-999-AAA', 45.00),
 ('SKU-200', 'SER-888-BBB', 120.50);

SELECT * from lab_products

CREATE INDEX idx_products_serial
ON lab_products(product_serialcode);

SELECT * 
FROM lab_products
WHERE product_serialcode = 'SER-888-BBB';