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


public class MsoFldStepAmount extends DecimalField {

	/**
	 * Constructs an instance of <code>MsoFldStepAmount</code>
	 */
	public MsoFldStepAmount() { super(43004, 14); }

	/**
	 * Returns an instance of <code>MsoFldStepAmount</code>
	 * @return An instance of <code>MsoFldStepAmount</code>
	 */
	public static synchronized MsoFldStepAmount getInst() { 
		if( me == null ) me = new MsoFldStepAmount();
		return me;
	}
	private static MsoFldStepAmount me;
}
