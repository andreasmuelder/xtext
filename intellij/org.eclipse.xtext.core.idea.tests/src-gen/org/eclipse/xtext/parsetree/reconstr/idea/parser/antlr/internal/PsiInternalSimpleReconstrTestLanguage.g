/*
 * generated by Xtext
 */
grammar PsiInternalSimpleReconstrTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.parsetree.reconstr.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parsetree.reconstr.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.parsetree.reconstr.idea.lang.SimpleReconstrTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parsetree.reconstr.services.SimpleReconstrTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected SimpleReconstrTestLanguageGrammarAccess grammarAccess;

	protected SimpleReconstrTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalSimpleReconstrTestLanguageParser(PsiBuilder builder, TokenStream input, SimpleReconstrTestLanguageElementTypeProvider elementTypeProvider, SimpleReconstrTestLanguageGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "Op";
	}

}

//Entry rule entryRuleOp
entryRuleOp:
	{ markComposite(elementTypeProvider.getOpElementType()); }
	ruleOp
	EOF;

// Rule Op
ruleOp:
	(
		{
			markComposite(elementTypeProvider.getOp_TermParserRuleCall_0ElementType());
		}
		ruleTerm
		{
			doneComposite();
		}
		(
			(
				{
					precedeComposite(elementTypeProvider.getOp_OpValuesAction_1_0ElementType());
					doneComposite();
				}
			)
			(
				(
					{
						markComposite(elementTypeProvider.getOp_ValuesTermParserRuleCall_1_1_0ElementType());
					}
					lv_values_2_0=ruleTerm
					{
						doneComposite();
					}
				)
			)
		)*
	)
;

//Entry rule entryRuleTerm
entryRuleTerm:
	{ markComposite(elementTypeProvider.getTermElementType()); }
	ruleTerm
	EOF;

// Rule Term
ruleTerm:
	(
		{
			markComposite(elementTypeProvider.getTerm_AtomParserRuleCall_0ElementType());
		}
		ruleAtom
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_TwoNumbersParserRuleCall_1ElementType());
		}
		ruleTwoNumbers
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_ManyStringsParserRuleCall_2ElementType());
		}
		ruleManyStrings
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_TypeParserRuleCall_3ElementType());
		}
		ruleType
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Ref2ParserRuleCall_4ElementType());
		}
		ruleRef2
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_SpareParserRuleCall_5ElementType());
		}
		ruleSpare
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_BooleanParserRuleCall_6ElementType());
		}
		ruleBoolean
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Transient1ParserRuleCall_7ElementType());
		}
		ruleTransient1
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Consumed1ParserRuleCall_8ElementType());
		}
		ruleConsumed1
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Consumed2ParserRuleCall_9ElementType());
		}
		ruleConsumed2
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Loop1ParserRuleCall_10ElementType());
		}
		ruleLoop1
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Loop2ParserRuleCall_11ElementType());
		}
		ruleLoop2
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Loop3ParserRuleCall_12ElementType());
		}
		ruleLoop3
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Loop4ParserRuleCall_13ElementType());
		}
		ruleLoop4
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_LoopBug285452ParserRuleCall_14ElementType());
		}
		ruleLoopBug285452
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_DuplicateBug284491ParserRuleCall_15ElementType());
		}
		ruleDuplicateBug284491
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_EmptyObjectBug284850ParserRuleCall_16ElementType());
		}
		ruleEmptyObjectBug284850
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_MultiInheritanceBug280439ParserRuleCall_17ElementType());
		}
		ruleMultiInheritanceBug280439
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_EObjectRefParserRuleCall_18ElementType());
		}
		ruleEObjectRef
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_TypeBug305577_1ParserRuleCall_19ElementType());
		}
		ruleTypeBug305577_1
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_TypeBug305577_2ParserRuleCall_20ElementType());
		}
		ruleTypeBug305577_2
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_ParensParserRuleCall_21ElementType());
		}
		ruleParens
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Bug305171ParserRuleCall_22ElementType());
		}
		ruleBug305171
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Bug310435ValParserRuleCall_23ElementType());
		}
		ruleBug310435Val
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_Bug310435EnumParserRuleCall_24ElementType());
		}
		ruleBug310435Enum
		{
			doneComposite();
		}
		    |
		{
			markComposite(elementTypeProvider.getTerm_CrossRefNameTestParserRuleCall_25ElementType());
		}
		ruleCrossRefNameTest
		{
			doneComposite();
		}
	)
;

//Entry rule entryRuleAtom
entryRuleAtom:
	{ markComposite(elementTypeProvider.getAtomElementType()); }
	ruleAtom
	EOF;

// Rule Atom
ruleAtom:
	(
		(
			{
				markLeaf(elementTypeProvider.getAtom_NameIDTerminalRuleCall_0ElementType());
			}
			lv_name_0_0=RULE_ID
			{
				doneLeaf(lv_name_0_0);
			}
		)
	)
;

//Entry rule entryRuleParens
entryRuleParens:
	{ markComposite(elementTypeProvider.getParensElementType()); }
	ruleParens
	EOF;

// Rule Parens
ruleParens:
	(
		{
			markLeaf(elementTypeProvider.getParens_LeftParenthesisKeyword_0ElementType());
		}
		otherlv_0='('
		{
			doneLeaf(otherlv_0);
		}
		{
			markComposite(elementTypeProvider.getParens_OpParserRuleCall_1ElementType());
		}
		ruleOp
		{
			doneComposite();
		}
		{
			markLeaf(elementTypeProvider.getParens_RightParenthesisKeyword_2ElementType());
		}
		otherlv_2=')'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getParens_EmExclamationMarkKeyword_3_0ElementType());
				}
				lv_em_3_0='!'
				{
					doneLeaf(lv_em_3_0);
				}
			)
		)?
	)
