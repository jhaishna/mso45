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


public class MsoFldOutputGigaWords extends DecimalField {

	/**
	 * Constructs an instance of <code>MsoFldOutputGigaWords</code>
	 */
	public MsoFldOutputGigaWords() { super(46014, 14); }

	/**
	 * Returns an instance of <code>MsoFldOutputGigaWords</code>
	 * @return An instance of <code>MsoFldOutputGigaWords</code>
	 */
	public static synchronized MsoFldOutputGigaWords getInst() { 
		if( me == null ) me = new MsoFldOutputGigaWords();
		return me;
	}
	private static MsoFldOutputGigaWords me;
}