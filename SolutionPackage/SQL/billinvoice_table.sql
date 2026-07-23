CREATE TABLE billinvoice (
  createdon DATE,
  id INT,
  name VARCHAR(255),
  invoicenumber INT,
  billjson TEXT,
  customerid VARCHAR(255),
  customername VARCHAR(255),
  totalprice DECIMAL(18,2),
  invoicedate DATE,
  invoicenumberwithcustomername VARCHAR(255),
  cashreceived DECIMAL(18,2)
);