;

//Entry rule entryRuleTwoNumbers
entryRuleTwoNumbers:
	{ markComposite(elementTypeProvider.getTwoNumbersElementType()); }
	ruleTwoNumbers
	EOF;

// Rule TwoNumbers
ruleTwoNumbers:
	(
		(
			(
				{
					markLeaf(elementTypeProvider.getTwoNumbers_Num1INTTerminalRuleCall_0_0ElementType());
				}
				lv_num1_0_0=RULE_INT
				{
					doneLeaf(lv_num1_0_0);
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getTwoNumbers_Num2INTTerminalRuleCall_1_0ElementType());
				}
				lv_num2_1_0=RULE_INT
				{
					doneLeaf(lv_num2_1_0);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getTwoNumbers_NumberSignKeyword_2_0ElementType());
			}
			otherlv_2='#'
			{
				doneLeaf(otherlv_2);
			}
			(
				(
					{
						markLeaf(elementTypeProvider.getTwoNumbers_Num3INTTerminalRuleCall_2_1_0ElementType());
					}
					lv_num3_3_0=RULE_INT
					{
						doneLeaf(lv_num3_3_0);
					}
				)
			)
		)*
	)
;

//Entry rule entryRuleManyStrings
entryRuleManyStrings:
	{ markComposite(elementTypeProvider.getManyStringsElementType()); }
	ruleManyStrings
	EOF;

// Rule ManyStrings
ruleManyStrings:
	(
		{
			markLeaf(elementTypeProvider.getManyStrings_EqualsSignKeyword_0ElementType());
		}
		otherlv_0='='
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getManyStrings_Str1STRINGTerminalRuleCall_1_0ElementType());
				}
				lv_str1_1_0=RULE_STRING
				{
					doneLeaf(lv_str1_1_0);
				}
			)
		)*
		(
			(
				{
					markLeaf(elementTypeProvider.getManyStrings_Str2STRINGTerminalRuleCall_2_0ElementType());
				}
				lv_str2_2_0=RULE_STRING
				{
					doneLeaf(lv_str2_2_0);
				}
			)
		)
	)
;

//Entry rule entryRuleType
entryRuleType:
	{ markComposite(elementTypeProvider.getTypeElementType()); }
	ruleType
	EOF;

// Rule Type
ruleType:
	(
		{
			markLeaf(elementTypeProvider.getType_TypeKeyword_0ElementType());
		}
		otherlv_0='type'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getType_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getType_ExtendsKeyword_2ElementType());
		}
		otherlv_2='extends'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getType_ExtendsTypeCrossReference_3_0ElementType());
				}
				otherlv_3=RULE_ID
				{
					doneLeaf(otherlv_3);
				}
			)
		)
	)
;

//Entry rule entryRuleRef2
entryRuleRef2:
	{ markComposite(elementTypeProvider.getRef2ElementType()); }
	ruleRef2
	EOF;

// Rule Ref2
ruleRef2:
	(
		{
			markLeaf(elementTypeProvider.getRef2_NumberSignDigitTwoKeyword_0ElementType());
		}
		otherlv_0='#2'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				(
					{
						markLeaf(elementTypeProvider.getRef2_Ref2Mykeyword1Keyword_1_0_0ElementType());
					}
					lv_ref2_1_1='mykeyword1'
					{
						doneLeaf(lv_ref2_1_1);
					}
					    |
					{
						markLeaf(elementTypeProvider.getRef2_Ref2STRINGTerminalRuleCall_1_0_1ElementType());
					}
					lv_ref2_1_2=RULE_STRING
					{
						doneLeaf(lv_ref2_1_2);
					}
					    |
					{
						markLeaf(elementTypeProvider.getRef2_Ref2Mykeyword2Keyword_1_0_2ElementType());
					}
					lv_ref2_1_3='mykeyword2'
					{
						doneLeaf(lv_ref2_1_3);
					}
				)
			)
		)
	)
;

//Entry rule entryRuleSpare
entryRuleSpare:
	{ markComposite(elementTypeProvider.getSpareElementType()); }
	ruleSpare
	EOF;

// Rule Spare
ruleSpare:
	(
		{
			markLeaf(elementTypeProvider.getSpare_NumberSignDigitThreeKeyword_0ElementType());
		}
		otherlv_0='#3'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getSpare_IdIDTerminalRuleCall_1_0ElementType());
				}
				lv_id_1_0=RULE_ID
				{
					doneLeaf(lv_id_1_0);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getSpare_FullStopKeyword_2_0ElementType());
			}
			otherlv_2='.'
			{
				doneLeaf(otherlv_2);
			}
			(
				(
					{
						markLeaf(elementTypeProvider.getSpare_IdIDTerminalRuleCall_2_1_0ElementType());
					}
					lv_id_3_0=RULE_ID
					{
						doneLeaf(lv_id_3_0);
					}
				)
			)
		)*
	)
;

//Entry rule entryRuleBoolean
entryRuleBoolean:
	{ markComposite(elementTypeProvider.getBooleanElementType()); }
	ruleBoolean
	EOF;

// Rule Boolean
ruleBoolean:
	(
		{
			markLeaf(elementTypeProvider.getBoolean_NumberSignDigitFourKeyword_0ElementType());
		}
		otherlv_0='#4'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getBoolean_BoolMyoptionKeyword_1_0ElementType());
				}
				lv_bool_1_0='myoption'
				{
					doneLeaf(lv_bool_1_0);
				}
			)
		)?
		{
			markLeaf(elementTypeProvider.getBoolean_KwKeyword_2ElementType());
		}
		otherlv_2='kw'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getBoolean_ValueIDTerminalRuleCall_3_0ElementType());
				}
				lv_value_3_0=RULE_ID
				{
					doneLeaf(lv_value_3_0);
				}
			)
		)
	)
