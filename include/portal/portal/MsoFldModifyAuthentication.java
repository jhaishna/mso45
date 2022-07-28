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
 * @version 1.0 Thu Aug  9 00:05:05 2018
 * @author Autogenerated
 */

public class MsoFldModifyAuthentication extends ArrayField {
/**
 * Constructs an instance of <code>MsoFldModifyAuthentication</code>
 */
	public MsoFldModifyAuthentication() { super(41185, 9); }
/**
 * Returns an instance of <code>MsoFldModifyAuthentication</code>
 * @return An instance of <code>MsoFldModifyAuthentication</code>
 */
	public static synchronized MsoFldModifyAuthentication getInst() { 
		if( me == null ) me = new MsoFldModifyAuthentication();
		return me;
	}
	private static MsoFldModifyAuthentication me;
}

