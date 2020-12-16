package com.unity3d.player;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.DisplayMetrics;
import android.view.View;

public final class l
  extends View
{
  final int a;
  final int b;
  Bitmap c;
  Bitmap d;
  
  public l(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.a = paramInt;
    this.b = getResources().getIdentifier("unity_static_splash", "drawable", getContext().getPackageName());
    if (this.b != 0) {
      forceLayout();
    }
  }
  
  public final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.c != null)
    {
      this.c.recycle();
      this.c = null;
    }
    if (this.d != null)
    {
      this.d.recycle();
      this.d = null;
    }
  }
  
  public final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.b == 0) {}
    label7:
    int i;
    int j;
    int k;
    int m;
    do
    {
      return;
      if (this.c == null)
      {
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inScaled = false;
        this.c = BitmapFactory.decodeResource(getResources(), this.b, localOptions);
      }
      i = this.c.getWidth();
      j = this.c.getHeight();
      k = getWidth();
      m = getHeight();
    } while ((k == 0) || (m == 0));
    float f = i / j;
    if (k / m <= f) {}
    int i2;
    int i3;
    for (int n = 1;; n = 0) {
      switch (1.a[(-1 + this.a)])
      {
      default: 
        i2 = j;
        i3 = i;
        if (this.d != null)
        {
          if ((this.d.getWidth() == i3) && (this.d.getHeight() == i2)) {
            break label7;
          }
          if (this.d != this.c)
          {
            this.d.recycle();
            this.d = null;
          }
        }
        this.d = Bitmap.createScaledBitmap(this.c, i3, i2, true);
        this.d.setDensity(getResources().getDisplayMetrics().densityDpi);
        ColorDrawable localColorDrawable = new ColorDrawable(-16777216);
        BitmapDrawable localBitmapDrawable = new BitmapDrawable(getResources(), this.d);
        localBitmapDrawable.setGravity(17);
        setBackground(new LayerDrawable(new Drawable[] { localColorDrawable, localBitmapDrawable }));
        return;
      }
    }
    if (k < i) {
      i2 = (int)(k / f);
    }
    for (int i4 = k;; i4 = i)
    {
      if (m < i2) {
        label396:
        for (i2 = m;; i2 = m)
        {
          i3 = (int)(f * i2);
          break;
          if (this.a == a.c) {}
          for (int i1 = 1;; i1 = 0)
          {
            if ((n ^ i1) == 0) {
              break label396;
            }
            i2 = (int)(k / f);
            i3 = k;
            break;
          }
        }
      }
      i3 = i4;
      break;
      i2 = j;
    }
  }
  
  static enum a
  {
    static
    {
      int[] arrayOfInt = new int[3];
      arrayOfInt[0] = a;
      arrayOfInt[1] = b;
      arrayOfInt[2] = c;
      d = arrayOfInt;
    }
    
    public static int[] a()
    {
      return (int[])d.clone();
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.l
 * JD-Core Version:    0.7.0.1
 */