;

//Entry rule entryRuleTransient1
entryRuleTransient1:
	{ markComposite(elementTypeProvider.getTransient1ElementType()); }
	ruleTransient1
	EOF;

// Rule Transient1
ruleTransient1:
	(
		{
			markLeaf(elementTypeProvider.getTransient1_NumberSignDigitFiveKeyword_0ElementType());
		}
		otherlv_0='#5'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				(
					{
						markLeaf(elementTypeProvider.getTransient1_PrecStarAsteriskKeyword_1_0_0ElementType());
					}
					lv_precStar_1_0='*'
					{
						doneLeaf(lv_precStar_1_0);
					}
				)
			)
			    |
			(
				(
					{
						markLeaf(elementTypeProvider.getTransient1_PrecINTTerminalRuleCall_1_1_0ElementType());
					}
					lv_prec_2_0=RULE_INT
					{
						doneLeaf(lv_prec_2_0);
					}
				)
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getTransient1_CommaKeyword_2_0ElementType());
			}
			otherlv_3=','
			{
				doneLeaf(otherlv_3);
			}
			(
				(
					(
						{
							markLeaf(elementTypeProvider.getTransient1_ScaleStarAsteriskKeyword_2_1_0_0ElementType());
						}
						lv_scaleStar_4_0='*'
						{
							doneLeaf(lv_scaleStar_4_0);
						}
					)
				)
				    |
				(
					(
						{
							markLeaf(elementTypeProvider.getTransient1_ScaleINTTerminalRuleCall_2_1_1_0ElementType());
						}
						lv_scale_5_0=RULE_INT
						{
							doneLeaf(lv_scale_5_0);
						}
					)
				)
			)
		)?
	)
;

//Entry rule entryRuleConsumed1
entryRuleConsumed1:
	{ markComposite(elementTypeProvider.getConsumed1ElementType()); }
	ruleConsumed1
	EOF;

// Rule Consumed1
ruleConsumed1:
	(
		{
			markLeaf(elementTypeProvider.getConsumed1_NumberSignDigitSixKeyword_0ElementType());
		}
		otherlv_0='#6'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getConsumed1_V1Keyword_1_0_0ElementType());
				}
				otherlv_1='v1'
				{
					doneLeaf(otherlv_1);
				}
				(
					(
						{
							markLeaf(elementTypeProvider.getConsumed1_V1INTTerminalRuleCall_1_0_1_0ElementType());
						}
						lv_v1_2_0=RULE_INT
						{
							doneLeaf(lv_v1_2_0);
						}
					)
				)*
				(
					(
						{
							markLeaf(elementTypeProvider.getConsumed1_V2IDTerminalRuleCall_1_0_2_0ElementType());
						}
						lv_v2_3_0=RULE_ID
						{
							doneLeaf(lv_v2_3_0);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getConsumed1_V2Keyword_1_1_0ElementType());
				}
				otherlv_4='v2'
				{
					doneLeaf(otherlv_4);
				}
				(
					(
						{
							markLeaf(elementTypeProvider.getConsumed1_V2IDTerminalRuleCall_1_1_1_0ElementType());
						}
						lv_v2_5_0=RULE_ID
						{
							doneLeaf(lv_v2_5_0);
						}
					)
				)*
				(
					(
						{
							markLeaf(elementTypeProvider.getConsumed1_V1INTTerminalRuleCall_1_1_2_0ElementType());
						}
						lv_v1_6_0=RULE_INT
						{
							doneLeaf(lv_v1_6_0);
						}
					)
				)
			)
		)
	)
;

//Entry rule entryRuleConsumed2
entryRuleConsumed2:
	{ markComposite(elementTypeProvider.getConsumed2ElementType()); }
	ruleConsumed2
	EOF;

// Rule Consumed2
ruleConsumed2:
	(
		{
			markLeaf(elementTypeProvider.getConsumed2_NumberSignDigitSevenKeyword_0ElementType());
		}
		otherlv_0='#7'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getConsumed2_ChildConsumed1ParserRuleCall_1_0ElementType());
				}
				lv_child_1_0=ruleConsumed1
				{
					doneComposite();
				}
			)
		)
	)
;

//Entry rule entryRuleLoop1
entryRuleLoop1:
	{ markComposite(elementTypeProvider.getLoop1ElementType()); }
	ruleLoop1
	EOF;

// Rule Loop1
ruleLoop1:
	(
		(
			{
				markLeaf(elementTypeProvider.getLoop1_Kw0Keyword_0ElementType());
			}
			otherlv_0='kw0'
			{
				doneLeaf(otherlv_0);
			}
		)?
		{
			markLeaf(elementTypeProvider.getLoop1_NumberSignDigitEightKeyword_1ElementType());
		}
		otherlv_1='#8'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getLoop1_IdIDTerminalRuleCall_2_0ElementType());
				}
				lv_id_2_0=RULE_ID
				{
					doneLeaf(lv_id_2_0);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getLoop1_Kw1Keyword_3ElementType());
			}
			otherlv_3='kw1'
			{
				doneLeaf(otherlv_3);
			}
		)?
		(
			(
				{
					markLeaf(elementTypeProvider.getLoop1_IdIDTerminalRuleCall_4_0ElementType());
				}
				lv_id_4_0=RULE_ID
				{
					doneLeaf(lv_id_4_0);
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getLoop1_Kw2Keyword_5_0ElementType());
				}
				otherlv_5='kw2'
				{
					doneLeaf(otherlv_5);
				}
			)*
			{
				markLeaf(elementTypeProvider.getLoop1_Kw30Keyword_5_1ElementType());
			}
			otherlv_6='kw30'
			{
				doneLeaf(otherlv_6);
			}
		)+
	)
