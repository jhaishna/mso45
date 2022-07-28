/*
 *
 *	Copyright (c) 1998 - 2013 Oracle Corporation. All rights reserved.
 * 
 *	This material is the confidential property of Oracle Corporation.
 *	or its subsidiaries or licensors and may be used, reproduced, stored
 *	or transmitted only in accordance with a valid Oracle license or
 *	sublicense agreement.
 */
package com.portal.webservices;

/**
 * Custom opcode constants
 * These are auto generated from <code>mso_ops_flds.h</code>
 * @version 1.0 Wed Oct 26 17:07:56 2016
 * @author Autogenerated
 */

public class CustomOp {
	public static final int MSO_OP_CUST_OAP_LOGIN = 11000;
	public static final int MSO_OP_CUST_REGISTER_CUSTOMER = 11001;
	public static final int MSO_OP_CUST_ACTIVATE_CUSTOMER = 11002;
	public static final int MSO_OP_CUST_GET_PLAN_DETAILS = 11003;
	public static final int MSO_OP_CUST_MODIFY_CUSTOMER = 11004;
	public static final int MSO_OP_CUST_CHANGE_PLAN = 11005;
	public static final int MSO_OP_CUST_CANCEL_PLAN = 11006;
	public static final int MSO_OP_CUST_ADD_PLAN = 11007;
	public static final int MSO_OP_CUST_SUSPEND_SERVICE = 11008;
	public static final int MSO_OP_CUST_TERMINATE_SERVICE = 11009;
	public static final int MSO_OP_CUST_REACTIVATE_SERVICE = 11010;
	public static final int MSO_OP_CUST_GET_CUSTOMER_INFO = 11011;
	public static final int MSO_OP_CUST_MODIFY_CUSTOMER_CREDENTIALS = 11012;
	public static final int MSO_OP_CUST_SET_CUSTOMER_BIT = 11013;
	public static final int MSO_OP_ACT_RATE_BB_EVENT = 11014;
	public static final int MSO_OP_CUST_GET_INVOICE = 11015;
	public static final int MSO_OP_CUST_GET_DEVICE_DETAILS = 11016;
	public static final int MSO_OP_CUST_GET_CHANNEL_AND_PRICE = 11017;
	public static final int MSO_OP_SEARCH = 11018;
	public static final int MSO_OP_CUST_SEARCH_BILL = 11019;
	public static final int MSO_OP_CUST_MODIFY_DATA_ACCESS = 11020;
	public static final int MSO_OP_CUST_BLK_REGISTER_CUSTOMER = 11021;
	public static final int MSO_OP_CUST_GET_HIGHER_ARPU_PLANS = 11022;
	public static final int MSO_OP_CUST_COLLECTION_AMOUNT = 11023;
	public static final int MSO_OP_CUST_GET_CATV_REFUND = 11024;
	public static final int MSO_OP_CUST_CATV_SWAP_SRVC_TAGGING = 11025;
	public static final int MSO_OP_CUST_CATV_TRANSFER_SUBSCRIPTION = 11026;
	public static final int MSO_OP_CUST_GET_BILL_HISTORY = 11027;
	public static final int MSO_OP_CUST_GET_ITEM_EVENTS = 11028;
	public static final int MSO_OP_CUST_CREATE_OFFERS = 11029;
	public static final int MSO_OP_RATE_AAA_RATE_BB_EVENT = 71001;
	public static final int MSO_OP_RATE_AAA_SEARCH_SUSP_EVENT = 71002;
	public static final int MSO_OP_RATE_AAA_CREATE_SUSP_EVENT = 71003;
	public static final int MSO_OP_RATE_AAA_RESUBMIT_SUSPENSE_EVENT = 71004;
	public static final int MSO_OP_RATE_AAA_GET_DAILY_USAGE_DETAILS = 71005;
	public static final int MSO_OP_CUST_CALC_PRICE = 71006;
	public static final int MSO_OP_RATE_AAA_SEARCH_ACCOUNT = 71007;
	public static final int MSO_OP_CUST_GET_PLAN_RATES = 71010;
	public static final int MSO_OP_RATE_AAA_AUTHORIZE_PREP_INPUT = 71011;
	public static final int MSO_OP_RATE_AAA_REAUTHORIZE_PREP_INPUT = 71012;
	public static final int MSO_OP_RATE_AAA_STOP_ACCOUNTING_PREP_INPUT = 71013;
	public static final int MSO_OP_UTILS_ADD_HINT_BILLING = 11100;
	public static final int MSO_OP_UTILS_MTA_CONFIG_BILLING = 11101;
	public static final int MSO_OP_INTEG_ADD_PLAN = 11050;
	public static final int MSO_OP_INTEG_CANCEL_PLAN = 11051;
	public static final int MSO_OP_INTEG_CHANGE_PLAN = 11052;
	public static final int MSO_OP_INTEG_REACTIVATE_SERVICE = 11053;
	public static final int MSO_OP_INTEG_SUSPEND_SERVICE = 11054;
	public static final int MSO_OP_INTEG_CUST_ENQUIRY = 11055;
	public static final int MSO_OP_INTEG_CREATE_JOB = 11056;
	public static final int MSO_OP_INTEG_SEARCH_JOB = 11057;
	public static final int MSO_OP_INTEG_GET_FAILED_JOB_DETAILS = 11058;
	public static final int MSO_OP_INTEG_RESUBMIT_FAILED_JOB = 11059;
	public static final int MSO_OP_OPERATIONS_ACTION = 11060;
	public static final int MSO_OP_OPERATIONS_SEARCH = 11061;
	public static final int MSO_OP_INTEG_GET_FAILED_ORDER_DETAILS = 11062;
	public static final int MSO_OP_CUST_CREATE_BB_SERVICE = 11201;
	public static final int MSO_OP_CUST_MANAGE_PLANS_ACTIVATION = 11202;
	public static final int MSO_OP_CUST_ALLOCATE_HARDWARE = 11203;
	public static final int MSO_OP_CUST_BB_GET_INFO = 11204;
	public static final int MSO_OP_CUST_ACTIVATE_BB_SERVICE = 11205;
	public static final int MSO_OP_CUST_HOLD_SERVICE = 11206;
	public static final int MSO_OP_CUST_UNHOLD_SERVICE = 11207;
	public static final int MSO_OP_CUST_EXTEND_VALIDITY = 11208;
	public static final int MSO_OP_CUST_TOP_UP_BB_PLAN = 11209;
	public static final int MSO_OP_CUST_RENEW_BB_PLAN = 11210;
	public static final int MSO_OP_CUST_DEACTIVATE_BB_SERVICE = 11211;
	public static final int MSO_OP_CUST_SWAP_BB_DEVICE = 11212;
	public static final int MSO_OP_CUST_DELETE_BB_DEVICE = 11213;
	public static final int MSO_OP_CUST_BB_HW_AMC = 11214;
	public static final int MSO_OP_CUST_CREATE_SCHEDULE = 15001;
	public static final int MSO_OP_CUST_MODIFY_SCHEDULE = 15002;
	public static final int MSO_OP_PROV_CREATE_ACTION = 42000;
	public static final int MSO_OP_PROV_CREATE_CATV_ACTION = 42001;
	public static final int MSO_OP_PROV_CREATE_BB_ACTION = 42002;
	public static final int MSO_OP_PROV_PROCESS_RESPONSE = 42003;
	public static final int MSO_OP_PROV_GET_FAILED_ORDERS = 42004;
	public static final int MSO_OP_PROV_RESUBMIT_FAILED_ORDER = 42005;
	public static final int MSO_OP_PROV_GET_FAILED_ORDER_DETAIL = 42006;
	public static final int MSO_OP_PROV_BB_PROCESS_RESPONSE = 42007;
	public static final int MSO_OP_PROV_BB_GET_FAILED_ORDERS = 42008;
	public static final int MSO_OP_PROV_BB_RESUBMIT_FAILED_ORDER = 42009;
	public static final int MSO_OP_PROV_BB_GET_FAILED_ORDER_DETAIL = 42010;
	public static final int MSO_OP_PROV_BB_RESUBMIT_FAILED_RESPONSE = 42011;
	public static final int MSO_OP_PROV_BB_GET_FAILED_RESPONSE = 42012;
	public static final int MSO_OP_NTF_CREATE_NOTIFICATION = 42050;
	public static final int MSO_OP_NTF_CREATE_SMS_NOTIFICATION = 42051;
	public static final int MSO_OP_NTF_CREATE_EMAIL_NOTIFICATION = 42052;
	public static final int MSO_OP_NTF_CREATE_WELCOME_NOTE = 42053;
	public static final int MSO_OP_DEVICE_CATV_ASSOCIATE = 43001;
	public static final int MSO_OP_DEVICE_CATV_SWAP = 43002;
	public static final int MSO_OP_DEVICE_CATV_PREACTIVATION = 43003;
	public static final int MSO_OP_DEVICE_GET_BUFFER = 43004;
	public static final int MSO_OP_DEVICE_BLACKLIST_VC = 43005;
	public static final int MSO_OP_UTILS_BLOB_TO_FLIST = 43006;
	public static final int MSO_OP_DEVICE_CATV_DISASSOCIATE = 43007;
	public static final int MSO_OP_DEVICE_BB_ASSOCIATE = 43008;
	public static final int MSO_OP_GRV_UPLOAD = 43009;
	public static final int MSO_OP_DEVICE_SET_ATTR = 43010;
	public static final int MSO_OP_DEVICE_SET_STATE = 43011;
	public static final int MSO_OP_DEVICE_CREATE = 43012;
	public static final int MSO_OP_RATE_MANAGE_WS_CONTRACT = 12000;
	public static final int MSO_OP_RATE_SETTLEMENT_CHARGES = 12001;
	public static final int MSO_OP_PYMT_COLLECT = 13100;
	public static final int MSO_OP_PYMT_REVERSE_PAYMENT = 13101;
	public static final int MSO_OP_PYMT_BULK_COLLECT = 13102;
	public static final int MSO_OP_PYMT_CREATE_DEPOSIT = 13103;
	public static final int MSO_OP_PYMT_DEPOSIT_REFUND = 13104;
	public static final int MSO_OP_PYMT_GET_RECEIPTS = 13105;
	public static final int MSO_OP_PYMT_LCO_COLLECT = 13106;
	public static final int MSO_OP_PYMT_BULK_GET_PAYMENTS = 13107;
	public static final int MSO_OP_PYMT_LCO_COLLECT_UPDATE = 13108;
	public static final int MSO_OP_PYMT_GET_DEPOSITS = 13109;
	public static final int MSO_OP_PYMT_ALLOCATE_PAYMENT = 13110;
	public static final int MSO_OP_PYMT_AUTOPAY = 13111;
	public static final int MSO_OP_PYMT_CORRECTION = 13112;
	public static final int MSO_OP_PYMT_PROCESS_REFUND = 13113;
	public static final int MSO_OP_PYMT_REVERSE_REFUND = 13114;
	public static final int MSO_OP_AR_ALLOCATE = 13115;
	public static final int MSO_OP_COLLECTIONS_POL_APPLY_LATE_FEES = 13180;
	public static final int MSO_OP_AR_GET_DETAILS = 13150;
	public static final int MSO_OP_AR_ADJUSTMENT = 13151;
	public static final int MSO_OP_AR_DISPUTE = 13152;
	public static final int MSO_OP_AR_GET_DISPUTES = 13153;
	public static final int MSO_OP_AR_SETTLEMENT = 13154;
	public static final int MSO_OP_AR_GET_ADJUSTMENTS = 13155;
	public static final int MSO_OP_AR_DEBIT_NOTE = 13156;
	public static final int MSO_OP_PREACTVN_MODIFY_SRVC = 14501;
	public static final int MSO_OP_LIFECYCLE_DEVICE = 14001;
	public static final int MSO_OP_BILL_MAKE_BILL_NOW = 13200;
	public static final int MSO_OP_CUST_VIEW_INVOICE = 13201;
	public static final int MSO_OP_COMMISSION_GET_LCO_PLANS = 13501;
	public static final int MSO_OP_COMMISSION_MANAGE_AGREEMENT = 13502;
	public static final int MSO_OP_COMMISSION_PROCESS_COMMISSION = 13503;
	public static final int MSO_OP_COMMISSION_APPLY_COMMISSION = 13504;
	public static final int MSO_OP_COMMISSION_LCO_BAL_TRANSFER = 13505;
	public static final int MSO_OP_COMMISSION_LCO_BAL_IMPACT = 13506;
	public static final int MSO_OP_COMMISSION_RECTIFY_LCO_WRONG_TAGGING = 13507;
	public static final int MSO_OP_COMMISSION_HANDLE_PYMT_REVERSAL = 13508;
	public static final int MSO_OP_COMMISSION_PROCESS_DSA_COMMISSION = 13509;
	public static final int MSO_OP_COMMISSION_RECTIFY_SDT_DT_WRONG_TAGGING = 13510;
	public static final int MSO_OP_CUST_UPDATE_GST_INFO = 11215;

	public static String opToString( int op ) {
		try {
			java.lang.reflect.Field[] flds = CustomOp.class.getFields();
			for( int i = 0; i < flds.length; i++ ) {
				try {
					int val = flds[i].getInt(null);
					if( val == op ) {
						return flds[i].getName();
					}
				} catch( IllegalAccessException e ) { continue; }
				  catch( IllegalArgumentException e ) { continue; }
			}
		} catch( SecurityException e ) {}

		return null;
	}

	public static int stringToOp( String op ) {
		try {
			java.lang.reflect.Field[] flds = CustomOp.class.getFields();
			for( int i = 0; i < flds.length; i++ ) {
				try {
					String name = flds[i].getName();
					if( name.equals(op) ) {
						return flds[i].getInt(null);
					}
				} catch( IllegalAccessException e ) { continue; }
				  catch( IllegalArgumentException e ) { continue; }
			}
		} catch( SecurityException e ) {}

		return -1;
	}
}
