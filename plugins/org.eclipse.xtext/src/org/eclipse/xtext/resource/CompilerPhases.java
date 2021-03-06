/*******************************************************************************
 * Copyright (c) 2013 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package org.eclipse.xtext.resource;

import java.util.Iterator;

import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.xtext.EcoreUtil2;

/**
 * @author Sven Efftinge - Initial contribution and API
 * @since 2.4
 */
public class CompilerPhases {

	public boolean isIndexing(Notifier ctx) {
		ResourceSet set = EcoreUtil2.getResourceSet(ctx);
		if (set != null) {
			return EcoreUtil.getAdapter(set.eAdapters(), IndexingAdapter.INSTANCE) != null;
		}
		return false;
	}
	
	public void setIndexing(Notifier ctx, boolean isIndex) {
		ResourceSet set = EcoreUtil2.getResourceSet(ctx);
		if (isIndex) {
			set.eAdapters().add(IndexingAdapter.INSTANCE);
		} else {
			set.eAdapters().remove(IndexingAdapter.INSTANCE);
		}
	}
	
	private static class IndexingAdapter extends AdapterImpl {
		
		private static final IndexingAdapter INSTANCE = new IndexingAdapter();
		
		@Override
		public boolean isAdapterForType(Object type) {
			return INSTANCE == type;
		}
	}
}
