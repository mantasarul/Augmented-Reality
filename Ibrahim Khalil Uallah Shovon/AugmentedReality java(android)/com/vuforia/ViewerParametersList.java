package com.vuforia;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class ViewerParametersList
  implements Iterable<ViewerParameters>
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected ViewerParametersList(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  private ViewerParameters begin()
  {
    long l = VuforiaJNI.ViewerParametersList_begin(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new ViewerParameters(l, false);
  }
  
  private ViewerParameters end()
  {
    long l = VuforiaJNI.ViewerParametersList_end(this.swigCPtr, this);
    if (l == 0L) {
      return null;
    }
    return new ViewerParameters(l, false);
  }
  
  protected static long getCPtr(ViewerParametersList paramViewerParametersList)
  {
    if (paramViewerParametersList == null) {
      return 0L;
    }
    return paramViewerParametersList.swigCPtr;
  }
  
  public static ViewerParametersList getListForAuthoringTools()
  {
    return new ViewerParametersList(VuforiaJNI.ViewerParametersList_getListForAuthoringTools(), false);
  }
  
  private ViewerParameters next(ViewerParameters paramViewerParameters)
  {
    long l = VuforiaJNI.ViewerParametersList_next(this.swigCPtr, this, ViewerParameters.getCPtr(paramViewerParameters), paramViewerParameters);
    if (l == 0L) {
      return null;
    }
    return new ViewerParameters(l, false);
  }
  
  protected void delete()
  {
    try
    {
      if (this.swigCPtr != 0L)
      {
        if (this.swigCMemOwn)
        {
          this.swigCMemOwn = false;
          VuforiaJNI.delete_ViewerParametersList(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  protected void finalize()
  {
    delete();
  }
  
  public ViewerParameters get(long paramLong)
  {
    long l = VuforiaJNI.ViewerParametersList_get__SWIG_0(this.swigCPtr, this, paramLong);
    if (l == 0L) {
      return null;
    }
    return new ViewerParameters(l, false);
  }
  
  public ViewerParameters get(String paramString1, String paramString2)
  {
    long l = VuforiaJNI.ViewerParametersList_get__SWIG_1(this.swigCPtr, this, paramString1, paramString2);
    if (l == 0L) {
      return null;
    }
    return new ViewerParameters(l, false);
  }
  
  public Iterator<ViewerParameters> iterator()
  {
    return new VPIterator();
  }
  
  public void setSDKFilter(String paramString)
  {
    VuforiaJNI.ViewerParametersList_setSDKFilter(this.swigCPtr, this, paramString);
  }
  
  public long size()
  {
    return VuforiaJNI.ViewerParametersList_size(this.swigCPtr, this);
  }
  
  private class VPIterator
    implements Iterator<ViewerParameters>
  {
    private ViewerParameters next = null;
    
    VPIterator()
    {
      if (ViewerParametersList.this.size() > 0L) {
        this.next = ViewerParametersList.this.begin();
      }
    }
    
    public boolean hasNext()
    {
      return this.next != null;
    }
    
    public ViewerParameters next()
      throws NoSuchElementException
    {
      if (this.next != null)
      {
        ViewerParameters localViewerParameters = this.next;
        this.next = ViewerParametersList.this.next(localViewerParameters);
        return localViewerParameters;
      }
      throw new NoSuchElementException();
    }
    
    public void remove()
      throws UnsupportedOperationException, IllegalStateException
    {
      throw new UnsupportedOperationException();
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ViewerParametersList
 * JD-Core Version:    0.7.0.1
 */