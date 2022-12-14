package customfields;

import com.portal.pcm.TStampField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldFromDate extends TStampField {

	/**
	 * Constructs an instance of <code>MsoFldFromDate</code>
	 */
	public MsoFldFromDate() { super(43408, 8); }

	/**
	 * Returns an instance of <code>MsoFldFromDate</code>
	 * @return An instance of <code>MsoFldFromDate</code>
	 */
	public static synchronized MsoFldFromDate getInst() { 
		if( me == null ) me = new MsoFldFromDate();
		return me;
	}
	private static MsoFldFromDate me;
}
