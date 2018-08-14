select road,MP,dir, date,time, avg(vol) vol,avg(occ) occ,avg(speed) speed from (	
SELECT cfg.station_id,data.vds_id, data.lane_nbr, data.raw_volume vol, data.raw_occupancy occ, data.raw_speed speed, extract(day from data.archive_time) date,	
extract(hour from data.archive_time) ||':'|| floor(extract(minute from data.archive_time) / 5)*5  as time,	
cfg.road road, cfg.milepost MP, dir.description dir	
FROM congest_vds_lane_data_arch_p2018_08_06  as data	
JOIN congest_vds_cfg as cfg ON cfg.vds_id = data.vds_id	
JOIN all_direction dir ON dir.id = cfg.direction	
JOIN congest_rtms_vds_lane_cfg rt ON rt.vds_id = data.rtms_vds_id	
JOIN event_lane_type lt ON lt.id = rt.lane_type	
WHERE --cfg.road = 'I-90' and	
    station_id =	'7318'
AND cfg.direction =  	2
    and data.lane_nbr in 	(0,4)
) table11  group by 	
road,MP,dir, date,time	
	
UNION	
select road,MP,dir, date,time, avg(vol) vol,avg(occ) occ,avg(speed) speed from (	
SELECT cfg.station_id,data.vds_id, data.lane_nbr, data.raw_volume vol, data.raw_occupancy occ, data.raw_speed speed, extract(day from data.archive_time) date,	
extract(hour from data.archive_time) ||':'|| floor(extract(minute from data.archive_time) / 5)*5  as time,	
cfg.road road, cfg.milepost MP, dir.description dir	
FROM congest_vds_lane_data_arch_p2018_08_07  as data	
JOIN congest_vds_cfg as cfg ON cfg.vds_id = data.vds_id	
JOIN all_direction dir ON dir.id = cfg.direction	
JOIN congest_rtms_vds_lane_cfg rt ON rt.vds_id = data.rtms_vds_id	
JOIN event_lane_type lt ON lt.id = rt.lane_type	
WHERE --cfg.road = 'I-90' and	
    station_id =	'7318'
AND cfg.direction =  	2
    and data.lane_nbr in 	(0,4)
) table11  group by 	
road,MP,dir, date,time	
	
UNION	
select road,MP,dir, date,time, avg(vol) vol,avg(occ) occ,avg(speed) speed from (	
SELECT cfg.station_id,data.vds_id, data.lane_nbr, data.raw_volume vol, data.raw_occupancy occ, data.raw_speed speed, extract(day from data.archive_time) date,	
extract(hour from data.archive_time) ||':'|| floor(extract(minute from data.archive_time) / 5)*5  as time,	
cfg.road road, cfg.milepost MP, dir.description dir	
FROM congest_vds_lane_data_arch_p2018_08_08  as data	
JOIN congest_vds_cfg as cfg ON cfg.vds_id = data.vds_id	
JOIN all_direction dir ON dir.id = cfg.direction	
JOIN congest_rtms_vds_lane_cfg rt ON rt.vds_id = data.rtms_vds_id	
JOIN event_lane_type lt ON lt.id = rt.lane_type	
WHERE --cfg.road = 'I-90' and	
    station_id =	'7318'
AND cfg.direction =  	2
    and data.lane_nbr in 	(0,4)
) table11  group by 	
road,MP,dir, date,time	
	
	
UNION	
select road,MP,dir, date,time, avg(vol) vol,avg(occ) occ,avg(speed) speed from (	
SELECT cfg.station_id,data.vds_id, data.lane_nbr, data.raw_volume vol, data.raw_occupancy occ, data.raw_speed speed, extract(day from data.archive_time) date,	
extract(hour from data.archive_time) ||':'|| floor(extract(minute from data.archive_time) / 5)*5  as time,	
cfg.road road, cfg.milepost MP, dir.description dir	
FROM congest_vds_lane_data_arch_p2018_08_09  as data	
JOIN congest_vds_cfg as cfg ON cfg.vds_id = data.vds_id	
JOIN all_direction dir ON dir.id = cfg.direction	
JOIN congest_rtms_vds_lane_cfg rt ON rt.vds_id = data.rtms_vds_id	
JOIN event_lane_type lt ON lt.id = rt.lane_type	
WHERE --cfg.road = 'I-90' and	
    station_id =	'7318'
AND cfg.direction =  	2
    and data.lane_nbr in 	(0,4)
) table11  group by 	
road,MP,dir, date,time	
	
	
	
UNION	
select road,MP,dir, date,time, avg(vol) vol,avg(occ) occ,avg(speed) speed from (	
SELECT cfg.station_id,data.vds_id, data.lane_nbr, data.raw_volume vol, data.raw_occupancy occ, data.raw_speed speed, extract(day from data.archive_time) date,	
extract(hour from data.archive_time) ||':'|| floor(extract(minute from data.archive_time) / 5)*5  as time,	
cfg.road road, cfg.milepost MP, dir.description dir	
FROM congest_vds_lane_data_arch_p2018_08_10  as data	
JOIN congest_vds_cfg as cfg ON cfg.vds_id = data.vds_id	
JOIN all_direction dir ON dir.id = cfg.direction	
JOIN congest_rtms_vds_lane_cfg rt ON rt.vds_id = data.rtms_vds_id	
JOIN event_lane_type lt ON lt.id = rt.lane_type	
WHERE --cfg.road = 'I-90' and	
    station_id =	'7318'
AND cfg.direction =  	2
    and data.lane_nbr in 	(0,4)
) table11  group by 	
road,MP,dir, date,time	

