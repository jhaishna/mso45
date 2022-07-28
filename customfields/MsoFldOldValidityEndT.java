package customfields;

import com.portal.pcm.TStampField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldOldValidityEndT extends TStampField {

	/**
	 * Constructs an instance of <code>MsoFldOldValidityEndT</code>
	 */
	public MsoFldOldValidityEndT() { super(41179, 8); }

	/**
	 * Returns an instance of <code>MsoFldOldValidityEndT</code>
	 * @return An instance of <code>MsoFldOldValidityEndT</code>
	 */
	public static synchronized MsoFldOldValidityEndT getInst() { 
		if( me == null ) me = new MsoFldOldValidityEndT();
		return me;
	}
	private static MsoFldOldValidityEndT me;
}