package customfields;

import com.portal.pcm.EnumField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldCommissionModel extends EnumField {

	/**
	 * Constructs an instance of <code>MsoFldCommissionModel</code>
	 */
	public MsoFldCommissionModel() { super(43320, 3); }

	/**
	 * Returns an instance of <code>MsoFldCommissionModel</code>
	 * @return An instance of <code>MsoFldCommissionModel</code>
	 */
	public static synchronized MsoFldCommissionModel getInst() { 
		if( me == null ) me = new MsoFldCommissionModel();
		return me;
	}
	private static MsoFldCommissionModel me;
}
