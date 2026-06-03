select c.name as campaign_name, 
sum(dm.spend) as total_spend,
sum(dm.revenue) as total_revenue,
round(cast(sum(dm.revenue) as real)/sum(spend),2) as roas,
case 
	when round(cast(sum(dm.revenue) as real)/sum(spend),2) > 3.0 then 'Sangat Bagus'
	when round(cast(sum(dm.revenue) as real)/sum(spend),2) > 1.0 then 'Cukup'
	else 'Rugi'
end as kategori_roas
from daily_metrics dm
join campaigns c on c.id = dm.campaign_id
group by c.name, c.id
order by roas desc;