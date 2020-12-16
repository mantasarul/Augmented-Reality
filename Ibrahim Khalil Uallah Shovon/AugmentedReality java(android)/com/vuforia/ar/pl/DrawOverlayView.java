package com.vuforia.ar.pl;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import java.nio.ByteBuffer;

public class DrawOverlayView
  extends View
{
  private static final String MODULENAME = "DrawOverlayView";
  private Drawable drawable = null;
  private double mLeft;
  private float[] mScale;
  private int[] mSize;
  private double mTop;
  private DisplayMetrics metrics;
  private Bitmap overlayBitmap;
  
  public DrawOverlayView(Context paramContext)
  {
    super(paramContext);
  }
  
  public DrawOverlayView(Context paramContext, byte[] paramArrayOfByte, int paramInt1, int paramInt2, float[] paramArrayOfFloat, int[] paramArrayOfInt)
  {
    super(paramContext);
    this.mLeft = paramInt1;
    this.mTop = paramInt2;
    this.mScale = paramArrayOfFloat;
    this.mSize = paramArrayOfInt;
    byte[] arrayOfByte = new byte[4 * paramArrayOfByte.length];
    for (int i = 0; i < this.mSize[0] * this.mSize[1]; i++)
    {
      arrayOfByte[(i * 4)] = paramArrayOfByte[i];
      arrayOfByte[(1 + i * 4)] = paramArrayOfByte[i];
      arrayOfByte[(2 + i * 4)] = paramArrayOfByte[i];
      arrayOfByte[(3 + i * 4)] = -1;
    }
    this.overlayBitmap = Bitmap.createBitmap(this.mSize[0], this.mSize[1], Bitmap.Config.ARGB_8888);
    this.overlayBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(arrayOfByte));
    this.drawable = new BitmapDrawable(this.overlayBitmap);
    this.metrics = new DisplayMetrics();
    ((Activity)getContext()).getWindowManager().getDefaultDisplay().getMetrics(this.metrics);
  }
  
  public void addOverlay(Activity paramActivity)
  {
    ((ViewGroup)paramActivity.getWindow().getDecorView()).addView(this);
    setVisibility(0);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (this.overlayBitmap == null)
    {
      super.dispatchDraw(paramCanvas);
      return;
    }
    double d = this.metrics.heightPixels - this.drawable.getIntrinsicHeight() * this.mScale[1];
    if (d < this.mTop) {
      this.mTop = d;
    }
    int i = (int)(this.mLeft + this.drawable.getIntrinsicWidth() * this.metrics.density * this.mScale[0]);
    int j = (int)(this.mTop + this.drawable.getIntrinsicHeight() * this.metrics.density * this.mScale[1]);
    this.drawable.setBounds((int)this.mLeft, (int)this.mTop, i, j);
    this.drawable.setAlpha(100);
    this.drawable.draw(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }
  
  public void removeOverlay(Activity paramActivity, View paramView)
  {
    try
    {
      ((ViewGroup)paramActivity.getWindow().getDecorView()).removeView(paramView);
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.vuforia.ar.pl.DrawOverlayView
 * JD-Core Version:    0.7.0.1
 */