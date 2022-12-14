package customfields;

import com.portal.pcm.DecimalField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldDepositAmount extends DecimalField {

	/**
	 * Constructs an instance of <code>MsoFldDepositAmount</code>
	 */
	public MsoFldDepositAmount() { super(43150, 14); }

	/**
	 * Returns an instance of <code>MsoFldDepositAmount</code>
	 * @return An instance of <code>MsoFldDepositAmount</code>
	 */
	public static synchronized MsoFldDepositAmount getInst() { 
		if( me == null ) me = new MsoFldDepositAmount();
		return me;
	}
	private static MsoFldDepositAmount me;
}
