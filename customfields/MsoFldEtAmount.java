package customfields;

import com.portal.pcm.DecimalField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldEtAmount extends DecimalField {

	/**
	 * Constructs an instance of <code>MsoFldEtAmount</code>
	 */
	public MsoFldEtAmount() { super(42074, 14); }

	/**
	 * Returns an instance of <code>MsoFldEtAmount</code>
	 * @return An instance of <code>MsoFldEtAmount</code>
	 */
	public static synchronized MsoFldEtAmount getInst() { 
		if( me == null ) me = new MsoFldEtAmount();
		return me;
	}
	private static MsoFldEtAmount me;
}