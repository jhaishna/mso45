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
 * @version 1.0 Tue Feb 18 15:25:04 2020
 * @author Autogenerated
 */

public class MsoFldCommisionModel extends EnumField {
/**
 * Constructs an instance of <code>MsoFldCommisionModel</code>
 */
	public MsoFldCommisionModel() { super(41135, 3); }
/**
 * Returns an instance of <code>MsoFldCommisionModel</code>
 * @return An instance of <code>MsoFldCommisionModel</code>
 */
	public static synchronized MsoFldCommisionModel getInst() { 
		if( me == null ) me = new MsoFldCommisionModel();
		return me;
	}
	private static MsoFldCommisionModel me;
}

