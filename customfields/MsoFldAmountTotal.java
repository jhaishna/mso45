package customfields;

import com.portal.pcm.DecimalField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldAmountTotal extends DecimalField {

	/**
	 * Constructs an instance of <code>MsoFldAmountTotal</code>
	 */
	public MsoFldAmountTotal() { super(43054, 14); }

	/**
	 * Returns an instance of <code>MsoFldAmountTotal</code>
	 * @return An instance of <code>MsoFldAmountTotal</code>
	 */
	public static synchronized MsoFldAmountTotal getInst() { 
		if( me == null ) me = new MsoFldAmountTotal();
		return me;
	}
	private static MsoFldAmountTotal me;
}
