package customfields;

import com.portal.pcm.ArrayField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldServiceReactivate extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldServiceReactivate</code>
	 */
	public MsoFldServiceReactivate() { super(41159, 9); }

	/**
	 * Returns an instance of <code>MsoFldServiceReactivate</code>
	 * @return An instance of <code>MsoFldServiceReactivate</code>
	 */
	public static synchronized MsoFldServiceReactivate getInst() { 
		if( me == null ) me = new MsoFldServiceReactivate();
		return me;
	}
	private static MsoFldServiceReactivate me;
}
