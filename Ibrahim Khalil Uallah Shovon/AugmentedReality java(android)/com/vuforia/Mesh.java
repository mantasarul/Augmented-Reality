package com.vuforia;

import java.nio.ByteBuffer;

public class Mesh
{
  protected boolean swigCMemOwn;
  private long swigCPtr;
  
  protected Mesh(long paramLong, boolean paramBoolean)
  {
    this.swigCMemOwn = paramBoolean;
    this.swigCPtr = paramLong;
  }
  
  protected static long getCPtr(Mesh paramMesh)
  {
    if (paramMesh == null) {
      return 0L;
    }
    return paramMesh.swigCPtr;
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
          VuforiaJNI.delete_Mesh(this.swigCPtr);
        }
        this.swigCPtr = 0L;
      }
      return;
    }
    finally {}
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Mesh;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = ((Mesh)paramObject).swigCPtr < this.swigCPtr;
      bool2 = false;
      if (!bool3) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  protected void finalize()
  {
    delete();
  }
  
  public ByteBuffer getNormals()
  {
    return VuforiaJNI.Mesh_getNormals(this.swigCPtr, this);
  }
  
  public int getNumTriangles()
  {
    return VuforiaJNI.Mesh_getNumTriangles(this.swigCPtr, this);
  }
  
  public int getNumVertices()
  {
    return VuforiaJNI.Mesh_getNumVertices(this.swigCPtr, this);
  }
  
  public ByteBuffer getPositions()
  {
    return VuforiaJNI.Mesh_getPositions(this.swigCPtr, this);
  }
  
  public ByteBuffer getTriangles()
  {
    return VuforiaJNI.Mesh_getTriangles(this.swigCPtr, this);
  }
  
  public ByteBuffer getUVs()
  {
    return VuforiaJNI.Mesh_getUVs(this.swigCPtr, this);
  }
  
  public boolean hasNormals()
  {
    return VuforiaJNI.Mesh_hasNormals(this.swigCPtr, this);
  }
  
  public boolean hasPositions()
  {
    return VuforiaJNI.Mesh_hasPositions(this.swigCPtr, this);
  }
  
  public boolean hasUVs()
  {
    return VuforiaJNI.Mesh_hasUVs(this.swigCPtr, this);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.Mesh
 * JD-Core Version:    0.7.0.1
 */