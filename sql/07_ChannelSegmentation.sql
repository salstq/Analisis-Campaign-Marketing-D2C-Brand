select ch.name as channel_name, 
sum(dm.spend) as total_spend,
sum(dm.revenue) as total_revenue,
round(cast(sum(dm.conversions) as real)/sum(dm.clicks) * 100,2) as conversion_rate,
CASE
	when round(cast(sum(dm.conversions) as real)/sum(dm.clicks) * 100, 2) > 6.0 then 'High Performer'
	when round(cast(sum(dm.conversions) as real)/sum(dm.clicks) * 100, 2) >= 3.0 then 'Medium Performer'
	else 'Low Performer'
end as segmentasi
from daily_metrics dm
join channels ch on ch.id = dm.channel_id
group by ch.id, ch.name
order by conversion_rate desc;