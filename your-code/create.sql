USE laboratorio;

CREATE TABLE cars (
id_car SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
VIN VARCHAR(25) NOT NULL,
Manufacturer VARCHAR(15) NOT NULL,
Model VARCHAR(25) NOT NULL,
Year_ VARCHAR(4) NOT NULL,
Color VARCHAR(15) NOT NULL,
PRIMARY KEY (id_car))
DEFAULT CHARSET=utf8mb4;

CREATE TABLE salespersons (
id_staff SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
name_ VARCHAR(30) NOT NULL,
store VARCHAR(30) NOT NULL,
PRIMARY KEY (id_staff))
DEFAULT CHARSET=utf8mb4;

CREATE TABLE customer (
  customer_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  First_Name VARCHAR(45) NOT NULL,
  Phone VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  address VARCHAR(50) DEFAULT NULL,
  City VARCHAR(50) DEFAULT NULL,
  State_Province VARCHAR(50) DEFAULT NULL,
  Country VARCHAR(50) DEFAULT NULL,
  Postal VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (customer_id))
 DEFAULT CHARSET=utf8mb4;
 
 CREATE TABLE Invoices (
  invoice_number_id SMALLINT UNSIGNED NOT NULL,
  id_car SMALLINT UNSIGNED NOT NULL,
  id_staff SMALLINT UNSIGNED NOT NULL,
  customer_id SMALLINT UNSIGNED NOT NULL,
  Date_invoice VARCHAR(50) DEFAULT NULL,
  KEY idx_fk_id_car (id_car),
  KEY idx_fk_id_staff (id_staff),
  KEY idx_fk_customer_id (customer_id),
  PRIMARY KEY  (invoice_number_id),
  CONSTRAINT fk_Invoices_cars FOREIGN KEY (id_car) REFERENCES cars (id_car) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_Invoices_salespersons FOREIGN KEY (id_staff) REFERENCES  salespersons (id_staff) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_Invoices_customer FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


 