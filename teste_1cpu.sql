drop table teste_low;

create table teste_low as
select /*low*/ a.*,  b.prod_name, b.prod_category, b.prod_subcategory
from sh.sales a,
sh.products b,
sh.channels c
where a.prod_id = b.prod_id
and a.channel_id = c.channel_id;