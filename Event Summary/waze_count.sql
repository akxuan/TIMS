select state,type,road,MP, start_date , count (event_ID) from 
(select distinct event_ID, state, event_type, road, round (start_MP) MP ,  to_char( actual_start, 'mm-dd') start_date  from event_arch   
where detecting_agency = 12  and create_time > '2018-9-26 0:0:0' ) t1
left join 
(select id event_type, type  FROM public.event_type)  t2 using (event_type)
group by state,type,road,MP, start_date 

