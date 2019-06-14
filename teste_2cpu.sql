drop table teste_high;

create table teste_high as
select /*high*/ a.*,  b.prod_name, b.prod_category, b.prod_subcategory
from sh.sales a,
sh.products b,
sh.channels c
where a.prod_id = b.prod_id
and a.channel_id = c.channel_id;