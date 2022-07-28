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


public class MsoFldExpirydate extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldExpirydate</code>
	 */
	public MsoFldExpirydate() { super(42170, 5); }

	/**
	 * Returns an instance of <code>MsoFldExpirydate</code>
	 * @return An instance of <code>MsoFldExpirydate</code>
	 */
	public static synchronized MsoFldExpirydate getInst() { 
		if( me == null ) me = new MsoFldExpirydate();
		return me;
	}
	private static MsoFldExpirydate me;
}