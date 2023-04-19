-- Create Database

CREATE DATABASE salon;

-- Create Tables
CREATE TABLE customers(
  customer_id SERIAL PRIMARY KEY,
  phone VARCHAR(15) UNIQUE NOT NULL,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE services(
  service_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE appointments(
  appointment_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  service_id INT REFERENCES services(service_id),
  time VARCHAR(10) NOT NULL
);

-- Insert some data
INSERT INTO services (name) VALUES ('cut'), ('color'), ('perm'), ('style'), ('trim');

-- Delete tables
DROP TABLE appointments;
DROP TABLE services;
DROP TABLE customers;