create  table event_2018_8_6_atm_shld_stall_temp as
select event_id, state, event_type, road, road_direction, start_mp, end_mp, actual_start, last_update,duration,main_block,shoulder_block from (
Select  distinct event_id , state, event_type, road, road_direction, start_mp, end_mp, actual_start, last_update ,
  ( last_update -actual_start) duration 
 from event_arch_report  
where   actual_start > '2018-1-1 0:0:0'  and actual_start < '2018-7-1 0:0:0' 
    and road = 'I-90' and start_mp > 61 and end_mp < 78
) t1
inner join
(select event_id,   max( LENgth(REPLACE(blocked, 'N', '')))  main_block from event_lane_status_arch 
 where lane_type = 1 group by event_id) t2 using (event_id)
inner join
(select event_id,   max( LENgth(REPLACE(blocked, 'N', '')))  shoulder_block from event_lane_status_arch 
 where lane_type in (2,3) group by event_id) t3 using (event_id)

