package customfields;

import com.portal.pcm.StrField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:32 IST 2016
 * @author Autogenerated
 */


public class MsoFldRegionCode2 extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldRegionCode2</code>
	 */
	public MsoFldRegionCode2() { super(40013, 5); }

	/**
	 * Returns an instance of <code>MsoFldRegionCode2</code>
	 * @return An instance of <code>MsoFldRegionCode2</code>
	 */
	public static synchronized MsoFldRegionCode2 getInst() { 
		if( me == null ) me = new MsoFldRegionCode2();
		return me;
	}
	private static MsoFldRegionCode2 me;
}
