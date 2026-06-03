select c.type as campaign_type, 
count(DISTINCT c.id) as jumlah_campaign,
sum(dm.spend) as total_spend,
sum(dm.revenue) as total_revenue,
round(cast(sum(dm.revenue) as real)/sum(spend),2) as roas,
case 
	when round(cast(sum(dm.revenue) as real)/sum(spend),2) > 5.0 then 'Sangat Efisien'
	when round(cast(sum(dm.revenue) as real)/sum(spend),2) > 2.0 then 'Efisien'
	when round(cast(sum(dm.revenue) as real)/sum(spend),2) > 1.0 then 'Kurang Efisien'
	else 'Tidak Efisien'
end as grading
from daily_metrics dm
join campaigns c on c.id = dm.campaign_id
group by c.type
order by roas desc;