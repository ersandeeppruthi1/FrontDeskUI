-- Billing Item Table
-- Stores billing items used by Billing Item Management and estimate flows

CREATE TABLE billingitem (
  name VARCHAR(255),
  createdon DATE,
  id INT,
  price DECIMAL(18,2),
  isforpackaging INT
);
