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


public class MsoFldHardwarePlans extends SubStructField {

	/**
	 * Constructs an instance of <code>MsoFldHardwarePlans</code>
	 */
	public MsoFldHardwarePlans() { super(41141, 10); }

	/**
	 * Returns an instance of <code>MsoFldHardwarePlans</code>
	 * @return An instance of <code>MsoFldHardwarePlans</code>
	 */
	public static synchronized MsoFldHardwarePlans getInst() { 
		if( me == null ) me = new MsoFldHardwarePlans();
		return me;
	}
	private static MsoFldHardwarePlans me;
}