package customfields;

import com.portal.pcm.PoidField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldLcoBalGrpObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldLcoBalGrpObj</code>
	 */
	public MsoFldLcoBalGrpObj() { super(43329, 7); }

	/**
	 * Returns an instance of <code>MsoFldLcoBalGrpObj</code>
	 * @return An instance of <code>MsoFldLcoBalGrpObj</code>
	 */
	public static synchronized MsoFldLcoBalGrpObj getInst() { 
		if( me == null ) me = new MsoFldLcoBalGrpObj();
		return me;
	}
	private static MsoFldLcoBalGrpObj me;
}
