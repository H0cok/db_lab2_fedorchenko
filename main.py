import psycopg2
import matplotlib.pyplot as plt
username = 'fedorchenko'
password = '123'
database = 'Lab_2'
host = 'localhost'
port = '5432'

query_1 = '''
select count(vegitables.vegitable_name), vegitables.vegitable_name
	from purch_veg left join vegitables on vegitables.vegitable_id = purch_veg.vegitable_name
	group by vegitables.vegitable_name
'''

query_2 = '''
select count(conditions.condition_name), conditions.condition_name 
	from purch_cond left join conditions on conditions.condition_id = purch_cond.condition_name
	group by conditions.condition_name 
'''

query_3 ='''
select  avg(purchases.price), con.condition_name as condition_type 
	from purchases left join (
		select purch_id, conditions.condition_name from purch_cond left join conditions 
			on conditions.condition_id = purch_cond.condition_name
			) as con
		on purchases.purchase_id = con.purch_id group by condition_type
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
with conn:

    print("Database opened successfully")

    cur = conn.cursor()

    print('1.')

    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\n2.')

    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\n3.')

    cur.execute(query_3)
    for row in cur:
        print(row)