drop table TMP_SERVICE_MAP_T;

commit;

create table TMP_SERVICE_MAP_T as select sa.obj_id0,count(1) count from service_bb_info_t sb,SERVICE_T s,DEVICE_SERVICES_T ds,DEVICE_T d,SERVICE_ALIAS_LIST_T sa where s.poid_id0=sb.obj_id0 and 
(s.status=10100 or s.status=10102) and ds.SERVICE_OBJ_ID0=s.poid_id0 and d.poid_id0=ds.obj_id0 and d.poid_type='/device/modem' and
sa.obj_id0=ds.SERVICE_OBJ_ID0 group by sa.obj_id0 having count(1)>=1;

drop table tmp_cur_dup_device_t;

create table tmp_cur_dup_device_t as select ds.SERVICE_OBJ_ID0,d.poid_type,count(1) count 
from TMP_SERVICE_MAP_T t,DEVICE_SERVICES_T ds,DEVICE_T d where ds.SERVICE_OBJ_ID0=t.OBJ_ID0 
and d.poid_id0=ds.OBJ_ID0 and d.poid_type='/device/modem' group by ds.SERVICE_OBJ_ID0,d.poid_type having count(1)>1;

delete from TMP_SERVICE_MAP_T where obj_id0 in(select service_obj_id0 from tmp_cur_dup_device_t);


commit;

update service_bb_info_t sb set
sb.network_id=
(select sa.name from TMP_SERVICE_MAP_T t,SERVICE_ALIAS_LIST_T sa
where sa.obj_id0 = t.obj_id0
and sa.rec_id=0
and sb.OBJ_ID0=sa.OBJ_ID0)
where exists
(select * from TMP_SERVICE_MAP_T t,SERVICE_ALIAS_LIST_T sa
where sa.obj_id0 = t.obj_id0
and sa.rec_id=0
and sb.OBJ_ID0=sa.OBJ_ID0);

commit;
