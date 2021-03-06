/**
 * Copyright (c) 2015 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.xtext.builder.standalone.incremental;

import com.google.common.base.Objects;
import com.google.common.collect.Iterables;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.xtend.lib.annotations.FinalFieldsConstructor;
import org.eclipse.xtext.builder.standalone.LanguageAccess;
import org.eclipse.xtext.builder.standalone.incremental.BuildContext;
import org.eclipse.xtext.resource.IResourceServiceProvider;
import org.eclipse.xtext.resource.IResourceServiceProviderExtension;
import org.eclipse.xtext.resource.XtextResourceSet;
import org.eclipse.xtext.resource.clustering.IResourceClusteringPolicy;
import org.eclipse.xtext.resource.persistence.SourceLevelURIsAdapter;
import org.eclipse.xtext.resource.persistence.StorageAwareResource;
import org.eclipse.xtext.xbase.lib.CollectionLiterals;
import org.eclipse.xtext.xbase.lib.Extension;
import org.eclipse.xtext.xbase.lib.Functions.Function1;
import org.eclipse.xtext.xbase.lib.IterableExtensions;
import org.eclipse.xtext.xbase.lib.ListExtensions;

/**
 * @author Jan Koehnlein - Initial contribution and API
 */
@FinalFieldsConstructor
@SuppressWarnings("all")
public class ClusteringStorageAwareResourceLoader {
  @Extension
  private final BuildContext context;
  
  public <T extends Object> Iterable<T> executeClustered(final Iterable<URI> uris, final Function1<? super Resource, ? extends T> operation) {
    ArrayList<T> _xblockexpression = null;
    {
      final ArrayList<URI> loadedURIs = CollectionLiterals.<URI>newArrayList();
      final ArrayList<URI> sourceLevelURIs = CollectionLiterals.<URI>newArrayList();
      final ArrayList<Resource> resources = CollectionLiterals.<Resource>newArrayList();
      final ArrayList<T> result = CollectionLiterals.<T>newArrayList();
      final Function1<URI, Boolean> _function = new Function1<URI, Boolean>() {
        @Override
        public Boolean apply(final URI it) {
          String _fileExtension = it.fileExtension();
          return Boolean.valueOf((!Objects.equal(_fileExtension, "java")));
        }
      };
      Iterable<URI> _filter = IterableExtensions.<URI>filter(uris, _function);
      final Iterator<URI> iter = _filter.iterator();
      while (iter.hasNext()) {
        {
          final URI uri = iter.next();
          IResourceClusteringPolicy _clusteringPolicy = this.context.getClusteringPolicy();
          XtextResourceSet _resourceSet = this.context.getResourceSet();
          int _size = loadedURIs.size();
          boolean _continueProcessing = _clusteringPolicy.continueProcessing(_resourceSet, uri, _size);
          boolean _not = (!_continueProcessing);
          if (_not) {
            final Function1<Resource, T> _function_1 = new Function1<Resource, T>() {
              @Override
              public T apply(final Resource it) {
                return operation.apply(it);
              }
            };
            List<T> _map = ListExtensions.<Resource, T>map(resources, _function_1);
            Iterables.<T>addAll(result, _map);
            resources.clear();
            this.clearResourceSet();
            loadedURIs.clear();
          }
          loadedURIs.add(uri);
          boolean _isReadOnly = this.isReadOnly(uri);
          boolean _not_1 = (!_isReadOnly);
          if (_not_1) {
            sourceLevelURIs.add(uri);
            XtextResourceSet _resourceSet_1 = this.context.getResourceSet();
            final Resource existingResource = _resourceSet_1.getResource(uri, false);
            if ((existingResource instanceof StorageAwareResource)) {
              boolean _isLoadedFromStorage = ((StorageAwareResource)existingResource).isLoadedFromStorage();
              if (_isLoadedFromStorage) {
                ((StorageAwareResource)existingResource).unload();
              }
            }
            XtextResourceSet _resourceSet_2 = this.context.getResourceSet();
            SourceLevelURIsAdapter.setSourceLevelUris(_resourceSet_2, sourceLevelURIs);
          }
          XtextResourceSet _resourceSet_3 = this.context.getResourceSet();
          Resource _resource = _resourceSet_3.getResource(uri, true);
          resources.add(_resource);
        }
      }
      final Function1<Resource, T> _function_1 = new Function1<Resource, T>() {
        @Override
        public T apply(final Resource it) {
          return operation.apply(it);
        }
      };
      List<T> _map = ListExtensions.<Resource, T>map(resources, _function_1);
      Iterables.<T>addAll(result, _map);
      _xblockexpression = result;
    }
    return _xblockexpression;
  }
  
  protected boolean isReadOnly(final URI uri) {
    Map<String, LanguageAccess> _languages = this.context.getLanguages();
    String _fileExtension = uri.fileExtension();
    LanguageAccess _get = _languages.get(_fileExtension);
    final IResourceServiceProvider provider = _get.getResourceServiceProvider();
    boolean _and = false;
    if (!(provider instanceof IResourceServiceProviderExtension)) {
      _and = false;
    } else {
      boolean _isReadOnly = ((IResourceServiceProviderExtension) provider).isReadOnly(uri);
      _and = _isReadOnly;
    }
    return _and;
  }
  
  protected void clearResourceSet() {
    XtextResourceSet _resourceSet = this.context.getResourceSet();
    final boolean wasDeliver = _resourceSet.eDeliver();
    try {
      XtextResourceSet _resourceSet_1 = this.context.getResourceSet();
      _resourceSet_1.eSetDeliver(false);
      XtextResourceSet _resourceSet_2 = this.context.getResourceSet();
      EList<Resource> _resources = _resourceSet_2.getResources();
      _resources.clear();
    } finally {
      XtextResourceSet _resourceSet_3 = this.context.getResourceSet();
      _resourceSet_3.eSetDeliver(wasDeliver);
    }
  }
  
  public ClusteringStorageAwareResourceLoader(final BuildContext context) {
    super();
    this.context = context;
  }
}
