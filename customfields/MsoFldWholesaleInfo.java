package customfields;

import com.portal.pcm.SubStructField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldWholesaleInfo extends SubStructField {

	/**
	 * Constructs an instance of <code>MsoFldWholesaleInfo</code>
	 */
	public MsoFldWholesaleInfo() { super(40055, 10); }

	/**
	 * Returns an instance of <code>MsoFldWholesaleInfo</code>
	 * @return An instance of <code>MsoFldWholesaleInfo</code>
	 */
	public static synchronized MsoFldWholesaleInfo getInst() { 
		if( me == null ) me = new MsoFldWholesaleInfo();
		return me;
	}
	private static MsoFldWholesaleInfo me;
}
