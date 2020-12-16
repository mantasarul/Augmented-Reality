

java.lang.invoke.MethodHandle
java.lang.invoke.MethodHandles.Lookup
java.lang.reflect.Constructor
java.lang.reflect.InvocationHandler
java.lang.reflect.Method
java.lang.reflect.Proxy

JNIBridge

  delete
  
  disableInterfaceProxy
  
     (!= {
      getInvocationHandlera()
    
  
  
  invoke, , , []
  
  newInterfaceProxy, []
  
    newProxyInstancegetClassLoader(), , 
  
  
  a
    
  
    a = 0
    b
    c
    
    a
    
      b = paramLong;
      try
      {
        Class[] arrayOfClass = new Class[2];
        arrayOfClass[0] = Class.class;
        arrayOfClass[1] = Integer.TYPE;
        this.c = MethodHandles.Lookup.class.getDeclaredConstructor(arrayOfClass);
        this.c.setAccessible(true);
        return;
      }
      catch (NoClassDefFoundError localNoClassDefFoundError)
      {
        this.c = null;
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        this.c = null;
      }
    }
    
    private Object a(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    {
      if (paramArrayOfObject == null) {
        paramArrayOfObject = new Object[0];
      }
      Class localClass = paramMethod.getDeclaringClass();
      Constructor localConstructor = this.c;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = localClass;
      arrayOfObject[1] = Integer.valueOf(2);
      return ((MethodHandles.Lookup)localConstructor.newInstance(arrayOfObject)).in(localClass).unreflectSpecial(paramMethod, localClass).bindTo(paramObject).invokeWithArguments(paramArrayOfObject);
    }
    
    public final void a()
    {
      synchronized (this.a)
      {
        this.b = 0L;
        return;
      }
    }
    
    public final void finalize()
    {
      synchronized (this.a)
      {
        if (this.b == 0L) {
          return;
        }
        JNIBridge.delete(this.b);
        return;
      }
    }
    
    public final Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    {
      Object localObject4;
      synchronized (this.a)
      {
        if (this.b == 0L) {
          return null;
        }
      }
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     bitter.jnibridge.JNIBridge
 * JD-Core Version:    0.7.0.1
 */