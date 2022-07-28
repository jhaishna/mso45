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


public class MsoFldHwPlanObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldHwPlanObj</code>
	 */
	public MsoFldHwPlanObj() { super(41220, 7); }

	/**
	 * Returns an instance of <code>MsoFldHwPlanObj</code>
	 * @return An instance of <code>MsoFldHwPlanObj</code>
	 */
	public static synchronized MsoFldHwPlanObj getInst() { 
		if( me == null ) me = new MsoFldHwPlanObj();
		return me;
	}
	private static MsoFldHwPlanObj me;
}
