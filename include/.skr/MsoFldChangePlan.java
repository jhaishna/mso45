/*
 *
 *	Copyright (c) 1998 - 2013 Oracle Corporation. All rights reserved.
 * 
 *	This material is the confidential property of Oracle Corporation.
 *	or its subsidiaries or licensors and may be used, reproduced, stored
 *	or transmitted only in accordance with a valid Oracle license or
 *	sublicense agreement.
 */
import com.portal.pcm.ArrayField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated
 * @version 1.0 Sat Jul  1 20:18:00 2017
 * @author Autogenerated
 */

public class MsoFldChangePlan extends ArrayField {
/**
 * Constructs an instance of <code>MsoFldChangePlan</code>
 */
	public MsoFldChangePlan() { super(41164, 9); }
/**
 * Returns an instance of <code>MsoFldChangePlan</code>
 * @return An instance of <code>MsoFldChangePlan</code>
 */
	public static synchronized MsoFldChangePlan getInst() { 
		if( me == null ) me = new MsoFldChangePlan();
		return me;
	}
	private static MsoFldChangePlan me;
}
