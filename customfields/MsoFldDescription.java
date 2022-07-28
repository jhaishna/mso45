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


public class MsoFldDescription extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldDescription</code>
	 */
	public MsoFldDescription() { super(42157, 5); }

	/**
	 * Returns an instance of <code>MsoFldDescription</code>
	 * @return An instance of <code>MsoFldDescription</code>
	 */
	public static synchronized MsoFldDescription getInst() { 
		if( me == null ) me = new MsoFldDescription();
		return me;
	}
	private static MsoFldDescription me;
}
