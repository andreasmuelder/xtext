/**
 * Copyright (c) 2015 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.xtext.web.server.model;

import java.util.Collection;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.validation.Issue;

@SuppressWarnings("all")
public interface IXtextWebDocument {
  public abstract XtextResource getResource();
  
  public abstract String getResourceId();
  
  public abstract String getText();
  
  public abstract String getStateId();
  
  public abstract Collection<Issue> getIssues();
  
  public abstract boolean isDirty();
  
  public abstract boolean isProcessingCompleted();
  
  public abstract void setText(final String text);
  
  public abstract void createNewStateId();
  
  public abstract void updateText(final String text, final int offset, final int replaceLength);
  
  public abstract void setDirty(final boolean dirty);
  
  public abstract void setProcessingCompleted(final boolean completed);
}
