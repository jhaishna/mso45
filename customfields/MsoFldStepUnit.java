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


public class MsoFldStepUnit extends EnumField {

	/**
	 * Constructs an instance of <code>MsoFldStepUnit</code>
	 */
	public MsoFldStepUnit() { super(43002, 3); }

	/**
	 * Returns an instance of <code>MsoFldStepUnit</code>
	 * @return An instance of <code>MsoFldStepUnit</code>
	 */
	public static synchronized MsoFldStepUnit getInst() { 
		if( me == null ) me = new MsoFldStepUnit();
		return me;
	}
	private static MsoFldStepUnit me;
}
