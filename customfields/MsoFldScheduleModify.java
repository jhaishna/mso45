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


public class MsoFldScheduleModify extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldScheduleModify</code>
	 */
	public MsoFldScheduleModify() { super(41213, 9); }

	/**
	 * Returns an instance of <code>MsoFldScheduleModify</code>
	 * @return An instance of <code>MsoFldScheduleModify</code>
	 */
	public static synchronized MsoFldScheduleModify getInst() { 
		if( me == null ) me = new MsoFldScheduleModify();
		return me;
	}
	private static MsoFldScheduleModify me;
}
