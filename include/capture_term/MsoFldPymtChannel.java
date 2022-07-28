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

public class MsoFldPymtChannel extends EnumField {
/**
 * Constructs an instance of <code>MsoFldPymtChannel</code>
 */
	public MsoFldPymtChannel() { super(43057, 3); }
/**
 * Returns an instance of <code>MsoFldPymtChannel</code>
 * @return An instance of <code>MsoFldPymtChannel</code>
 */
	public static synchronized MsoFldPymtChannel getInst() { 
		if( me == null ) me = new MsoFldPymtChannel();
		return me;
	}
	private static MsoFldPymtChannel me;
}

