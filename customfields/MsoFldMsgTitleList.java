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


public class MsoFldMsgTitleList extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldMsgTitleList</code>
	 */
	public MsoFldMsgTitleList() { super(42061, 9); }

	/**
	 * Returns an instance of <code>MsoFldMsgTitleList</code>
	 * @return An instance of <code>MsoFldMsgTitleList</code>
	 */
	public static synchronized MsoFldMsgTitleList getInst() { 
		if( me == null ) me = new MsoFldMsgTitleList();
		return me;
	}
	private static MsoFldMsgTitleList me;
}
