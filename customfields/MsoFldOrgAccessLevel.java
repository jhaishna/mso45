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


public class MsoFldOrgAccessLevel extends EnumField {

	/**
	 * Constructs an instance of <code>MsoFldOrgAccessLevel</code>
	 */
	public MsoFldOrgAccessLevel() { super(41111, 3); }

	/**
	 * Returns an instance of <code>MsoFldOrgAccessLevel</code>
	 * @return An instance of <code>MsoFldOrgAccessLevel</code>
	 */
	public static synchronized MsoFldOrgAccessLevel getInst() { 
		if( me == null ) me = new MsoFldOrgAccessLevel();
		return me;
	}
	private static MsoFldOrgAccessLevel me;
}
