with campaign_metric as(
select c.name as campaign_name,
sum(dm.spend) as total_spend,
sum(dm.revenue) as total_revenue,
sum(dm.impressions) as total_impressions,
sum(dm.clicks) as total_clicks,
sum(dm.conversions) as total_conversions
from campaigns c
join daily_metrics dm on dm.campaign_id = c.id
group by c.id, c.name
),
campaign_report as(
select campaign_name, total_spend, total_revenue, total_impressions, total_clicks, total_conversions,
round(cast(total_revenue as real)/total_spend,2) as roas,
round(cast(total_clicks as REAL)/total_impressions *100, 2) as ctr,
round(cast(total_conversions as real)/total_clicks *100, 2) as conversion_rate,
CASE
	when round(cast(total_revenue as real)/total_spend,2) > 5.0 then 'Star'
	when round(cast(total_revenue as real)/total_spend,2) > 2.0 then 'Profitable'
	when round(cast(total_revenue as real)/total_spend,2) > 1.0 then 'Break Even'
	else 'Needs Review'
end as status
from campaign_metric
)
select campaign_name, total_spend, total_revenue, roas, ctr, 
conversion_rate, status from campaign_report
order by roas desc;

