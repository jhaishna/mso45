drop table CHILD_CONN_DEACT;

create table CHILD_CONN_DEACT as
select distinct s.poid_id0 service_obj_id0,sc.CONN_TYPE,s.account_obj_id0,
pp.poid_id0 purchased_product_obj_id0,pp.descr,pp.PRODUCT_OBJ_ID0 
from service_t s,SERVICE_CATV_INFO_T sc,PURCHASED_PRODUCT_T pp 
where sc.CONN_TYPE=1 and sc.obj_id0=s.poid_id0 and pp.STATUS_FLAGS=4095 
and pp.status=1
and pp.usage_end_t=pp.cycle_end_t
and pp.SERVICE_OBJ_ID0=s.poid_id0;

drop table ACCTS_TO_UPDATE_CHILD;

create table ACCTS_TO_UPDATE_CHILD as select distinct c.service_obj_id0,c.conn_type,c.ACCOUNT_OBJ_ID0 
from CHILD_CONN_DEACT c,service_t s,SERVICE_CATV_INFO_T sc,PURCHASED_PRODUCT_T pp 
where s.account_obj_id0=c.account_obj_id0 
and sc.CONN_TYPE=0 
and sc.obj_id0=s.poid_id0
and pp.status_flags!=4095
and pp.status = 1
and pp.service_obj_id0=s.poid_id0;

drop table PROV_ACTION_DETAILS;

create table PROV_ACTION_DETAILS as select pp.poid_id0,pp.PRODUCT_OBJ_ID0,pp.STATUS_FLAGS,ac.* 
from PURCHASED_PRODUCT_T pp,ACCTS_TO_UPDATE_CHILD ac where pp.service_obj_id0=ac.SERVICE_OBJ_ID0 
and pp.STATUS_FLAGS=4095;

drop table service_poid_list;

create table service_poid_list as 
select p.service_obj_id0 from PROV_ACTION_DETAILS p,PURCHASED_PRODUCT_T pp,
catv_pricing_master c where pp.SERVICE_OBJ_ID0=p.SERVICE_OBJ_ID0 and pp.status=1
and c.PKG_TYPE='PKG' and c.PRODUCT_POID=pp.PRODUCT_OBJ_ID0;

drop table ACTUAL_DETAILS_PROV;

create table ACTUAL_DETAILS_PROV as 
select * from PROV_ACTION_DETAILS where SERVICE_OBJ_ID0 in
(select distinct SERVICE_OBJ_ID0 from service_poid_list);

update purchased_product_t 
set status_flags=1 where poid_id0 in
(select poid_id0 from ACTUAL_DETAILS_PROV);

commit;
