package com.unity3d.player;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles.Lookup;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

final class ReflectionHelper
{
  protected static boolean LOG = false;
  protected static final boolean LOGV;
  private static a[] a = new a[4096];
  
  private static float a(Class paramClass1, Class paramClass2)
  {
    if (paramClass1.equals(paramClass2)) {
      return 1.0F;
    }
    if ((!paramClass1.isPrimitive()) && (!paramClass2.isPrimitive())) {
      try
      {
        Class localClass2 = paramClass1.asSubclass(paramClass2);
        if (localClass2 != null) {
          return 0.5F;
        }
      }
      catch (ClassCastException localClassCastException1)
      {
        try
        {
          Class localClass1 = paramClass2.asSubclass(paramClass1);
          if (localClass1 != null) {
            return 0.1F;
          }
        }
        catch (ClassCastException localClassCastException2) {}
      }
    }
    return 0.0F;
  }
  
  private static float a(Class paramClass, Class[] paramArrayOfClass1, Class[] paramArrayOfClass2)
  {
    int i = 0;
    if (paramArrayOfClass2.length == 0) {
      return 0.1F;
    }
    if (paramArrayOfClass1 == null) {}
    for (int j = 0; j + 1 != paramArrayOfClass2.length; j = paramArrayOfClass1.length) {
      return 0.0F;
    }
    float f = 1.0F;
    if (paramArrayOfClass1 != null)
    {
      int k = paramArrayOfClass1.length;
      int n;
      for (int m = 0; i < k; m = n)
      {
        Class localClass = paramArrayOfClass1[i];
        n = m + 1;
        f *= a(localClass, paramArrayOfClass2[m]);
        i++;
      }
    }
    return f * a(paramClass, paramArrayOfClass2[(-1 + paramArrayOfClass2.length)]);
  }
  
  private static Class a(String paramString, int[] paramArrayOfInt)
  {
    while (paramArrayOfInt[0] < paramString.length())
    {
      int i = paramArrayOfInt[0];
      paramArrayOfInt[0] = (i + 1);
      char c = paramString.charAt(i);
      String str2;
      if ((c != '(') && (c != ')')) {
        if (c == 'L')
        {
          int j = paramString.indexOf(';', paramArrayOfInt[0]);
          if (j == -1) {
            break;
          }
          String str1 = paramString.substring(paramArrayOfInt[0], j);
          paramArrayOfInt[0] = (j + 1);
          str2 = str1.replace('/', '.');
        }
      }
      try
      {
        Class localClass = Class.forName(str2);
        return localClass;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        break;
      }
      if (c == 'Z') {
        return Boolean.TYPE;
      }
      if (c == 'I') {
        return Integer.TYPE;
      }
      if (c == 'F') {
        return Float.TYPE;
      }
      if (c == 'V') {
        return Void.TYPE;
      }
      if (c == 'B') {
        return Byte.TYPE;
      }
      if (c == 'S') {
        return Short.TYPE;
      }
      if (c == 'J') {
        return Long.TYPE;
      }
      if (c == 'D') {
        return Double.TYPE;
      }
      if (c == '[') {
        return Array.newInstance(a(paramString, paramArrayOfInt), 0).getClass();
      }
      g.Log(5, "! parseType; " + c + " is not known!");
    }
    return null;
  }
  
  private static void a(a parama, Member paramMember)
  {
    parama.a = paramMember;
    a[(parama.hashCode() & -1 + a.length)] = parama;
  }
  
  private static boolean a(a parama)
  {
    a locala = a[(parama.hashCode() & -1 + a.length)];
    if (!parama.equals(locala)) {
      return false;
    }
    parama.a = locala.a;
    return true;
  }
  
  private static Class[] a(String paramString)
  {
    int[] arrayOfInt = { 0 };
    ArrayList localArrayList = new ArrayList();
    while (arrayOfInt[0] < paramString.length())
    {
      Class localClass2 = a(paramString, arrayOfInt);
      if (localClass2 == null) {
        break;
      }
      localArrayList.add(localClass2);
    }
    Class[] arrayOfClass = new Class[localArrayList.size()];
    Iterator localIterator = localArrayList.iterator();
    int j;
    for (int i = 0; localIterator.hasNext(); i = j)
    {
      Class localClass1 = (Class)localIterator.next();
      j = i + 1;
      arrayOfClass[i] = localClass1;
    }
    return arrayOfClass;
  }
  
