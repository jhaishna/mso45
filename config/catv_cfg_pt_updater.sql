UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_HD_STAR_SPOR1' AND M2.CA_ID = 'NA1' ) and CA_ID = 'NA1';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_HD_STAR_SPOR2' AND M2.CA_ID = 'NA1' ) and CA_ID = 'NA1';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_HD_STAR_SPOR1' AND M2.CA_ID = '1327' ) and CA_ID = '1327';
UPDATE catv_ne_info_t SET network_node = 'NDS' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_HD_STAR_SPOR2' AND M2.CA_ID = '1328' ) and CA_ID = '1328';
