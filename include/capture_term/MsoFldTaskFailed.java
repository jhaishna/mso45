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

import com.portal.pcm.IntField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated
 * @version 1.0 Mon Feb  1 22:56:02 2021
 * @author Autogenerated
 */

public class MsoFldTaskFailed extends IntField {
/**
 * Constructs an instance of <code>MsoFldTaskFailed</code>
 */
	public MsoFldTaskFailed() { super(42065, 1); }
/**
 * Returns an instance of <code>MsoFldTaskFailed</code>
 * @return An instance of <code>MsoFldTaskFailed</code>
 */
	public static synchronized MsoFldTaskFailed getInst() { 
		if( me == null ) me = new MsoFldTaskFailed();
		return me;
	}
	private static MsoFldTaskFailed me;
}

