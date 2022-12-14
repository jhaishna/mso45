package customfields;

import com.portal.pcm.StrField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldUserIp extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldUserIp</code>
	 */
	public MsoFldUserIp() { super(42172, 5); }

	/**
	 * Returns an instance of <code>MsoFldUserIp</code>
	 * @return An instance of <code>MsoFldUserIp</code>
	 */
	public static synchronized MsoFldUserIp getInst() { 
		if( me == null ) me = new MsoFldUserIp();
		return me;
	}
	private static MsoFldUserIp me;
}