;

//Entry rule entryRuleLoop2
entryRuleLoop2:
	{ markComposite(elementTypeProvider.getLoop2ElementType()); }
	ruleLoop2
	EOF;

// Rule Loop2
ruleLoop2:
	(
		{
			markLeaf(elementTypeProvider.getLoop2_NumberSignDigitNineKeyword_0ElementType());
		}
		otherlv_0='#9'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getLoop2_IdIDTerminalRuleCall_1_0ElementType());
				}
				lv_id_1_0=RULE_ID
				{
					doneLeaf(lv_id_1_0);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getLoop2_Kw1Keyword_2_0ElementType());
			}
			otherlv_2='kw1'
			{
				doneLeaf(otherlv_2);
			}
			    |
			(
				(
					(
						{
							markLeaf(elementTypeProvider.getLoop2_IdIDTerminalRuleCall_2_1_0_0ElementType());
						}
						lv_id_3_0=RULE_ID
						{
							doneLeaf(lv_id_3_0);
						}
					)
				)
				{
					markLeaf(elementTypeProvider.getLoop2_Kw2Keyword_2_1_1ElementType());
				}
				otherlv_4='kw2'
				{
					doneLeaf(otherlv_4);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getLoop2_Kw3Keyword_3_0ElementType());
			}
			otherlv_5='kw3'
			{
				doneLeaf(otherlv_5);
			}
			    |
			(
				(
					(
						{
							markLeaf(elementTypeProvider.getLoop2_IdIDTerminalRuleCall_3_1_0_0ElementType());
						}
						lv_id_6_0=RULE_ID
						{
							doneLeaf(lv_id_6_0);
						}
					)
				)
				{
					markLeaf(elementTypeProvider.getLoop2_Kw4Keyword_3_1_1ElementType());
				}
				otherlv_7='kw4'
				{
					doneLeaf(otherlv_7);
				}
			)
		)?
		(
			{
				markLeaf(elementTypeProvider.getLoop2_Kw5Keyword_4_0ElementType());
			}
			otherlv_8='kw5'
			{
				doneLeaf(otherlv_8);
			}
			    |
			{
				markLeaf(elementTypeProvider.getLoop2_Kw6Keyword_4_1ElementType());
			}
			otherlv_9='kw6'
			{
				doneLeaf(otherlv_9);
			}
		)
	)
;

//Entry rule entryRuleLoop3
entryRuleLoop3:
	{ markComposite(elementTypeProvider.getLoop3ElementType()); }
	ruleLoop3
	EOF;

// Rule Loop3
ruleLoop3:
	(
		(
			{
				markLeaf(elementTypeProvider.getLoop3_Kw1Keyword_0_0ElementType());
			}
			otherlv_0='kw1'
			{
				doneLeaf(otherlv_0);
			}
			    |
			{
				markLeaf(elementTypeProvider.getLoop3_Kw2Keyword_0_1ElementType());
			}
			otherlv_1='kw2'
			{
				doneLeaf(otherlv_1);
			}
			    |
			{
				markLeaf(elementTypeProvider.getLoop3_Kw3Keyword_0_2ElementType());
			}
			otherlv_2='kw3'
			{
				doneLeaf(otherlv_2);
			}
		)
		{
			markLeaf(elementTypeProvider.getLoop3_NumberSignDigitOneDigitZeroKeyword_1ElementType());
		}
		otherlv_3='#10'
		{
			doneLeaf(otherlv_3);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getLoop3_IdIDTerminalRuleCall_2_0ElementType());
				}
				lv_id_4_0=RULE_ID
				{
					doneLeaf(lv_id_4_0);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getLoop3_Kw4Keyword_3_0ElementType());
			}
			otherlv_5='kw4'
			{
				doneLeaf(otherlv_5);
			}
			(
				(
					{
						markLeaf(elementTypeProvider.getLoop3_IdIDTerminalRuleCall_3_1_0ElementType());
					}
					lv_id_6_0=RULE_ID
					{
						doneLeaf(lv_id_6_0);
					}
				)
			)
			{
				markLeaf(elementTypeProvider.getLoop3_Kw5Keyword_3_2ElementType());
			}
			otherlv_7='kw5'
			{
				doneLeaf(otherlv_7);
			}
		)*
	)
;

//Entry rule entryRuleLoop4
entryRuleLoop4:
	{ markComposite(elementTypeProvider.getLoop4ElementType()); }
	ruleLoop4
	EOF;

// Rule Loop4
ruleLoop4:
	(
		{
			markLeaf(elementTypeProvider.getLoop4_NumberSignDigitOneDigitOneKeyword_0ElementType());
		}
		otherlv_0='#11'
		{
			doneLeaf(otherlv_0);
		}
		(
			{
				markLeaf(elementTypeProvider.getLoop4_Kw1Keyword_1_0ElementType());
			}
			otherlv_1='kw1'
			{
				doneLeaf(otherlv_1);
			}
			    |
			{
				markLeaf(elementTypeProvider.getLoop4_Kw2Keyword_1_1ElementType());
			}
			otherlv_2='kw2'
			{
				doneLeaf(otherlv_2);
			}
			    |
			(
				{
					markLeaf(elementTypeProvider.getLoop4_Kw3Keyword_1_2_0ElementType());
				}
				otherlv_3='kw3'
				{
					doneLeaf(otherlv_3);
				}
				{
					markLeaf(elementTypeProvider.getLoop4_Kw4Keyword_1_2_1ElementType());
				}
				otherlv_4='kw4'
				{
					doneLeaf(otherlv_4);
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getLoop4_IdIDTerminalRuleCall_2_0ElementType());
				}
				lv_id_5_0=RULE_ID
				{
					doneLeaf(lv_id_5_0);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getLoop4_Kw5Keyword_3_0ElementType());
			}
			otherlv_6='kw5'
			{
				doneLeaf(otherlv_6);
			}
			(
				{
					markLeaf(elementTypeProvider.getLoop4_Kw6Keyword_3_1_0ElementType());
				}
				otherlv_7='kw6'
				{
					doneLeaf(otherlv_7);
				}
				(
					{
						markLeaf(elementTypeProvider.getLoop4_Kw7Keyword_3_1_1ElementType());
					}
					otherlv_8='kw7'
					{
						doneLeaf(otherlv_8);
					}
				)?
			)?
		)+
	)
