package customfields;

import com.portal.pcm.EnumField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldContactPref extends EnumField {

	/**
	 * Constructs an instance of <code>MsoFldContactPref</code>
	 */
	public MsoFldContactPref() { super(40059, 3); }

	/**
	 * Returns an instance of <code>MsoFldContactPref</code>
	 * @return An instance of <code>MsoFldContactPref</code>
	 */
	public static synchronized MsoFldContactPref getInst() { 
		if( me == null ) me = new MsoFldContactPref();
		return me;
	}
	private static MsoFldContactPref me;
}
