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

import com.portal.pcm.ArrayField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated
 * @version 1.0 Tue Feb 18 15:25:04 2020
 * @author Autogenerated
 */

public class MsoFldRefund extends ArrayField {
/**
 * Constructs an instance of <code>MsoFldRefund</code>
 */
	public MsoFldRefund() { super(43071, 9); }
/**
 * Returns an instance of <code>MsoFldRefund</code>
 * @return An instance of <code>MsoFldRefund</code>
 */
	public static synchronized MsoFldRefund getInst() { 
		if( me == null ) me = new MsoFldRefund();
		return me;
	}
	private static MsoFldRefund me;
}

