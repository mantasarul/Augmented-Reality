package com.vuforia.eyewear.Calibration.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ICalibrationProfileService
  extends IInterface
{
  public abstract boolean clearProfile(int paramInt)
    throws RemoteException;
  
  public abstract int getActiveProfile()
    throws RemoteException;
  
  public abstract float[] getCameraToEyePose(int paramInt1, int paramInt2)
    throws RemoteException;
  
  public abstract float[] getEyeProjection(int paramInt1, int paramInt2)
    throws RemoteException;
  
  public abstract int getMaxProfileCount()
    throws RemoteException;
  
  public abstract String getProfileName(int paramInt)
    throws RemoteException;
  
  public abstract int getUsedProfileCount()
    throws RemoteException;
  
  public abstract boolean isProfileUsed(int paramInt)
    throws RemoteException;
  
  public abstract boolean setActiveProfile(int paramInt)
    throws RemoteException;
  
  public abstract boolean setCameraToEyePose(int paramInt1, int paramInt2, float[] paramArrayOfFloat)
    throws RemoteException;
  
  public abstract boolean setEyeProjection(int paramInt1, int paramInt2, float[] paramArrayOfFloat)
    throws RemoteException;
  
  public abstract boolean setProfileName(int paramInt, String paramString)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements ICalibrationProfileService
  {
    private static final String DESCRIPTOR = "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService";
    static final int TRANSACTION_clearProfile = 12;
    static final int TRANSACTION_getActiveProfile = 4;
    static final int TRANSACTION_getCameraToEyePose = 8;
    static final int TRANSACTION_getEyeProjection = 9;
    static final int TRANSACTION_getMaxProfileCount = 1;
    static final int TRANSACTION_getProfileName = 6;
    static final int TRANSACTION_getUsedProfileCount = 2;
    static final int TRANSACTION_isProfileUsed = 3;
    static final int TRANSACTION_setActiveProfile = 5;
    static final int TRANSACTION_setCameraToEyePose = 10;
    static final int TRANSACTION_setEyeProjection = 11;
    static final int TRANSACTION_setProfileName = 7;
    
    public Stub()
    {
      attachInterface(this, "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
    }
    
    public static ICalibrationProfileService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
      if ((localIInterface != null) && ((localIInterface instanceof ICalibrationProfileService))) {
        return (ICalibrationProfileService)localIInterface;
      }
      return new Proxy(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        int i4 = getMaxProfileCount();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i4);
        return true;
      case 2: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        int i3 = getUsedProfileCount();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i3);
        return true;
      case 3: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        boolean bool6 = isProfileUsed(paramParcel1.readInt());
        paramParcel2.writeNoException();
        int i2 = 0;
        if (bool6) {
          i2 = 1;
        }
        paramParcel2.writeInt(i2);
        return true;
      case 4: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        int i1 = getActiveProfile();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i1);
        return true;
      case 5: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        boolean bool5 = setActiveProfile(paramParcel1.readInt());
        paramParcel2.writeNoException();
        int n = 0;
        if (bool5) {
          n = 1;
        }
        paramParcel2.writeInt(n);
        return true;
      case 6: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        String str = getProfileName(paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        return true;
      case 7: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        boolean bool4 = setProfileName(paramParcel1.readInt(), paramParcel1.readString());
        paramParcel2.writeNoException();
        int m = 0;
        if (bool4) {
          m = 1;
        }
        paramParcel2.writeInt(m);
        return true;
      case 8: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        float[] arrayOfFloat2 = getCameraToEyePose(paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeFloatArray(arrayOfFloat2);
        return true;
      case 9: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        float[] arrayOfFloat1 = getEyeProjection(paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeFloatArray(arrayOfFloat1);
        return true;
      case 10: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        boolean bool3 = setCameraToEyePose(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.createFloatArray());
        paramParcel2.writeNoException();
        int k = 0;
        if (bool3) {
          k = 1;
        }
        paramParcel2.writeInt(k);
        return true;
      case 11: 
        paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
        boolean bool2 = setEyeProjection(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.createFloatArray());
        paramParcel2.writeNoException();
        int j = 0;
        if (bool2) {
          j = 1;
        }
        paramParcel2.writeInt(j);
        return true;
      }
      paramParcel1.enforceInterface("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
      boolean bool1 = clearProfile(paramParcel1.readInt());
      paramParcel2.writeNoException();
      int i = 0;
      if (bool1) {
        i = 1;
      }
      paramParcel2.writeInt(i);
      return true;
    }
    
    private static class Proxy
      implements ICalibrationProfileService
    {
      private IBinder mRemote;
      
      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }
      
      public IBinder asBinder()
      {
        return this.mRemote;
      }
      
      public boolean clearProfile(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(12, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public int getActiveProfile()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public float[] getCameraToEyePose(int paramInt1, int paramInt2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          this.mRemote.transact(8, localParcel1, localParcel2, 0);
          localParcel2.readException();
          float[] arrayOfFloat = localParcel2.createFloatArray();
          return arrayOfFloat;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public float[] getEyeProjection(int paramInt1, int paramInt2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          this.mRemote.transact(9, localParcel1, localParcel2, 0);
          localParcel2.readException();
          float[] arrayOfFloat = localParcel2.createFloatArray();
          return arrayOfFloat;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getInterfaceDescriptor()
      {
        return "com.vuforia.eyewear.Calibration.service.ICalibrationProfileService";
      }
      
      public int getMaxProfileCount()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public String getProfileName(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public int getUsedProfileCount()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean isProfileUsed(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean setActiveProfile(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean setCameraToEyePose(int paramInt1, int paramInt2, float[] paramArrayOfFloat)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeFloatArray(paramArrayOfFloat);
          this.mRemote.transact(10, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean setEyeProjection(int paramInt1, int paramInt2, float[] paramArrayOfFloat)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeFloatArray(paramArrayOfFloat);
          this.mRemote.transact(11, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public boolean setProfileName(int paramInt, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.vuforia.eyewear.Calibration.service.ICalibrationProfileService");
          localParcel1.writeInt(paramInt);
          localParcel1.writeString(paramString);
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.eyewear.Calibration.service.ICalibrationProfileService
 * JD-Core Version:    0.7.0.1
 */