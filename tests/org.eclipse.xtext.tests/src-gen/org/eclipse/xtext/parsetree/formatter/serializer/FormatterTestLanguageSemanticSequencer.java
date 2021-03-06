/*
 * generated by Xtext
 */
package org.eclipse.xtext.parsetree.formatter.serializer;

import com.google.inject.Inject;
import com.google.inject.Provider;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.Assign;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.Datatypes;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.Decl;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.Enumeration;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.FormattertestlanguagePackage;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.FqnObj;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.FqnRef;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.Meth;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.Param;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.Space;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.SuppressedHidden;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.SuppressedHiddenSubID;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.SuppressedHiddenSubSub;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.TestIndentation;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.TestLinewrap;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.TestLinewrapMinMax;
import org.eclipse.xtext.parsetree.formatter.formattertestlanguage.WrappingDataTypeTest;
import org.eclipse.xtext.parsetree.formatter.services.FormatterTestLanguageGrammarAccess;
import org.eclipse.xtext.serializer.acceptor.ISemanticSequenceAcceptor;
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.diagnostic.ISemanticSequencerDiagnosticProvider;
import org.eclipse.xtext.serializer.diagnostic.ISerializationDiagnostic.Acceptor;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.GenericSequencer;
import org.eclipse.xtext.serializer.sequencer.ISemanticNodeProvider.INodesForEObjectProvider;
import org.eclipse.xtext.serializer.sequencer.ISemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;

