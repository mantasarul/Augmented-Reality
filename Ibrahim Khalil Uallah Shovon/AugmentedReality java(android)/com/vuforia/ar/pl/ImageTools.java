package com.vuforia.ar.pl;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import android.graphics.YuvImage;
import java.io.ByteArrayOutputStream;

public class ImageTools
{
  private static final int CAMERA_IMAGE_FORMAT_LUM = 268439809;
  private static final int CAMERA_IMAGE_FORMAT_NV12 = 268439815;
  private static final int CAMERA_IMAGE_FORMAT_NV21 = 268439817;
  private static final int CAMERA_IMAGE_FORMAT_RGB565 = 268439810;
  private static final String MODULENAME = "ImageTools";
  
  public static byte[] encodeImage(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    if (paramInt3 == 268439817)
    {
      YuvImage localYuvImage = new YuvImage(paramArrayOfByte, 17, paramInt1, paramInt2, null);
      ByteArrayOutputStream localByteArrayOutputStream1 = new ByteArrayOutputStream();
      if (localYuvImage.compressToJpeg(new Rect(0, 0, paramInt1, paramInt2), paramInt5, localByteArrayOutputStream1)) {
        return localByteArrayOutputStream1.toByteArray();
      }
      return null;
    }
    if (paramInt3 == 268439809)
    {
      int i = paramInt1 * paramInt2;
      int[] arrayOfInt = new int[i];
      for (int j = 0; j < i; j++) {
        arrayOfInt[j] = (0xFFFFFF | paramArrayOfByte[j] << 24);
      }
      Bitmap localBitmap = Bitmap.createBitmap(arrayOfInt, 0, paramInt1, paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      ByteArrayOutputStream localByteArrayOutputStream2 = new ByteArrayOutputStream();
      if (localBitmap.compress(Bitmap.CompressFormat.JPEG, paramInt5, localByteArrayOutputStream2)) {
        return localByteArrayOutputStream2.toByteArray();
      }
      return null;
    }
    return null;
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.ImageTools
 * JD-Core Version:    0.7.0.1
 */