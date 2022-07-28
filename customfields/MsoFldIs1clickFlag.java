package customfields;

import com.portal.pcm.EnumField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldIs1clickFlag extends EnumField {

	/**
	 * Constructs an instance of <code>MsoFldIs1clickFlag</code>
	 */
	public MsoFldIs1clickFlag() { super(41110, 3); }

	/**
	 * Returns an instance of <code>MsoFldIs1clickFlag</code>
	 * @return An instance of <code>MsoFldIs1clickFlag</code>
	 */
	public static synchronized MsoFldIs1clickFlag getInst() { 
		if( me == null ) me = new MsoFldIs1clickFlag();
		return me;
	}
	private static MsoFldIs1clickFlag me;
}