package customfields;

import com.portal.pcm.EnumField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldServiceType extends EnumField {

	/**
	 * Constructs an instance of <code>MsoFldServiceType</code>
	 */
	public MsoFldServiceType() { super(43058, 3); }

	/**
	 * Returns an instance of <code>MsoFldServiceType</code>
	 * @return An instance of <code>MsoFldServiceType</code>
	 */
	public static synchronized MsoFldServiceType getInst() { 
		if( me == null ) me = new MsoFldServiceType();
		return me;
	}
	private static MsoFldServiceType me;
}
