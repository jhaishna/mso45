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


public class MsoFldLcoBalBucketObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldLcoBalBucketObj</code>
	 */
	public MsoFldLcoBalBucketObj() { super(43325, 7); }

	/**
	 * Returns an instance of <code>MsoFldLcoBalBucketObj</code>
	 * @return An instance of <code>MsoFldLcoBalBucketObj</code>
	 */
	public static synchronized MsoFldLcoBalBucketObj getInst() { 
		if( me == null ) me = new MsoFldLcoBalBucketObj();
		return me;
	}
	private static MsoFldLcoBalBucketObj me;
}
