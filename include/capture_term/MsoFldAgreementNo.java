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
 * @version 1.0 Mon Feb  1 22:56:02 2021
 * @author Autogenerated
 */

public class MsoFldAgreementNo extends StrField {
/**
 * Constructs an instance of <code>MsoFldAgreementNo</code>
 */
	public MsoFldAgreementNo() { super(40007, 5); }
/**
 * Returns an instance of <code>MsoFldAgreementNo</code>
 * @return An instance of <code>MsoFldAgreementNo</code>
 */
	public static synchronized MsoFldAgreementNo getInst() { 
		if( me == null ) me = new MsoFldAgreementNo();
		return me;
	}
	private static MsoFldAgreementNo me;
}

