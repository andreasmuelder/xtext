package org.eclipse.xtext.parsetree.reconstr.idea.lang;

import javax.swing.Icon;

import com.intellij.openapi.fileTypes.LanguageFileType;
import org.jetbrains.annotations.NonNls;

public final class Bug302128TestLanguageFileType extends LanguageFileType {

	public static final Bug302128TestLanguageFileType INSTANCE = new Bug302128TestLanguageFileType();
	
	@NonNls 
	public static final String DEFAULT_EXTENSION = "bug302128testlanguage";

	private Bug302128TestLanguageFileType() {
		super(Bug302128TestLanguageLanguage.INSTANCE);
	}

	@Override
	public String getDefaultExtension() {
		return DEFAULT_EXTENSION;
	}

	@Override
	public String getDescription() {
		return "Bug302128TestLanguage files";
	}

	@Override
	public Icon getIcon() {
		return null;
	}

	@Override
	public String getName() {
		return "Bug302128TestLanguage";
	}

}
