with top_campaign as(
select c.name as campaign_name,
sum(dm.spend) as total_spend,
sum(dm.revenue) as total_revenue
from campaigns c
join daily_metrics dm on c.id = dm.campaign_id
group by c.name, c.id
)
select campaign_name,
total_spend,
total_revenue, 
round(cast(total_revenue as real)/total_spend,2) as roas 
from top_campaign
order by roas desc 
limit 3;