  protected static Constructor getConstructorID(Class paramClass, String paramString)
  {
    if (LOG) {
      g.Log(3, "? getConstructorID(\"" + paramClass.getName() + "\", \"" + paramString + "\")");
    }
    Object localObject1 = null;
    a locala = new a(paramClass, "", paramString);
    Object localObject2;
    float f1;
    int j;
    label137:
    float f2;
    if (a(locala))
    {
      localObject2 = (Constructor)locala.a;
      if (localObject2 == null) {
        throw new NoSuchMethodError("<init>" + paramString + " in class " + paramClass.getName());
      }
    }
    else
    {
      Class[] arrayOfClass1 = a(paramString);
      f1 = 0.0F;
      Constructor[] arrayOfConstructor = paramClass.getConstructors();
      int i = arrayOfConstructor.length;
      j = 0;
      if (j < i)
      {
        localObject2 = arrayOfConstructor[j];
        f2 = a(Void.TYPE, ((Constructor)localObject2).getParameterTypes(), arrayOfClass1);
        if (f2 <= f1) {
          break label332;
        }
        if (f2 == 1.0F) {
          break label201;
        }
      }
    }
    for (Object localObject3 = localObject2;; localObject3 = localObject1)
    {
      j++;
      localObject1 = localObject3;
      f1 = f2;
      break label137;
      localObject2 = localObject1;
      label201:
      a(locala, (Member)localObject2);
      break;
      if (LOG)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        for (Class localClass : ((Constructor)localObject2).getParameterTypes())
        {
          if (localStringBuilder.length() != 0) {
            localStringBuilder.append(", ");
          }
          localStringBuilder.append(localClass.getSimpleName());
        }
        g.Log(3, "! " + ((Constructor)localObject2).getName() + "(" + localStringBuilder.toString() + ");");
      }
      return localObject2;
      label332:
      f2 = f1;
    }
  }
  
  protected static Field getFieldID(Class paramClass, String paramString1, String paramString2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder;
    if (LOG)
    {
      localStringBuilder = new StringBuilder("? getFieldID(\"").append(paramClass.getName()).append("\", \"").append(paramString1).append("\", \"").append(paramString2).append("\", ");
      if (!paramBoolean) {
        break label157;
      }
    }
    a locala;
    String str1;
    label157:
    for (String str2 = "static)";; str2 = "non-static)")
    {
      g.Log(3, str2);
      locala = new a(paramClass, paramString1, paramString2);
      if (!a(locala)) {
        break;
      }
      localObject1 = (Field)locala.a;
      if (localObject1 != null) {
        break label357;
      }
      Object[] arrayOfObject = new Object[4];
      if (!paramBoolean) {
        break label349;
      }
      str1 = "static";
      label118:
      arrayOfObject[0] = str1;
      arrayOfObject[1] = paramString1;
      arrayOfObject[2] = paramString2;
      arrayOfObject[3] = paramClass.getName();
      throw new NoSuchFieldError(String.format("no %s field with name='%s' signature='%s' in class L%s;", arrayOfObject));
    }
    Class[] arrayOfClass = a(paramString2);
    Object localObject1 = null;
    float f1 = 0.0F;
    label177:
    Object localObject2;
    Field localField;
    float f2;
    Object localObject3;
    if (paramClass != null)
    {
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int i = arrayOfField.length;
      int j = 0;
      localObject2 = localObject1;
      for (;;)
      {
        if (j < i)
        {
          localField = arrayOfField[j];
          if ((paramBoolean == Modifier.isStatic(localField.getModifiers())) && (localField.getName().compareTo(paramString1) == 0))
          {
            f2 = a(localField.getType(), null, arrayOfClass);
            if (f2 > f1)
            {
              if (f2 != 1.0F)
              {
                localObject3 = localField;
                label269:
                j++;
                localObject2 = localObject3;
                f1 = f2;
                continue;
              }
              f1 = f2;
            }
          }
        }
      }
    }
    for (localObject1 = localField;; localObject1 = localObject2)
    {
      if ((f1 != 1.0F) && (!paramClass.isPrimitive()) && (!paramClass.isInterface()) && (!paramClass.equals(Object.class)) && (!paramClass.equals(Void.TYPE)))
      {
        paramClass = paramClass.getSuperclass();
        break label177;
      }
      a(locala, (Member)localObject1);
      break;
      label349:
      str1 = "non-static";
      break label118;
      label357:
      if (LOG) {
        g.Log(3, "! " + ((Field)localObject1).getType().getSimpleName() + " " + ((Field)localObject1).getDeclaringClass().getSimpleName() + "." + ((Field)localObject1).getName() + ";");
      }
      return localObject1;
      f2 = f1;
      localObject3 = localObject2;
      break label269;
    }
  }
  
  protected static Method getMethodID(Class paramClass, String paramString1, String paramString2, boolean paramBoolean)
  {
    StringBuilder localStringBuilder2;
    if (LOG)
    {
      localStringBuilder2 = new StringBuilder("? getMethodID(\"").append(paramClass.getName()).append("\", \"").append(paramString1).append("\", \"").append(paramString2).append("\", ");
      if (!paramBoolean) {
        break label159;
      }
    }
    a locala;
    Object localObject2;
    String str1;
    label159:
    for (String str2 = "static)";; str2 = "non-static)")
    {
      g.Log(3, str2);
      locala = new a(paramClass, paramString1, paramString2);
      if (!a(locala)) {
        break;
      }
      localObject2 = (Method)locala.a;
      if (localObject2 != null) {
        break label367;
      }
      Object[] arrayOfObject = new Object[4];
      if (!paramBoolean) {
        break label359;
      }
      str1 = "static";
      label119:
      arrayOfObject[0] = str1;
      arrayOfObject[1] = paramString1;
      arrayOfObject[2] = paramString2;
      arrayOfObject[3] = paramClass.getName();
      throw new NoSuchMethodError(String.format("no %s method with name='%s' signature='%s' in class L%s;", arrayOfObject));
    }
    Class[] arrayOfClass1 = a(paramString2);
    Object localObject1 = null;
    float f1 = 0.0F;
    label179:
    Object localObject3;
    Method localMethod;
    float f2;
    Object localObject4;
    if (paramClass != null)
    {
      Method[] arrayOfMethod = paramClass.getDeclaredMethods();
      int k = arrayOfMethod.length;
      int m = 0;
      localObject3 = localObject1;
      for (;;)
      {
        if (m < k)
        {
          localMethod = arrayOfMethod[m];
          if ((paramBoolean == Modifier.isStatic(localMethod.getModifiers())) && (localMethod.getName().compareTo(paramString1) == 0))
          {
            f2 = a(localMethod.getReturnType(), localMethod.getParameterTypes(), arrayOfClass1);
            if (f2 > f1)
            {
              if (f2 != 1.0F)
              {
                localObject4 = localMethod;
                label275:
                m++;
                localObject3 = localObject4;
                f1 = f2;
                continue;
              }
              f1 = f2;
            }
          }
        }
      }
    }
    for (localObject1 = localMethod;; localObject1 = localObject3)
    {
      if ((f1 != 1.0F) && (!paramClass.isPrimitive()) && (!paramClass.isInterface()) && (!paramClass.equals(Object.class)) && (!paramClass.equals(Void.TYPE)))
      {
        paramClass = paramClass.getSuperclass();
        break label179;
      }
      a(locala, localObject1);
      localObject2 = localObject1;
      break;
      label359:
      str1 = "non-static";
      break label119;
      label367:
      if (LOG)
      {
        StringBuilder localStringBuilder1 = new StringBuilder();
        for (Class localClass : ((Method)localObject2).getParameterTypes())
        {
          if (localStringBuilder1.length() != 0) {
            localStringBuilder1.append(", ");
          }
          localStringBuilder1.append(localClass.getSimpleName());
        }
        g.Log(3, "! " + ((Method)localObject2).getReturnType().getSimpleName() + " " + ((Method)localObject2).getDeclaringClass().getSimpleName() + "." + ((Method)localObject2).getName() + "(" + localStringBuilder1.toString() + ");");
      }
      return localObject2;
      f2 = f1;
      localObject4 = localObject3;
      break label275;
    }
  }
  
  private static native void nativeProxyFinalize(int paramInt);
  
  private static native Object nativeProxyInvoke(int paramInt, String paramString, Object[] paramArrayOfObject);
  
  private static native void nativeProxyLogJNIInvokeException();
  
  protected static Object newProxyInstance(int paramInt, Class paramClass)
  {
    return newProxyInstance(paramInt, new Class[] { paramClass });
  }
  
  protected static Object newProxyInstance(int paramInt, final Class[] paramArrayOfClass)
  {
    if (LOG)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      arrayOfObject[1] = Arrays.asList(paramArrayOfClass);
      g.Log(3, String.format("ReflectionHelper.Proxy(%d,%s)", arrayOfObject));
    }
    Proxy.newProxyInstance(ReflectionHelper.class.getClassLoader(), paramArrayOfClass, new InvocationHandler()
    {
      private static Object a(Object paramAnonymousObject, Method paramAnonymousMethod, Object[] paramAnonymousArrayOfObject)
      {
        if (paramAnonymousArrayOfObject == null) {}
        try
        {
          paramAnonymousArrayOfObject = new Object[0];
          Class localClass = paramAnonymousMethod.getDeclaringClass();
          Class[] arrayOfClass = new Class[2];
          arrayOfClass[0] = Class.class;
          arrayOfClass[1] = Integer.TYPE;
          Constructor localConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(arrayOfClass);
          localConstructor.setAccessible(true);
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = localClass;
          arrayOfObject[1] = Integer.valueOf(2);
          Object localObject = ((MethodHandles.Lookup)localConstructor.newInstance(arrayOfObject)).in(localClass).unreflectSpecial(paramAnonymousMethod, localClass).bindTo(paramAnonymousObject).invokeWithArguments(paramAnonymousArrayOfObject);
          return localObject;
        }
        catch (NoClassDefFoundError localNoClassDefFoundError)
        {
          g.Log(6, String.format("Java interface default methods are only supported since Android Oreo", new Object[0]));
          ReflectionHelper.a();
        }
        return null;
      }
      
      protected final void finalize()
      {
        try
        {
          if (ReflectionHelper.LOG)
          {
            Object[] arrayOfObject = new Object[2];
            arrayOfObject[0] = Integer.valueOf(this.a);
            arrayOfObject[1] = Arrays.asList(paramArrayOfClass);
            g.Log(3, String.format("ReflectionHelper.Proxy.finilize(%d, %s)", arrayOfObject));
          }
          ReflectionHelper.a(this.a);
          return;
        }
        finally
        {
          super.finalize();
        }
      }
      
      public final Object invoke(Object paramAnonymousObject, Method paramAnonymousMethod, Object[] paramAnonymousArrayOfObject)
      {
        Object[] arrayOfObject;
        if (ReflectionHelper.LOG)
        {
          arrayOfObject = new Object[4];
          arrayOfObject[0] = Integer.valueOf(this.a);
          arrayOfObject[1] = Arrays.asList(paramArrayOfClass);
          arrayOfObject[2] = paramAnonymousMethod.getName();
          if (paramAnonymousArrayOfObject != null) {
            break label108;
          }
        }
        Object localObject1;
        label108:
        for (Object localObject2 = "<null>";; localObject2 = Arrays.asList(paramAnonymousArrayOfObject))
        {
          arrayOfObject[3] = localObject2;
          g.Log(3, String.format("ReflectionHelper.Proxy.invoke(%d, %s, %s, %s)", arrayOfObject));
          localObject1 = ReflectionHelper.a(this.a, paramAnonymousMethod.getName(), paramAnonymousArrayOfObject);
          if (localObject1 == null)
          {
            if ((0x400 & paramAnonymousMethod.getModifiers()) != 0) {
              break;
            }
            localObject1 = a(paramAnonymousObject, paramAnonymousMethod, paramAnonymousArrayOfObject);
          }
          return localObject1;
        }
        ReflectionHelper.a();
        return localObject1;
      }
    });
  }
  
  private static final class a
  {
    public volatile Member a;
    private final Class b;
    private final String c;
    private final String d;
    private final int e;
    
    a(Class paramClass, String paramString1, String paramString2)
    {
      this.b = paramClass;
      this.c = paramString1;
      this.d = paramString2;
      this.e = (31 * (31 * (527 + this.b.hashCode()) + this.c.hashCode()) + this.d.hashCode());
    }
    
    public final boolean equals(Object paramObject)
    {
      if (paramObject == this) {}
      a locala;
      do
      {
        return true;
        if (!(paramObject instanceof a)) {
          break;
        }
        locala = (a)paramObject;
      } while ((this.e == locala.e) && (this.d.equals(locala.d)) && (this.c.equals(locala.c)) && (this.b.equals(locala.b)));
      return false;
      return false;
    }
    
    public final int hashCode()
    {
      return this.e;
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.ReflectionHelper
 * JD-Core Version:    0.7.0.1
 */