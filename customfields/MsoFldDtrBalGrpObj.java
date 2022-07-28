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


public class MsoFldDtrBalGrpObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldDtrBalGrpObj</code>
	 */
	public MsoFldDtrBalGrpObj() { super(43345, 7); }

	/**
	 * Returns an instance of <code>MsoFldDtrBalGrpObj</code>
	 * @return An instance of <code>MsoFldDtrBalGrpObj</code>
	 */
	public static synchronized MsoFldDtrBalGrpObj getInst() { 
		if( me == null ) me = new MsoFldDtrBalGrpObj();
		return me;
	}
	private static MsoFldDtrBalGrpObj me;
}
