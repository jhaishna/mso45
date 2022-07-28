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
 * @version 1.0 Mon Jul 30 17:33:03 2018
 * @author Autogenerated
 */

public class MsoFldServiceHold extends ArrayField {
/**
 * Constructs an instance of <code>MsoFldServiceHold</code>
 */
	public MsoFldServiceHold() { super(41161, 9); }
/**
 * Returns an instance of <code>MsoFldServiceHold</code>
 * @return An instance of <code>MsoFldServiceHold</code>
 */
	public static synchronized MsoFldServiceHold getInst() { 
		if( me == null ) me = new MsoFldServiceHold();
		return me;
	}
	private static MsoFldServiceHold me;
}

