package customfields;

import com.portal.pcm.StrField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldRuleName extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldRuleName</code>
	 */
	public MsoFldRuleName() { super(43000, 5); }

	/**
	 * Returns an instance of <code>MsoFldRuleName</code>
	 * @return An instance of <code>MsoFldRuleName</code>
	 */
	public static synchronized MsoFldRuleName getInst() { 
		if( me == null ) me = new MsoFldRuleName();
		return me;
	}
	private static MsoFldRuleName me;
}
