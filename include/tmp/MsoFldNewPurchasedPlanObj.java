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

import com.portal.pcm.PoidField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated
 * @version 1.0 Mon Jul 30 17:33:03 2018
 * @author Autogenerated
 */

public class MsoFldNewPurchasedPlanObj extends PoidField {
/**
 * Constructs an instance of <code>MsoFldNewPurchasedPlanObj</code>
 */
	public MsoFldNewPurchasedPlanObj() { super(42625, 7); }
/**
 * Returns an instance of <code>MsoFldNewPurchasedPlanObj</code>
 * @return An instance of <code>MsoFldNewPurchasedPlanObj</code>
 */
	public static synchronized MsoFldNewPurchasedPlanObj getInst() { 
		if( me == null ) me = new MsoFldNewPurchasedPlanObj();
		return me;
	}
	private static MsoFldNewPurchasedPlanObj me;
}

