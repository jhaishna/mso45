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


public class MsoFldSdtCommBucketObj extends PoidField {

	/**
	 * Constructs an instance of <code>MsoFldSdtCommBucketObj</code>
	 */
	public MsoFldSdtCommBucketObj() { super(43353, 7); }

	/**
	 * Returns an instance of <code>MsoFldSdtCommBucketObj</code>
	 * @return An instance of <code>MsoFldSdtCommBucketObj</code>
	 */
	public static synchronized MsoFldSdtCommBucketObj getInst() { 
		if( me == null ) me = new MsoFldSdtCommBucketObj();
		return me;
	}
	private static MsoFldSdtCommBucketObj me;
}
