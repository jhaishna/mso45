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
 * @version 1.0 Thu Aug  9 00:05:05 2018
 * @author Autogenerated
 */

public class MsoFldLcoAcctNo extends StrField {
/**
 * Constructs an instance of <code>MsoFldLcoAcctNo</code>
 */
	public MsoFldLcoAcctNo() { super(42626, 5); }
/**
 * Returns an instance of <code>MsoFldLcoAcctNo</code>
 * @return An instance of <code>MsoFldLcoAcctNo</code>
 */
	public static synchronized MsoFldLcoAcctNo getInst() { 
		if( me == null ) me = new MsoFldLcoAcctNo();
		return me;
	}
	private static MsoFldLcoAcctNo me;
}

