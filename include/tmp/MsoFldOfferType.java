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

import com.portal.pcm.EnumField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated
 * @version 1.0 Mon Jul 30 17:33:03 2018
 * @author Autogenerated
 */

public class MsoFldOfferType extends EnumField {
/**
 * Constructs an instance of <code>MsoFldOfferType</code>
 */
	public MsoFldOfferType() { super(46034, 3); }
/**
 * Returns an instance of <code>MsoFldOfferType</code>
 * @return An instance of <code>MsoFldOfferType</code>
 */
	public static synchronized MsoFldOfferType getInst() { 
		if( me == null ) me = new MsoFldOfferType();
		return me;
	}
	private static MsoFldOfferType me;
}

