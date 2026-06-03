select ch.name as channel_name, 
sum(dm.impressions) as total_impressions,
sum(dm.clicks) as total_clicks,
sum(dm.conversions) as total_conversions,
round((CAST(sum(dm.clicks) as real)/sum(dm.impressions) *100),2) as ctr,
round((CAST(sum(dm.conversions) as real)/sum(dm.clicks) *100),2) as conversion_rate
from channels ch
join daily_metrics dm on dm.channel_id = ch.id
group by ch.name, ch.id
order by ctr desc;