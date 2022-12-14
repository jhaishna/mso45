package customfields;

import com.portal.pcm.IntField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldTaskFailed extends IntField {

	/**
	 * Constructs an instance of <code>MsoFldTaskFailed</code>
	 */
	public MsoFldTaskFailed() { super(42065, 1); }

	/**
	 * Returns an instance of <code>MsoFldTaskFailed</code>
	 * @return An instance of <code>MsoFldTaskFailed</code>
	 */
	public static synchronized MsoFldTaskFailed getInst() { 
		if( me == null ) me = new MsoFldTaskFailed();
		return me;
	}
	private static MsoFldTaskFailed me;
}
