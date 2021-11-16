CREATE TABLE Vegitables (
  	vegitable_id char(10)  NOT NULL PRIMARY KEY,
	vegitable_name char(256)  NOT NULL
);

CREATE TABLE Conditions (
  	condition_id char(10)  NOT NULL PRIMARY KEY,
	condition_name char(256)  NOT NULL
);

CREATE TABLE Purchases (
  	purchase_ID char(10) NOT NULL PRIMARY KEY,
	temperature decimal NOT NULL,
	price decimal NOT NULL
);

CREATE TABLE Purch_veg (
  	purch_id char(10) NOT NULL PRIMARY KEY,
	vegitable_name char(256) NOT NULL,
	CONSTRAINT FK_vegitable_name FOREIGN KEY (vegitable_name) 
		REFERENCES Vegitables(vegitable_id),
	CONSTRAINT FK_purch_id FOREIGN KEY (purch_id) 
		REFERENCES Purchases(purchase_ID)
);


CREATE TABLE Purch_cond (
  	purch_id char(10) NOT NULL PRIMARY KEY,
	condition_name char(256) NOT NULL,
	CONSTRAINT FK_condition_name FOREIGN KEY (condition_name) 
		REFERENCES Conditions(condition_id),
	CONSTRAINT FK_purch_id FOREIGN KEY (purch_id) 
		REFERENCES Purchases(purchase_ID)
);






