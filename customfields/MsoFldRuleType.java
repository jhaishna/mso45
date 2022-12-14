package customfields;

import com.portal.pcm.EnumField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldRuleType extends EnumField {

	/**
	 * Constructs an instance of <code>MsoFldRuleType</code>
	 */
	public MsoFldRuleType() { super(43006, 3); }

	/**
	 * Returns an instance of <code>MsoFldRuleType</code>
	 * @return An instance of <code>MsoFldRuleType</code>
	 */
	public static synchronized MsoFldRuleType getInst() { 
		if( me == null ) me = new MsoFldRuleType();
		return me;
	}
	private static MsoFldRuleType me;
}
