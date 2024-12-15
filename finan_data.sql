

select * from data_finan;

select 
type,
count(*) as total_transaction,
sum(isFraud) as Fraudulent_transaction,
sum(isFlaggedFraud) as Flagged_transaction
from data_finan
group by 
type;

select type,
avg(amount) as avg_amount,
max(amount) as max_amount
from data_finan
group by
type;

select 
nameOrig,
count(*) as fraud_count
from data_finan
where 
isFraud = 1
group by nameOrig
order by 
fraud_count Desc
limit 10;

select
step,
nameOrig,
oldbalanceOrg,
newbalanceOrig,
amount
from data_finan
where
(oldbalanceOrg - newbalanceOrig) != amount;

select 
nameDest,
sum(amount) as Total_Received
from data_finan
group by nameDest
order by Total_Received Desc
limit 5;