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


public class MsoFldLoginAs extends EnumField {

	/**
	 * Constructs an instance of <code>MsoFldLoginAs</code>
	 */
	public MsoFldLoginAs() { super(40051, 3); }

	/**
	 * Returns an instance of <code>MsoFldLoginAs</code>
	 * @return An instance of <code>MsoFldLoginAs</code>
	 */
	public static synchronized MsoFldLoginAs getInst() { 
		if( me == null ) me = new MsoFldLoginAs();
		return me;
	}
	private static MsoFldLoginAs me;
}
