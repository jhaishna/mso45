package customfields;

import com.portal.pcm.PoidField;

/**
 * Specific Field subclasses. This subclasses of <code>Field</code>
 * is used with the FList class to specifiy which field is being
 * accessed, and its type.  The type information is used to provide
 * compile time type checking.  These classes are auto generated.
 * @version 1.0 Tue Oct 25 11:04:33 IST 2016
 * @author Autogenerated
 */


public class MsoFldDtrOutcollectServObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldDtrOutcollectServObj</code>
	 */
	public MsoFldDtrOutcollectServObj() { super(43349, 7); }

	/**
	 * Returns an instance of <code>MsoFldDtrOutcollectServObj</code>
	 * @return An instance of <code>MsoFldDtrOutcollectServObj</code>
	 */
	public static synchronized MsoFldDtrOutcollectServObj getInst() { 
		if( me == null ) me = new MsoFldDtrOutcollectServObj();
		return me;
	}
	private static MsoFldDtrOutcollectServObj me;
}
