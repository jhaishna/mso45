/*
 *
 *	Copyright (c) 1998 - 2013 Oracle Corporation. All rights reserved.
 * 
 *	This material is the confidential property of Oracle Corporation.
 *	or its subsidiaries or licensors and may be used, reproduced, stored
 *	or transmitted only in accordance with a valid Oracle license or
 *	sublicense agreement.
 */
import com.portal.pcm.EnumField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated
 * @version 1.0 Sat Jul  1 20:18:00 2017
 * @author Autogenerated
 */

public class MsoFldPkgType extends EnumField {
/**
 * Constructs an instance of <code>MsoFldPkgType</code>
 */
	public MsoFldPkgType() { super(42020, 3); }
/**
 * Returns an instance of <code>MsoFldPkgType</code>
 * @return An instance of <code>MsoFldPkgType</code>
 */
	public static synchronized MsoFldPkgType getInst() { 
		if( me == null ) me = new MsoFldPkgType();
		return me;
	}
	private static MsoFldPkgType me;
}

