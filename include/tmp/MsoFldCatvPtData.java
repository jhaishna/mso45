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

public class MsoFldCatvPtData extends ArrayField {
/**
 * Constructs an instance of <code>MsoFldCatvPtData</code>
 */
	public MsoFldCatvPtData() { super(40035, 9); }
/**
 * Returns an instance of <code>MsoFldCatvPtData</code>
 * @return An instance of <code>MsoFldCatvPtData</code>
 */
	public static synchronized MsoFldCatvPtData getInst() { 
		if( me == null ) me = new MsoFldCatvPtData();
		return me;
	}
	private static MsoFldCatvPtData me;
}