;

//Entry rule entryRuleLoopBug285452
entryRuleLoopBug285452:
	{ markComposite(elementTypeProvider.getLoopBug285452ElementType()); }
	ruleLoopBug285452
	EOF;

// Rule LoopBug285452
ruleLoopBug285452:
	(
		{
			markLeaf(elementTypeProvider.getLoopBug285452_NumberSignDigitOneDigitTwoKeyword_0ElementType());
		}
		otherlv_0='#12'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				(
					{
						markLeaf(elementTypeProvider.getLoopBug285452_InterfaceInterfaceKeyword_1_0_0ElementType());
					}
					lv_interface_1_0='interface'
					{
						doneLeaf(lv_interface_1_0);
					}
				)
			)
			    |
			{
				markLeaf(elementTypeProvider.getLoopBug285452_ClassKeyword_1_1ElementType());
			}
			otherlv_2='class'
			{
				doneLeaf(otherlv_2);
			}
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getLoopBug285452_NameIDTerminalRuleCall_2_0ElementType());
				}
				lv_name_3_0=RULE_ID
				{
					doneLeaf(lv_name_3_0);
				}
			)
		)
	)
;

//Entry rule entryRuleDuplicateBug284491
entryRuleDuplicateBug284491:
	{ markComposite(elementTypeProvider.getDuplicateBug284491ElementType()); }
	ruleDuplicateBug284491
	EOF;

// Rule DuplicateBug284491
ruleDuplicateBug284491:
	(
		{
			markLeaf(elementTypeProvider.getDuplicateBug284491_NumberSignDigitOneDigitThreeKeyword_0ElementType());
		}
		otherlv_0='#13'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				(
					{
						markLeaf(elementTypeProvider.getDuplicateBug284491_StaticStaticKeyword_1_0_0ElementType());
					}
					lv_static_1_0='static'
					{
						doneLeaf(lv_static_1_0);
					}
				)
			)
			    |
			(
				(
					{
						markLeaf(elementTypeProvider.getDuplicateBug284491_FinalFinalKeyword_1_1_0ElementType());
					}
					lv_final_2_0='final'
					{
						doneLeaf(lv_final_2_0);
					}
				)
			)
			    |
			(
				(
					{
						markLeaf(elementTypeProvider.getDuplicateBug284491_TransientTransientKeyword_1_2_0ElementType());
					}
					lv_transient_3_0='transient'
					{
						doneLeaf(lv_transient_3_0);
					}
				)
			)
		)*
	)
;

//Entry rule entryRuleEmptyObjectBug284850
entryRuleEmptyObjectBug284850:
	{ markComposite(elementTypeProvider.getEmptyObjectBug284850ElementType()); }
	ruleEmptyObjectBug284850
	EOF;

// Rule EmptyObjectBug284850
ruleEmptyObjectBug284850:
	(
		{
			markLeaf(elementTypeProvider.getEmptyObjectBug284850_NumberSignDigitOneDigitFourKeyword_0ElementType());
		}
		otherlv_0='#14'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getEmptyObjectBug284850_ItemsEmptyObjectItemsParserRuleCall_1_0ElementType());
				}
				lv_items_1_0=ruleEmptyObjectItems
				{
					doneComposite();
				}
			)
		)
	)
;

//Entry rule entryRuleEmptyObjectItems
entryRuleEmptyObjectItems:
	{ markComposite(elementTypeProvider.getEmptyObjectItemsElementType()); }
	ruleEmptyObjectItems
	EOF;

// Rule EmptyObjectItems
ruleEmptyObjectItems:
	(
		(
			{
				markComposite(elementTypeProvider.getEmptyObjectItems_ListEmptyObjectItemParserRuleCall_0ElementType());
			}
			lv_list_0_0=ruleEmptyObjectItem
			{
				doneComposite();
			}
		)
	)*
;

//Entry rule entryRuleEmptyObjectItem
entryRuleEmptyObjectItem:
	{ markComposite(elementTypeProvider.getEmptyObjectItemElementType()); }
	ruleEmptyObjectItem
	EOF;

// Rule EmptyObjectItem
ruleEmptyObjectItem:
	(
		{
			markLeaf(elementTypeProvider.getEmptyObjectItem_ItemKeyword_0ElementType());
		}
		otherlv_0='item'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getEmptyObjectItem_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
	)
;

//Entry rule entryRuleMultiInheritanceBug280439
entryRuleMultiInheritanceBug280439:
	{ markComposite(elementTypeProvider.getMultiInheritanceBug280439ElementType()); }
	ruleMultiInheritanceBug280439
	EOF;

// Rule MultiInheritanceBug280439
ruleMultiInheritanceBug280439:
	(
		{
			markLeaf(elementTypeProvider.getMultiInheritanceBug280439_NumberSignDigitOneDigitFiveKeyword_0ElementType());
		}
		otherlv_0='#15'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getMultiInheritanceBug280439_ValConcreteMultiParserRuleCall_1_0ElementType());
				}
				lv_val_1_0=ruleConcreteMulti
				{
					doneComposite();
				}
			)
		)
	)
