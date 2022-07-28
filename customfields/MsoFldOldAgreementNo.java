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


public class MsoFldOldAgreementNo extends StrField {

	/**
	 * Constructs an instance of <code>MsoFldOldAgreementNo</code>
	 */
	public MsoFldOldAgreementNo() { super(40057, 5); }

	/**
	 * Returns an instance of <code>MsoFldOldAgreementNo</code>
	 * @return An instance of <code>MsoFldOldAgreementNo</code>
	 */
	public static synchronized MsoFldOldAgreementNo getInst() { 
		if( me == null ) me = new MsoFldOldAgreementNo();
		return me;
	}
	private static MsoFldOldAgreementNo me;
}
