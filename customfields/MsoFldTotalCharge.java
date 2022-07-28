package customfields;

import com.portal.pcm.DecimalField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldTotalCharge extends DecimalField {

	/**
	 * Constructs an instance of <code>MsoFldTotalCharge</code>
	 */
	public MsoFldTotalCharge() { super(43415, 14); }

	/**
	 * Returns an instance of <code>MsoFldTotalCharge</code>
	 * @return An instance of <code>MsoFldTotalCharge</code>
	 */
	public static synchronized MsoFldTotalCharge getInst() { 
		if( me == null ) me = new MsoFldTotalCharge();
		return me;
	}
	private static MsoFldTotalCharge me;
}