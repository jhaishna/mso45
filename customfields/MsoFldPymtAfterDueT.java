package customfields;

import com.portal.pcm.DecimalField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldPymtAfterDueT extends DecimalField {

	/**
	 * Constructs an instance of <code>MsoFldPymtAfterDueT</code>
	 */
	public MsoFldPymtAfterDueT() { super(43414, 14); }

	/**
	 * Returns an instance of <code>MsoFldPymtAfterDueT</code>
	 * @return An instance of <code>MsoFldPymtAfterDueT</code>
	 */
	public static synchronized MsoFldPymtAfterDueT getInst() { 
		if( me == null ) me = new MsoFldPymtAfterDueT();
		return me;
	}
	private static MsoFldPymtAfterDueT me;
}
