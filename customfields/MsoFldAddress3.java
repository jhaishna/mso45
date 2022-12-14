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


public class MsoFldAddress3 extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldAddress3</code>
	 */
	public MsoFldAddress3() { super(40022, 5); }

	/**
	 * Returns an instance of <code>MsoFldAddress3</code>
	 * @return An instance of <code>MsoFldAddress3</code>
	 */
	public static synchronized MsoFldAddress3 getInst() { 
		if( me == null ) me = new MsoFldAddress3();
		return me;
	}
	private static MsoFldAddress3 me;
}
