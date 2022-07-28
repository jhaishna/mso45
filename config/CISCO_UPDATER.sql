UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_PLUS' AND M2.CA_ID = 'Star_Plus' ) and CA_ID = 'Star_Plus';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_GOLD' AND M2.CA_ID = 'Star_Gold' ) and CA_ID = 'Star_Gold';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_MOVI' AND M2.CA_ID = 'Star_Movies' ) and CA_ID = 'Star_Movies';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_WORL' AND M2.CA_ID = 'Star_World' ) and CA_ID = 'Star_World';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_NATGEO' AND M2.CA_ID = 'NGC' ) and CA_ID = 'NGC';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_FOX_TRAV' AND M2.CA_ID = 'Fox_Traveller' ) and CA_ID = 'Fox_Traveller';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_CHAN_V' AND M2.CA_ID = 'Channel_V' ) and CA_ID = 'Channel_V';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_VIJY' AND M2.CA_ID = 'Star_Vijaya' ) and CA_ID = 'Star_Vijaya';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_FOX_CRI' AND M2.CA_ID = 'Fox_Crime' ) and CA_ID = 'Fox_Crime';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_NATG_WILD' AND M2.CA_ID = 'Nat_Geo_Wild' ) and CA_ID = 'Nat_Geo_Wild';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_LIFOK' AND M2.CA_ID = 'Life_OK' ) and CA_ID = 'Life_OK';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_FX' AND M2.CA_ID = 'FX' ) and CA_ID = 'FX';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_NATG_ADV1' AND M2.CA_ID = 'Nat_Geo_Adv' ) and CA_ID = 'Nat_Geo_Adv';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_NATG_MUSC' AND M2.CA_ID = 'Nat_Geo_Music' ) and CA_ID = 'Nat_Geo_Music';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_BABY' AND M2.CA_ID = 'Baby_TV' ) and CA_ID = 'Baby_TV';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_JALS' AND M2.CA_ID = 'Star_Jalsa' ) and CA_ID = 'Star_Jalsa';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_PRAV' AND M2.CA_ID = 'Star_Pravah' ) and CA_ID = 'Star_Pravah';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_ASIA_SUVR' AND M2.CA_ID = 'Asianet_Suvarna' ) and CA_ID = 'Asianet_Suvarna';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_ASIA_NET' AND M2.CA_ID = 'Asianet' ) and CA_ID = 'Asianet';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_ASIA_PLUS' AND M2.CA_ID = 'Asianet_Plus' ) and CA_ID = 'Asianet_Plus';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_MOV_OK' AND M2.CA_ID = 'Movies_OK' ) and CA_ID = 'Movies_OK';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_MOVAC' AND M2.CA_ID = 'Fox_Action_Movies' ) and CA_ID = 'Fox_Action_Movies';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_SPOR1' AND M2.CA_ID = 'Star_Sports' ) and CA_ID = 'Star_Sports';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_SPOR2' AND M2.CA_ID = 'Star_Sports_2' ) and CA_ID = 'Star_Sports_2';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_CRIC' AND M2.CA_ID = 'Star_Cricket' ) and CA_ID = 'Star_Cricket';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_ESPN' AND M2.CA_ID = 'ESPN' ) and CA_ID = 'ESPN';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_UTSV' AND M2.CA_ID = 'Star_Utsav' ) and CA_ID = 'Star_Utsav';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_STAR_JALMO' AND M2.CA_ID = 'Jalsha_Movies' ) and CA_ID = 'Jalsha_Movies';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_ASIA_MOV' AND M2.CA_ID = 'Asianet_Movies' ) and CA_ID = 'Asianet_Movies';
UPDATE catv_ne_info_t SET network_node = 'CISCO' WHERE OBJ_ID0 = ( SELECT OBJ_ID0 FROM CATV_NE_INFO_T M2 , MSO_CFG_CATV_PT_T M1 WHERE M1.POID_ID0 = M2.OBJ_ID0 AND M1.PROVISIONING_TAG = 'ALC_SUR_PLUS' AND M2.CA_ID = 'Suvarna_Plus' ) and CA_ID = 'Suvarna_Plus';