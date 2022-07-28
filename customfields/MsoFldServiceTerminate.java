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


public class MsoFldServiceTerminate extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldServiceTerminate</code>
	 */
	public MsoFldServiceTerminate() { super(41160, 9); }

	/**
	 * Returns an instance of <code>MsoFldServiceTerminate</code>
	 * @return An instance of <code>MsoFldServiceTerminate</code>
	 */
	public static synchronized MsoFldServiceTerminate getInst() { 
		if( me == null ) me = new MsoFldServiceTerminate();
		return me;
	}
	private static MsoFldServiceTerminate me;
}