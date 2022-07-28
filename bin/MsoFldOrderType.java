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

import com.portal.pcm.StrField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated
 * @version 1.0 Tue Feb 18 15:25:04 2020
 * @author Autogenerated
 */

public class MsoFldOrderType extends StrField {
/**
 * Constructs an instance of <code>MsoFldOrderType</code>
 */
	public MsoFldOrderType() { super(42015, 5); }
/**
 * Returns an instance of <code>MsoFldOrderType</code>
 * @return An instance of <code>MsoFldOrderType</code>
 */
	public static synchronized MsoFldOrderType getInst() { 
		if( me == null ) me = new MsoFldOrderType();
		return me;
	}
	private static MsoFldOrderType me;
}

