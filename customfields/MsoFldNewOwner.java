package customfields;

import com.portal.pcm.PoidField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldNewOwner extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldNewOwner</code>
	 */
	public MsoFldNewOwner() { super(42076, 7); }

	/**
	 * Returns an instance of <code>MsoFldNewOwner</code>
	 * @return An instance of <code>MsoFldNewOwner</code>
	 */
	public static synchronized MsoFldNewOwner getInst() { 
		if( me == null ) me = new MsoFldNewOwner();
		return me;
	}
	private static MsoFldNewOwner me;
}
