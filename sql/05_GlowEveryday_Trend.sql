select strftime('%Y-W%W', metric_date) as minggu,
sum(impressions) as total_impressions,
sum(clicks) as total_clicks,
sum(conversions) as total_conversions,
sum(spend) as total_spend,
sum(revenue) as total_revenue
from daily_metrics
where campaign_id = 7
group by minggu;