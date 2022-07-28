package customfields;

import com.portal.pcm.IntField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldStbType extends IntField {

	/**
	 * Constructs an instance of <code>MsoFldStbType</code>
	 */
	public MsoFldStbType() { super(42002, 1); }

	/**
	 * Returns an instance of <code>MsoFldStbType</code>
	 * @return An instance of <code>MsoFldStbType</code>
	 */
	public static synchronized MsoFldStbType getInst() { 
		if( me == null ) me = new MsoFldStbType();
		return me;
	}
	private static MsoFldStbType me;
}