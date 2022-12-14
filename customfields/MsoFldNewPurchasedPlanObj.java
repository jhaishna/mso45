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


public class MsoFldNewPurchasedPlanObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldNewPurchasedPlanObj</code>
	 */
	public MsoFldNewPurchasedPlanObj() { super(42625, 7); }

	/**
	 * Returns an instance of <code>MsoFldNewPurchasedPlanObj</code>
	 * @return An instance of <code>MsoFldNewPurchasedPlanObj</code>
	 */
	public static synchronized MsoFldNewPurchasedPlanObj getInst() { 
		if( me == null ) me = new MsoFldNewPurchasedPlanObj();
		return me;
	}
	private static MsoFldNewPurchasedPlanObj me;
}
