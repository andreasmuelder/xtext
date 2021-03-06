/*******************************************************************************
 * Copyright (c) 2011 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package org.eclipse.xtext.serializer.sequencer;

import java.util.Collections;
import java.util.List;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;

import com.google.common.collect.Lists;
import com.google.inject.Inject;

/**
 * @author Moritz Eysholdt - Initial contribution and API
 */
public class TransientValueUtil {
	@Inject
	protected ITransientValueService transientValues;

	@SuppressWarnings("unchecked")
	public List<EObject> getAllNonTransientValues(EObject container, EReference feature) {
		switch (transientValues.isListTransient(container, feature)) {
			case SOME:
				List<EObject> result = Lists.newArrayList();
				List<?> values = (List<?>) container.eGet(feature);
				for (int i = 0; i < values.size(); i++)
					if (!transientValues.isValueInListTransient(container, i, feature))
						result.add((EObject) values.get(i));
				return result;
			case NO:
				return (List<EObject>) container.eGet(feature);
			case YES:
				return Collections.emptyList();
		}
		return Collections.emptyList();
	}

	@SuppressWarnings("unchecked")
	public List<Object> getAllNonTransientValues(EObject container, EStructuralFeature feature) {
		switch (transientValues.isListTransient(container, feature)) {
			case SOME:
				List<Object> result = Lists.newArrayList();
				List<?> values = (List<?>) container.eGet(feature);
				for (int i = 0; i < values.size(); i++)
					if (!transientValues.isValueInListTransient(container, i, feature))
						result.add(values.get(i));
				return result;
			case NO:
				return (List<Object>) container.eGet(feature);
			case YES:
				return Collections.emptyList();
		}
		return Collections.emptyList();
	}

	public ValueTransient isTransient(EObject obj, EStructuralFeature feature) {
		if (feature.isMany())
			switch (transientValues.isListTransient(obj, feature)) {
				case NO:
					return ValueTransient.NO;
				case YES:
					return ValueTransient.YES;
				case SOME:
					List<?> values = (List<?>) obj.eGet(feature);
					for (int i = 0; i < values.size(); i++)
						if (!transientValues.isValueInListTransient(obj, i, feature))
							return ValueTransient.NO;
				default:
					return ValueTransient.YES;
			}
		else
			return transientValues.isValueTransient(obj, feature);
	}
}
