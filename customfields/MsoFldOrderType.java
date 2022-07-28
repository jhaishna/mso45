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


public class MsoFldOrderType extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldOrderType</code>
	 */
	public MsoFldOrderType() { super(42015, 5); }

	/**
	 * Returns an instance of <code>MsoFldOrderType</code>
	 * @return An instance of <code>MsoFldOrderType</code>
	 */
	public static synchronized MsoFldOrderType getInst() { 
		if( me == null ) me = new MsoFldOrderType();
		return me;
	}
	private static MsoFldOrderType me;
}