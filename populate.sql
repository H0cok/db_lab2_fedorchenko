INSERT INTO Conditions(condition_id, condition_name) VALUES 
	('AA', 'fresh'),
	('AB', 'avarage'),
	('AC', 'low');
	
INSERT INTO Vegitables(vegitable_id, vegitable_name) VALUES 
	('AAAA', 'tomato'),
	('AAAB', 'potato'),
	('AAAC', 'onion'),
	('AAAD', 'garlic'),
	('AAAE', 'cucamber');
	


INSERT INTO Purchases(purchase_id, temperature, price) VALUES 
	('AAA', 17, 20.5),
	('AAB', 12, 15),
	('AAC', 27, 11),
	('AAD', 17.6, 9.49),
	('AAE', 18, 25.49),
	('AAF', 22, 13),
	('AAG', 21, 18),
	('AAH', 23, 45.99);

INSERT INTO Purch_cond(purch_id, condition_name) VALUES 
	('AAA', 'AA'),
	('AAB', 'AB'),
	('AAC', 'AC'),
	('AAD', 'AC'),
	('AAE', 'AA'),
	('AAF', 'AA'),
	('AAG', 'AA'),
	('AAH', 'AA');

INSERT INTO Purch_veg(purch_id, vegitable_name) VALUES 
	('AAA', 'AAAE'),
	('AAB', 'AAAA'),
	('AAC', 'AAAB'),
	('AAD', 'AAAD'),
	('AAE', 'AAAC'),
	('AAF', 'AAAA'),
	('AAG', 'AAAC'),
	('AAH', 'AAAE');