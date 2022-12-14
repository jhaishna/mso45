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


public class MsoFldVcObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldVcObj</code>
	 */
	public MsoFldVcObj() { super(42003, 7); }

	/**
	 * Returns an instance of <code>MsoFldVcObj</code>
	 * @return An instance of <code>MsoFldVcObj</code>
	 */
	public static synchronized MsoFldVcObj getInst() { 
		if( me == null ) me = new MsoFldVcObj();
		return me;
	}
	private static MsoFldVcObj me;
}
