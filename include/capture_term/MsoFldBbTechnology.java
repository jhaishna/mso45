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
 * @version 1.0 Mon Feb  1 22:56:02 2021
 * @author Autogenerated
 */

public class MsoFldBbTechnology extends EnumField {
/**
 * Constructs an instance of <code>MsoFldBbTechnology</code>
 */
	public MsoFldBbTechnology() { super(40042, 3); }
/**
 * Returns an instance of <code>MsoFldBbTechnology</code>
 * @return An instance of <code>MsoFldBbTechnology</code>
 */
	public static synchronized MsoFldBbTechnology getInst() { 
		if( me == null ) me = new MsoFldBbTechnology();
		return me;
	}
	private static MsoFldBbTechnology me;
}

