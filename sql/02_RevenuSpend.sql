select 
c.name as campaign_name, 
sum(dm.spend) as total_spend, 
sum(dm.revenue) as total_revenue
from campaigns c
join daily_metrics dm on dm.campaign_id = c.id
group by c.id, c.name
order by total_revenue desc; 