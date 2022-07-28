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


public class MsoFldModifyBillinfo extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldModifyBillinfo</code>
	 */
	public MsoFldModifyBillinfo() { super(41193, 9); }

	/**
	 * Returns an instance of <code>MsoFldModifyBillinfo</code>
	 * @return An instance of <code>MsoFldModifyBillinfo</code>
	 */
	public static synchronized MsoFldModifyBillinfo getInst() { 
		if( me == null ) me = new MsoFldModifyBillinfo();
		return me;
	}
	private static MsoFldModifyBillinfo me;
}
