UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_SONY_PAL' AND M2.CA_ID = 'Sony_Pal' ) and CA_ID = 'Sony_Pal';