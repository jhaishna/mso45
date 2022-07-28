UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_7SEA_CHA' AND M2.CA_ID = '7_Sea' ) and CA_ID = '7_Sea';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_P7_NEWS' AND M2.CA_ID = 'P7' ) and CA_ID = 'P7';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_SHAK_TV' AND M2.CA_ID = 'Shakti_TV' ) and CA_ID = 'Shakti_TV';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_TV9_TEL' AND M2.CA_ID = 'TV9_Telugu_News' ) and CA_ID = 'TV9_Telugu_News';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_WORLD_MOVIES' AND M2.CA_ID = 'UTV_World_Movies' ) and CA_ID = 'UTV_World_Movies';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_7SEA_CHA' AND M2.CA_ID = '1272' ) and CA_ID = '1272';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_HBO_DEF' AND M2.CA_ID = '1315' ) and CA_ID = '1315';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_HBO_HIT' AND M2.CA_ID = '1314' ) and CA_ID = '1314';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_P7_NEWS' AND M2.CA_ID = '1139' ) and CA_ID = '1139';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_POW_VIS' AND M2.CA_ID = '1296' ) and CA_ID = '1296';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_SHAK_TV' AND M2.CA_ID = '1161' ) and CA_ID = '1161';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_TV9_TEL' AND M2.CA_ID = '1200' ) and CA_ID = '1200';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_WORLD_MOVIES' AND M2.CA_ID = '1207' ) and CA_ID = '1207';
