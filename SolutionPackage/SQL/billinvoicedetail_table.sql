CREATE TABLE billinvoicedetail (
  createdon DATE,
  name VARCHAR(255),
  id INT,
  billinvoiceid VARCHAR(255),
  itemid VARCHAR(255),
  itemname VARCHAR(255),
  price DECIMAL(18,2),
  quantity DECIMAL(18,2),
  totalprice DECIMAL(18,2),
  customerid VARCHAR(255)
);
