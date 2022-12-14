package customfields;

import com.portal.pcm.StrField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldPackageType extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldPackageType</code>
	 */
	public MsoFldPackageType() { super(43421, 5); }

	/**
	 * Returns an instance of <code>MsoFldPackageType</code>
	 * @return An instance of <code>MsoFldPackageType</code>
	 */
	public static synchronized MsoFldPackageType getInst() { 
		if( me == null ) me = new MsoFldPackageType();
		return me;
	}
	private static MsoFldPackageType me;
}
