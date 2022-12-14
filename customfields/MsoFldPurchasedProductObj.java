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


public class MsoFldPurchasedProductObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldPurchasedProductObj</code>
	 */
	public MsoFldPurchasedProductObj() { super(41144, 7); }

	/**
	 * Returns an instance of <code>MsoFldPurchasedProductObj</code>
	 * @return An instance of <code>MsoFldPurchasedProductObj</code>
	 */
	public static synchronized MsoFldPurchasedProductObj getInst() { 
		if( me == null ) me = new MsoFldPurchasedProductObj();
		return me;
	}
	private static MsoFldPurchasedProductObj me;
}
