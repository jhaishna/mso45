package customfields;

import com.portal.pcm.ArrayField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldCities extends ArrayField {

	/**
	 * Constructs an instance of <code>MsoFldCities</code>
	 */
	public MsoFldCities() { super(46021, 9); }

	/**
	 * Returns an instance of <code>MsoFldCities</code>
	 * @return An instance of <code>MsoFldCities</code>
	 */
	public static synchronized MsoFldCities getInst() { 
		if( me == null ) me = new MsoFldCities();
		return me;
	}
	private static MsoFldCities me;
}
