package customfields;

import com.portal.pcm.ArrayField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldModifyAuthentication extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldModifyAuthentication</code>
	 */
	public MsoFldModifyAuthentication() { super(41185, 9); }

	/**
	 * Returns an instance of <code>MsoFldModifyAuthentication</code>
	 * @return An instance of <code>MsoFldModifyAuthentication</code>
	 */
	public static synchronized MsoFldModifyAuthentication getInst() { 
		if( me == null ) me = new MsoFldModifyAuthentication();
		return me;
	}
	private static MsoFldModifyAuthentication me;
}
