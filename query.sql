select count(vegitables.vegitable_name), vegitables.vegitable_name
	from purch_veg left join vegitables on vegitables.vegitable_id = purch_veg.vegitable_name
	group by vegitables.vegitable_name


select count(conditions.condition_name), conditions.condition_name 
	from purch_cond left join conditions on conditions.condition_id = purch_cond.condition_name
	group by conditions.condition_name 
	
select  avg(purchases.price), con.condition_name as condition_type 
	from purchases left join (
		select purch_id, conditions.condition_name from purch_cond left join conditions 
			on conditions.condition_id = purch_cond.condition_name
			) as con
		on purchases.purchase_id = con.purch_id group by condition_type
