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

public class MsoFldUnauthorizeService extends ArrayField {
/**
 * Constructs an instance of <code>MsoFldUnauthorizeService</code>
 */
	public MsoFldUnauthorizeService() { super(42028, 9); }
/**
 * Returns an instance of <code>MsoFldUnauthorizeService</code>
 * @return An instance of <code>MsoFldUnauthorizeService</code>
 */
	public static synchronized MsoFldUnauthorizeService getInst() { 
		if( me == null ) me = new MsoFldUnauthorizeService();
		return me;
	}
	private static MsoFldUnauthorizeService me;
}

