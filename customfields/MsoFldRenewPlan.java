package customfields;

import com.portal.pcm.ArrayField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldRenewPlan extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldRenewPlan</code>
	 */
	public MsoFldRenewPlan() { super(41169, 9); }

	/**
	 * Returns an instance of <code>MsoFldRenewPlan</code>
	 * @return An instance of <code>MsoFldRenewPlan</code>
	 */
	public static synchronized MsoFldRenewPlan getInst() { 
		if( me == null ) me = new MsoFldRenewPlan();
		return me;
	}
	private static MsoFldRenewPlan me;
}
