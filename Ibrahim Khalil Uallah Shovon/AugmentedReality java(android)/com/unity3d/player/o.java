package com.unity3d.player;

import java.lang.reflect.Method;
import java.util.HashMap;

final class o
{
  private HashMap a = new HashMap();
  private Class b = null;
  private Object c = null;
  
  public o(Class paramClass, Object paramObject)
  {
    this.b = paramClass;
    this.c = paramObject;
  }
  
  private void a(String paramString, a parama)
  {
    try
    {
      parama.b = this.b.getMethod(paramString, parama.a);
      return;
    }
    catch (Exception localException)
    {
      g.Log(6, "Exception while trying to get method " + paramString + ". " + localException.getLocalizedMessage());
      parama.b = null;
    }
  }
  
  public final Object a(String paramString, Object... paramVarArgs)
  {
    if (!this.a.containsKey(paramString))
    {
      g.Log(6, "No definition for method " + paramString + " can be found");
      return null;
    }
    a locala = (a)this.a.get(paramString);
    if (locala.b == null) {
      a(paramString, locala);
    }
    if (locala.b == null)
    {
      g.Log(6, "Unable to create method: " + paramString);
      return null;
    }
    Object localObject1;
    try
    {
      if (paramVarArgs.length == 0)
      {
        localObject1 = locala.b.invoke(this.c, new Object[0]);
      }
      else
      {
        Object localObject2 = locala.b.invoke(this.c, paramVarArgs);
        localObject1 = localObject2;
      }
    }
    catch (Exception localException)
    {
      g.Log(6, "Error trying to call delegated method " + paramString + ". " + localException.getLocalizedMessage());
      localObject1 = null;
    }
    return localObject1;
  }
  
  public final void a(String paramString, Class[] paramArrayOfClass)
  {
    this.a.put(paramString, new a(paramArrayOfClass));
  }
  
  final class a
  {
    public Class[] a;
    public Method b;
    
    public a(Class[] paramArrayOfClass)
    {
      this.a = paramArrayOfClass;
      this.b = null;
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.o
 * JD-Core Version:    0.7.0.1
 */