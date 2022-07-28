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


public class MsoFldMobile extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldMobile</code>
	 */
	public MsoFldMobile() { super(42164, 5); }

	/**
	 * Returns an instance of <code>MsoFldMobile</code>
	 * @return An instance of <code>MsoFldMobile</code>
	 */
	public static synchronized MsoFldMobile getInst() { 
		if( me == null ) me = new MsoFldMobile();
		return me;
	}
	private static MsoFldMobile me;
}