@SuppressWarnings("all")
public class FormatterTestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private FormatterTestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void createSequence(EObject context, EObject semanticObject) {
		if(semanticObject.eClass().getEPackage() == FormattertestlanguagePackage.eINSTANCE) switch(semanticObject.eClass().getClassifierID()) {
			case FormattertestlanguagePackage.ASSIGN:
				sequence_Assign(context, (Assign) semanticObject); 
				return; 
			case FormattertestlanguagePackage.DATATYPES:
				sequence_Datatypes(context, (Datatypes) semanticObject); 
				return; 
			case FormattertestlanguagePackage.DECL:
				sequence_Decl(context, (Decl) semanticObject); 
				return; 
			case FormattertestlanguagePackage.ENUMERATION:
				sequence_Enumeration(context, (Enumeration) semanticObject); 
				return; 
			case FormattertestlanguagePackage.FQN_OBJ:
				sequence_FqnObj(context, (FqnObj) semanticObject); 
				return; 
			case FormattertestlanguagePackage.FQN_REF:
				sequence_FqnRef(context, (FqnRef) semanticObject); 
				return; 
			case FormattertestlanguagePackage.METH:
				sequence_Meth(context, (Meth) semanticObject); 
				return; 
			case FormattertestlanguagePackage.PARAM:
				sequence_Param(context, (Param) semanticObject); 
				return; 
			case FormattertestlanguagePackage.SPACE:
				sequence_Space(context, (Space) semanticObject); 
				return; 
			case FormattertestlanguagePackage.SUPPRESSED_HIDDEN:
				sequence_SuppressedHidden(context, (SuppressedHidden) semanticObject); 
				return; 
			case FormattertestlanguagePackage.SUPPRESSED_HIDDEN_SUB_ID:
				sequence_SuppressedHiddenSubID(context, (SuppressedHiddenSubID) semanticObject); 
				return; 
			case FormattertestlanguagePackage.SUPPRESSED_HIDDEN_SUB_SUB:
				sequence_SuppressedHiddenSubSub(context, (SuppressedHiddenSubSub) semanticObject); 
				return; 
			case FormattertestlanguagePackage.TEST_INDENTATION:
				sequence_TestIndentation(context, (TestIndentation) semanticObject); 
				return; 
			case FormattertestlanguagePackage.TEST_LINEWRAP:
				sequence_TestLinewrap(context, (TestLinewrap) semanticObject); 
				return; 
			case FormattertestlanguagePackage.TEST_LINEWRAP_MIN_MAX:
				sequence_TestLinewrapMinMax(context, (TestLinewrapMinMax) semanticObject); 
				return; 
			case FormattertestlanguagePackage.WRAPPING_DATA_TYPE_TEST:
				sequence_WrappingDataTypeTest(context, (WrappingDataTypeTest) semanticObject); 
				return; 
			}
		if (errorAcceptor != null) errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * Constraint:
	 *     (var=ID (op='=' | op='+=') (val+=INT val+=INT*)?)
	 */
	protected void sequence_Assign(EObject context, Assign semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (val1=Datatype1 val2=Datatype2 val3=Datatype3)
	 */
	protected void sequence_Datatypes(EObject context, Datatypes semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.DATATYPES__VAL1) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.DATATYPES__VAL1));
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.DATATYPES__VAL2) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.DATATYPES__VAL2));
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.DATATYPES__VAL3) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.DATATYPES__VAL3));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getDatatypesAccess().getVal1Datatype1ParserRuleCall_1_0(), semanticObject.getVal1());
		feeder.accept(grammarAccess.getDatatypesAccess().getVal2Datatype2ParserRuleCall_3_0(), semanticObject.getVal2());
		feeder.accept(grammarAccess.getDatatypesAccess().getVal3Datatype3ParserRuleCall_4_0(), semanticObject.getVal3());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (type+=ID name+=ID)
	 */
	protected void sequence_Decl(EObject context, Decl semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (val+=Enum1+ val+=Enum1*)
	 */
	protected void sequence_Enumeration(EObject context, Enumeration semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     name=FQN
	 */
	protected void sequence_FqnObj(EObject context, FqnObj semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.FQN_OBJ__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.FQN_OBJ__NAME));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getFqnObjAccess().getNameFQNParserRuleCall_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     ref=[FqnObj|FQN]
	 */
	protected void sequence_FqnRef(EObject context, FqnRef semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.FQN_REF__REF) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.FQN_REF__REF));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getFqnRefAccess().getRefFqnObjFQNParserRuleCall_1_0_1(), semanticObject.getRef());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     (name=ID (param+=Param param+=Param*)?)
	 */
	protected void sequence_Meth(EObject context, Meth semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (name+=ID type+=ID)
	 */
	protected void sequence_Param(EObject context, Param semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     val=ID
	 */
	protected void sequence_Space(EObject context, Space semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.SPACE__VAL) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.SPACE__VAL));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getSpaceAccess().getValIDTerminalRuleCall_1_0(), semanticObject.getVal());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     idval=ID
	 */
	protected void sequence_SuppressedHiddenSubID(EObject context, SuppressedHiddenSubID semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.SUPPRESSED_HIDDEN_SUB__IDVAL) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.SUPPRESSED_HIDDEN_SUB__IDVAL));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getSuppressedHiddenSubIDAccess().getIdvalIDTerminalRuleCall_0(), semanticObject.getIdval());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     idval=ID
	 */
	protected void sequence_SuppressedHiddenSubSub(EObject context, SuppressedHiddenSubSub semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.SUPPRESSED_HIDDEN_SUB__IDVAL) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.SUPPRESSED_HIDDEN_SUB__IDVAL));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getSuppressedHiddenSubSubAccess().getIdvalIDTerminalRuleCall_1_0(), semanticObject.getIdval());
		feeder.finish();
	}
	
	
	/**
	 * Constraint:
	 *     ((vals+=SuppressedHiddenSub vals+=SuppressedHiddenSub*)?)
	 */
	protected void sequence_SuppressedHidden(EObject context, SuppressedHidden semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     ((items+=Line | items+=TestIndentation)* semi?=';'?)
	 */
	protected void sequence_TestIndentation(EObject context, TestIndentation semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (items+=Line*)
	 */
	protected void sequence_TestLinewrapMinMax(EObject context, TestLinewrapMinMax semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     (items+=Line*)
	 */
	protected void sequence_TestLinewrap(EObject context, TestLinewrap semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * Constraint:
	 *     datatype=WrappingDataType
	 */
	protected void sequence_WrappingDataTypeTest(EObject context, WrappingDataTypeTest semanticObject) {
		if(errorAcceptor != null) {
			if(transientValues.isValueTransient(semanticObject, FormattertestlanguagePackage.Literals.WRAPPING_DATA_TYPE_TEST__DATATYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, FormattertestlanguagePackage.Literals.WRAPPING_DATA_TYPE_TEST__DATATYPE));
		}
		INodesForEObjectProvider nodes = createNodeProvider(semanticObject);
		SequenceFeeder feeder = createSequencerFeeder(semanticObject, nodes);
		feeder.accept(grammarAccess.getWrappingDataTypeTestAccess().getDatatypeWrappingDataTypeParserRuleCall_1_0(), semanticObject.getDatatype());
		feeder.finish();
	}
}
