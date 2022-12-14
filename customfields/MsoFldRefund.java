package customfields;

import com.portal.pcm.ArrayField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldRefund extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldRefund</code>
	 */
	public MsoFldRefund() { super(43071, 9); }

	/**
	 * Returns an instance of <code>MsoFldRefund</code>
	 * @return An instance of <code>MsoFldRefund</code>
	 */
	public static synchronized MsoFldRefund getInst() { 
		if( me == null ) me = new MsoFldRefund();
		return me;
	}
	private static MsoFldRefund me;
}
