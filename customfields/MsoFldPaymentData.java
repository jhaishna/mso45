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


public class MsoFldPaymentData extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldPaymentData</code>
	 */
	public MsoFldPaymentData() { super(43056, 9); }

	/**
	 * Returns an instance of <code>MsoFldPaymentData</code>
	 * @return An instance of <code>MsoFldPaymentData</code>
	 */
	public static synchronized MsoFldPaymentData getInst() { 
		if( me == null ) me = new MsoFldPaymentData();
		return me;
	}
	private static MsoFldPaymentData me;
}
