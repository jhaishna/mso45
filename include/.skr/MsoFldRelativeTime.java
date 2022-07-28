/*
 *
 *	Copyright (c) 1998 - 2013 Oracle Corporation. All rights reserved.
 * 
 *	This material is the confidential property of Oracle Corporation.
 *	or its subsidiaries or licensors and may be used, reproduced, stored
 *	or transmitted only in accordance with a valid Oracle license or
 *	sublicense agreement.
 */
import com.portal.pcm.StrField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated
 * @version 1.0 Sat Jul  1 20:18:00 2017
 * @author Autogenerated
 */

public class MsoFldRelativeTime extends StrField {
/**
 * Constructs an instance of <code>MsoFldRelativeTime</code>
 */
	public MsoFldRelativeTime() { super(42142, 5); }
/**
 * Returns an instance of <code>MsoFldRelativeTime</code>
 * @return An instance of <code>MsoFldRelativeTime</code>
 */
	public static synchronized MsoFldRelativeTime getInst() { 
		if( me == null ) me = new MsoFldRelativeTime();
		return me;
	}
	private static MsoFldRelativeTime me;
}

