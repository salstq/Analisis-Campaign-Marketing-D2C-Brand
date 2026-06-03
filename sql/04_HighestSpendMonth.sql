select strftime('%Y-%m', metric_date) as bulan, 
sum(spend) as total_spend, 
sum(revenue) as total_revenue
from daily_metrics
group by bulan
order by total_spend desc;