;

//Entry rule entryRuleConcreteMulti
entryRuleConcreteMulti:
	{ markComposite(elementTypeProvider.getConcreteMultiElementType()); }
	ruleConcreteMulti
	EOF;

// Rule ConcreteMulti
ruleConcreteMulti:
	(
		(
			(
				{
					markLeaf(elementTypeProvider.getConcreteMulti_M1IDTerminalRuleCall_0_0ElementType());
				}
				lv_m1_0_0=RULE_ID
				{
					doneLeaf(lv_m1_0_0);
				}
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getConcreteMulti_M2IDTerminalRuleCall_1_0ElementType());
				}
				lv_m2_1_0=RULE_ID
				{
					doneLeaf(lv_m2_1_0);
				}
			)
		)
	)
;

//Entry rule entryRuleEObjectRef
entryRuleEObjectRef:
	{ markComposite(elementTypeProvider.getEObjectRefElementType()); }
	ruleEObjectRef
	EOF;

// Rule EObjectRef
ruleEObjectRef:
	(
		{
			markLeaf(elementTypeProvider.getEObjectRef_NumberSignDigitOneDigitSixKeyword_0ElementType());
		}
		otherlv_0='#16'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getEObjectRef_ObjEObjectElementParserRuleCall_1_0ElementType());
				}
				lv_obj_1_0=ruleEObjectElement
				{
					doneComposite();
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getEObjectRef_RefsKeyword_2ElementType());
		}
		otherlv_2='refs'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getEObjectRef_RefEObjectCrossReference_3_0ElementType());
				}
				otherlv_3=RULE_ID
				{
					doneLeaf(otherlv_3);
				}
			)
		)
	)
;

//Entry rule entryRuleEObjectElement
entryRuleEObjectElement:
	{ markComposite(elementTypeProvider.getEObjectElementElementType()); }
	ruleEObjectElement
	EOF;

// Rule EObjectElement
ruleEObjectElement:
	(
		(
			{
				markLeaf(elementTypeProvider.getEObjectElement_NameIDTerminalRuleCall_0ElementType());
			}
			lv_name_0_0=RULE_ID
			{
				doneLeaf(lv_name_0_0);
			}
		)
	)
;

//Entry rule entryRuleTypeBug305577_1
entryRuleTypeBug305577_1:
	{ markComposite(elementTypeProvider.getTypeBug305577_1ElementType()); }
	ruleTypeBug305577_1
	EOF;

// Rule TypeBug305577_1
ruleTypeBug305577_1:
	(
		{
			markLeaf(elementTypeProvider.getTypeBug305577_1_NumberSignDigitOneDigitSevenKeyword_0ElementType());
		}
		otherlv_0='#17'
		{
			doneLeaf(otherlv_0);
		}
		(
			{
				markComposite(elementTypeProvider.getTypeBug305577_1_TypeBug1AParserRuleCall_1_0ElementType());
			}
			ruleTypeBug1A
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getTypeBug305577_1_TypeBug1BParserRuleCall_1_1ElementType());
			}
			ruleTypeBug1B
			{
				doneComposite();
			}
		)
	)
;

//Entry rule entryRuleTypeBug305577_2
entryRuleTypeBug305577_2:
	{ markComposite(elementTypeProvider.getTypeBug305577_2ElementType()); }
	ruleTypeBug305577_2
	EOF;

// Rule TypeBug305577_2
ruleTypeBug305577_2:
	(
		{
			markLeaf(elementTypeProvider.getTypeBug305577_2_NumberSignDigitOneDigitEightKeyword_0ElementType());
		}
		otherlv_0='#18'
		{
			doneLeaf(otherlv_0);
		}
		(
			{
				markComposite(elementTypeProvider.getTypeBug305577_2_TypeBug2BParserRuleCall_1_0ElementType());
			}
			ruleTypeBug2B
			{
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getTypeBug305577_2_TypeBug2AParserRuleCall_1_1ElementType());
			}
			ruleTypeBug2A
			{
				doneComposite();
			}
		)
	)
;

//Entry rule entryRuleTypeBug1A
entryRuleTypeBug1A:
	{ markComposite(elementTypeProvider.getTypeBug1AElementType()); }
	ruleTypeBug1A
	EOF;

// Rule TypeBug1A
ruleTypeBug1A:
	(
		(
			{
				precedeComposite(elementTypeProvider.getTypeBug1A_TypeBug1AAction_0ElementType());
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getTypeBug1A_KaKeyword_1ElementType());
		}
		otherlv_1='ka'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getTypeBug1A_NameIDTerminalRuleCall_2_0ElementType());
				}
				lv_name_2_0=RULE_ID
				{
					doneLeaf(lv_name_2_0);
				}
			)
		)
	)
;

//Entry rule entryRuleTypeBug1B
entryRuleTypeBug1B:
	{ markComposite(elementTypeProvider.getTypeBug1BElementType()); }
	ruleTypeBug1B
	EOF;

// Rule TypeBug1B
ruleTypeBug1B:
	(
		(
			{
				precedeComposite(elementTypeProvider.getTypeBug1B_TypeBug1BAction_0ElementType());
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getTypeBug1B_KbKeyword_1ElementType());
		}
		otherlv_1='kb'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getTypeBug1B_NameIDTerminalRuleCall_2_0ElementType());
				}
				lv_name_2_0=RULE_ID
				{
					doneLeaf(lv_name_2_0);
				}
			)
		)
	)
;

