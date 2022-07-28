



INSERT INTO pin.cancel_plan_mta_t
   SELECT   1,
            ROHAN.SER_ASSIGN_MTA_SEQ.NEXTVAL,
            '/cancel_plan_mta',
            1,
            ora2inf (TO_CHAR (SYSDATE, 'DD-MON-YYYY')),
            ora2inf (TO_CHAR (SYSDATE, 'DD-MON-YYYY')),
            'S',
            'S',
            1,
            ACCOUNT_OBJ_ID0,
            '/account',
            0,
            1,
            deal_obj_id0,
            '/deal',
            0,
            NULL,
            package_id,
            1,
            plan_obj_id0,
            '/plan',
            0,
            1,
            SERVICE_OBJ_ID0,
            '/service/catv',
            0,
            0,
            1,
            6464305206,
            '/account',
            0,
            TO_CHAR (SYSDATE, 'YYYYMMDD') || '_HW_00_BASEPACK_CAN',
            'BASE_PACK_CANCEL',
            NULL,
            NULL
     FROM   hw_base_pack
    WHERE   PRODUCT_OBJ_ID0 IN  (select distinct poid_id0 from product_t where PROVISIONING_TAG='PROV_NCF_PRO');



commit;
