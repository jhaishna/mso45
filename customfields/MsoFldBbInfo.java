package customfields;

import com.portal.pcm.SubStructField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldBbInfo extends SubStructField {

	/**
	 * Constructs an instance of <code>MsoFldBbInfo</code>
	 */
	public MsoFldBbInfo() { super(41104, 10); }

	/**
	 * Returns an instance of <code>MsoFldBbInfo</code>
	 * @return An instance of <code>MsoFldBbInfo</code>
	 */
	public static synchronized MsoFldBbInfo getInst() { 
		if( me == null ) me = new MsoFldBbInfo();
		return me;
	}
	private static MsoFldBbInfo me;
}