//Entry rule entryRuleTypeBug2A
entryRuleTypeBug2A:
	{ markComposite(elementTypeProvider.getTypeBug2AElementType()); }
	ruleTypeBug2A
	EOF;

// Rule TypeBug2A
ruleTypeBug2A:
	(
		(
			{
				precedeComposite(elementTypeProvider.getTypeBug2A_TypeBug2AAction_0ElementType());
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getTypeBug2A_KaKeyword_1ElementType());
		}
		otherlv_1='ka'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getTypeBug2A_NameIDTerminalRuleCall_2_0ElementType());
				}
				lv_name_2_0=RULE_ID
				{
					doneLeaf(lv_name_2_0);
				}
			)
		)
	)
;

//Entry rule entryRuleTypeBug2B
entryRuleTypeBug2B:
	{ markComposite(elementTypeProvider.getTypeBug2BElementType()); }
	ruleTypeBug2B
	EOF;

// Rule TypeBug2B
ruleTypeBug2B:
	(
		(
			{
				precedeComposite(elementTypeProvider.getTypeBug2B_TypeBug2BAction_0ElementType());
				doneComposite();
			}
		)
		{
			markLeaf(elementTypeProvider.getTypeBug2B_KbKeyword_1ElementType());
		}
		otherlv_1='kb'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getTypeBug2B_NameIDTerminalRuleCall_2_0ElementType());
				}
				lv_name_2_0=RULE_ID
				{
					doneLeaf(lv_name_2_0);
				}
			)
		)
	)
;

//Entry rule entryRuleBug305171
entryRuleBug305171:
	{ markComposite(elementTypeProvider.getBug305171ElementType()); }
	ruleBug305171
	EOF;

// Rule Bug305171
ruleBug305171:
	(
		{
			markLeaf(elementTypeProvider.getBug305171_NumberSignDigitOneDigitNineKeyword_0ElementType());
		}
		otherlv_0='#19'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getBug305171_KxKeyword_1_0_0ElementType());
				}
				otherlv_1='kx'
				{
					doneLeaf(otherlv_1);
				}
				(
					(
						{
							markLeaf(elementTypeProvider.getBug305171_XIDTerminalRuleCall_1_0_1_0ElementType());
						}
						lv_x_2_0=RULE_ID
						{
							doneLeaf(lv_x_2_0);
						}
					)
				)
				(
					{
						markLeaf(elementTypeProvider.getBug305171_CommaKeyword_1_0_2_0ElementType());
					}
					otherlv_3=','
					{
						doneLeaf(otherlv_3);
					}
					(
						(
							{
								markLeaf(elementTypeProvider.getBug305171_XIDTerminalRuleCall_1_0_2_1_0ElementType());
							}
							lv_x_4_0=RULE_ID
							{
								doneLeaf(lv_x_4_0);
							}
						)
					)
				)*
			)?
			(
				(
					{
						markLeaf(elementTypeProvider.getBug305171_KyKeyword_1_1_0_0ElementType());
					}
					otherlv_5='ky'
					{
						doneLeaf(otherlv_5);
					}
					(
						(
							{
								markLeaf(elementTypeProvider.getBug305171_YIDTerminalRuleCall_1_1_0_1_0ElementType());
							}
							lv_y_6_0=RULE_ID
							{
								doneLeaf(lv_y_6_0);
							}
						)
					)
					(
						{
							markLeaf(elementTypeProvider.getBug305171_CommaKeyword_1_1_0_2_0ElementType());
						}
						otherlv_7=','
						{
							doneLeaf(otherlv_7);
						}
						(
							(
								{
									markLeaf(elementTypeProvider.getBug305171_YIDTerminalRuleCall_1_1_0_2_1_0ElementType());
								}
								lv_y_8_0=RULE_ID
								{
									doneLeaf(lv_y_8_0);
								}
							)
						)
					)*
				)?
				(
					{
						markLeaf(elementTypeProvider.getBug305171_KzKeyword_1_1_1_0ElementType());
					}
					otherlv_9='kz'
					{
						doneLeaf(otherlv_9);
					}
					(
						(
							{
								markLeaf(elementTypeProvider.getBug305171_ZIDTerminalRuleCall_1_1_1_1_0ElementType());
							}
							lv_z_10_0=RULE_ID
							{
								doneLeaf(lv_z_10_0);
							}
						)
					)
					(
						{
							markLeaf(elementTypeProvider.getBug305171_CommaKeyword_1_1_1_2_0ElementType());
						}
						otherlv_11=','
						{
							doneLeaf(otherlv_11);
						}
						(
							(
								{
									markLeaf(elementTypeProvider.getBug305171_ZIDTerminalRuleCall_1_1_1_2_1_0ElementType());
								}
								lv_z_12_0=RULE_ID
								{
									doneLeaf(lv_z_12_0);
								}
							)
						)
					)*
				)?
			)
		)
		(
			(
				{
					markLeaf(elementTypeProvider.getBug305171_NameIDTerminalRuleCall_2_0ElementType());
				}
				lv_name_13_0=RULE_ID
				{
					doneLeaf(lv_name_13_0);
				}
			)
		)
	)
;

//Entry rule entryRuleBug310435Enum
entryRuleBug310435Enum:
	{ markComposite(elementTypeProvider.getBug310435EnumElementType()); }
	ruleBug310435Enum
	EOF;

