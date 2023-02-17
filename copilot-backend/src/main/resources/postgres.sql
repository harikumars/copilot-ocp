CREATE TABLE IF NOT EXISTS cloudexit.customer (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  state VARCHAR(255) NOT NULL,
  zip VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS cloudexit.transaction (
  id SERIAL PRIMARY KEY,
  customerId INT NOT NULL,
  date VARCHAR(255) NOT NULL,
  type VARCHAR(255) NOT NULL,
  description VARCHAR(255) NOT NULL,
  amount VARCHAR(255) NOT NULL,
  FOREIGN KEY (customerId) REFERENCES cloudexit.customer(id)
) 



CREATE TABLE IF NOT EXISTS cloudexit.trades (
  transactionType INT NOT NULL,
  tradeId INT NOT NULL,
  buyer VARCHAR(255) NOT NULL,
  seller VARCHAR(255) NOT NULL,
  amount VARCHAR(255) NOT NULL,
  currency VARCHAR(255) NOT NULL,
  tradeDate VARCHAR(255) NOT NULL,
  status VARCHAR(255) NOT NULL,
  PRIMARY KEY (transactionType,tradeId)
) 