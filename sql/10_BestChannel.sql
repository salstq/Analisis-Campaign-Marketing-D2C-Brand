with campaign_channel as(
select c.type as campaign_type,
ch.name as channel_name,
sum(dm.spend) as total_spend,
sum(dm.revenue) as total_revenue,
round(cast(sum(dm.revenue) as real)/sum(dm.spend),2) as roas
from campaigns c
join daily_metrics dm on dm.campaign_id = c.id
join channels ch on ch.id = dm.channel_id
group by campaign_type, channel_name
)
select * from campaign_channel
order by campaign_type, roas DESC;