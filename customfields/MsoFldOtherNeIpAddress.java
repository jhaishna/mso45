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


public class MsoFldOtherNeIpAddress extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldOtherNeIpAddress</code>
	 */
	public MsoFldOtherNeIpAddress() { super(42226, 5); }

	/**
	 * Returns an instance of <code>MsoFldOtherNeIpAddress</code>
	 * @return An instance of <code>MsoFldOtherNeIpAddress</code>
	 */
	public static synchronized MsoFldOtherNeIpAddress getInst() { 
		if( me == null ) me = new MsoFldOtherNeIpAddress();
		return me;
	}
	private static MsoFldOtherNeIpAddress me;
}