// Rule Bug310435Enum
ruleBug310435Enum:
	(
		{
			markLeaf(elementTypeProvider.getBug310435Enum_NumberSignDigitTwoDigitZeroKeyword_0ElementType());
		}
		otherlv_0='#20'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getBug310435Enum_Kw1Keyword_1_0_0ElementType());
				}
				otherlv_1='kw1'
				{
					doneLeaf(otherlv_1);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getBug310435Enum_LitsEnumBug310435Lit1EnumRuleCall_1_0_1_0ElementType());
						}
						lv_lits_2_0=ruleEnumBug310435Lit1
						{
							doneComposite();
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getBug310435Enum_Kw2Keyword_1_1_0ElementType());
				}
				otherlv_3='kw2'
				{
					doneLeaf(otherlv_3);
				}
				(
					(
						{
							markComposite(elementTypeProvider.getBug310435Enum_LitsEnumBug310435Lit2EnumRuleCall_1_1_1_0ElementType());
						}
						lv_lits_4_0=ruleEnumBug310435Lit2
						{
							doneComposite();
						}
					)
				)
			)
		)*
	)
;

//Entry rule entryRuleBug310435Val
entryRuleBug310435Val:
	{ markComposite(elementTypeProvider.getBug310435ValElementType()); }
	ruleBug310435Val
	EOF;

// Rule Bug310435Val
ruleBug310435Val:
	(
		{
			markLeaf(elementTypeProvider.getBug310435Val_NumberSignDigitTwoDigitOneKeyword_0ElementType());
		}
		otherlv_0='#21'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getBug310435Val_Kw1Keyword_1_0_0ElementType());
				}
				otherlv_1='kw1'
				{
					doneLeaf(otherlv_1);
				}
				(
					(
						{
							markLeaf(elementTypeProvider.getBug310435Val_LitsIDTerminalRuleCall_1_0_1_0ElementType());
						}
						lv_lits_2_0=RULE_ID
						{
							doneLeaf(lv_lits_2_0);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getBug310435Val_Kw2Keyword_1_1_0ElementType());
				}
				otherlv_3='kw2'
				{
					doneLeaf(otherlv_3);
				}
				(
					(
						{
							markLeaf(elementTypeProvider.getBug310435Val_LitsSTRINGTerminalRuleCall_1_1_1_0ElementType());
						}
						lv_lits_4_0=RULE_STRING
						{
							doneLeaf(lv_lits_4_0);
						}
					)
				)
			)
		)*
	)
;

//Entry rule entryRuleCrossRefNameTest
entryRuleCrossRefNameTest:
	{ markComposite(elementTypeProvider.getCrossRefNameTestElementType()); }
	ruleCrossRefNameTest
	EOF;

// Rule CrossRefNameTest
ruleCrossRefNameTest:
	(
		{
			markLeaf(elementTypeProvider.getCrossRefNameTest_NumberSignDigitTwoDigitTwoKeyword_0ElementType());
		}
		otherlv_0='#22'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markComposite(elementTypeProvider.getCrossRefNameTest_NamedCrossRefNamedParserRuleCall_1_0ElementType());
				}
				lv_named_1_0=ruleCrossRefNamed
				{
					doneComposite();
				}
			)
		)*
		{
			markLeaf(elementTypeProvider.getCrossRefNameTest_Kw1Keyword_2ElementType());
		}
		otherlv_2='kw1'
		{
			doneLeaf(otherlv_2);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getCrossRefNameTest_Kw2Keyword_3_0_0ElementType());
				}
				otherlv_3='kw2'
				{
					doneLeaf(otherlv_3);
				}
				(
					(
						{
							markLeaf(elementTypeProvider.getCrossRefNameTest_RefCrossRefNamedCrossReference_3_0_1_0ElementType());
						}
						otherlv_4=RULE_ID1
						{
							doneLeaf(otherlv_4);
						}
					)
				)
			)
			    |
			(
				{
					markLeaf(elementTypeProvider.getCrossRefNameTest_Kw3Keyword_3_1_0ElementType());
				}
				otherlv_5='kw3'
				{
					doneLeaf(otherlv_5);
				}
				(
					(
						{
							markLeaf(elementTypeProvider.getCrossRefNameTest_RefCrossRefNamedCrossReference_3_1_1_0ElementType());
						}
						otherlv_6=RULE_ID2
						{
							doneLeaf(otherlv_6);
						}
					)
				)
			)
		)*
	)
;

//Entry rule entryRuleCrossRefNamed
entryRuleCrossRefNamed:
	{ markComposite(elementTypeProvider.getCrossRefNamedElementType()); }
	ruleCrossRefNamed
	EOF;

// Rule CrossRefNamed
ruleCrossRefNamed:
	(
		(
			(
				{
					markLeaf(elementTypeProvider.getCrossRefNamed_NameID1TerminalRuleCall_0_0ElementType());
				}
				lv_name_0_1=RULE_ID1
				{
					doneLeaf(lv_name_0_1);
				}
				    |
				{
					markLeaf(elementTypeProvider.getCrossRefNamed_NameID2TerminalRuleCall_0_1ElementType());
				}
				lv_name_0_2=RULE_ID2
				{
					doneLeaf(lv_name_0_2);
				}
			)
		)
	)
;

// Rule EnumBug310435Lit1
ruleEnumBug310435Lit1:
	(
		{
			markLeaf(elementTypeProvider.getEnumBug310435Lit1_Lit1EnumLiteralDeclarationElementType());
		}
		enumLiteral_0='lit1'
		{
			doneLeaf(enumLiteral_0);
		}
	)
;

// Rule EnumBug310435Lit2
ruleEnumBug310435Lit2:
	(
		{
			markLeaf(elementTypeProvider.getEnumBug310435Lit2_Lit2EnumLiteralDeclarationElementType());
		}
		enumLiteral_0='lit2'
		{
			doneLeaf(enumLiteral_0);
		}
	)
;

RULE_ID1 : 'i' 'd' ('0'..'9')*;

RULE_ID2 : 'I' 'D' ('0'..'9')*;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
