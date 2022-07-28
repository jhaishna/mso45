package customfields;

import com.portal.pcm.StrField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldChargeHead extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldChargeHead</code>
	 */
	public MsoFldChargeHead() { super(43301, 5); }

	/**
	 * Returns an instance of <code>MsoFldChargeHead</code>
	 * @return An instance of <code>MsoFldChargeHead</code>
	 */
	public static synchronized MsoFldChargeHead getInst() { 
		if( me == null ) me = new MsoFldChargeHead();
		return me;
	}
	private static MsoFldChargeHead me;
}
