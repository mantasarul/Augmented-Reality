package com.unity3d.player;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public final class k
  extends Dialog
  implements TextWatcher, View.OnClickListener
{
  private static int c = 1627389952;
  private static int d = -1;
  private static int e = 134217728;
  private static int f = 67108864;
  private Context a = null;
  private UnityPlayer b = null;
  
  public k(Context paramContext, UnityPlayer paramUnityPlayer, String paramString1, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2, int paramInt2)
  {
    super(paramContext);
    this.a = paramContext;
    this.b = paramUnityPlayer;
    getWindow().setGravity(80);
    getWindow().requestFeature(1);
    getWindow().setBackgroundDrawable(new ColorDrawable(0));
    setContentView(createSoftInputView());
    getWindow().setLayout(-1, -2);
    getWindow().clearFlags(2);
    if (j.a)
    {
      getWindow().clearFlags(e);
      getWindow().clearFlags(f);
    }
    EditText localEditText = (EditText)findViewById(1057292289);
    Button localButton = (Button)findViewById(1057292290);
    a(localEditText, paramString1, paramInt1, paramBoolean1, paramBoolean2, paramBoolean3, paramString2, paramInt2);
    localButton.setOnClickListener(this);
    localEditText.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public final void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if (paramAnonymousBoolean) {
          k.this.getWindow().setSoftInputMode(5);
        }
      }
    });
  }
  
  private static int a(int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    int i;
    if (paramBoolean1)
    {
      i = 32768;
      if (!paramBoolean2) {
        break label62;
      }
    }
    int n;
    label62:
    for (int j = 131072;; j = 0)
    {
      int k = j | i;
      int m = 0;
      if (paramBoolean3) {
        m = 128;
      }
      n = m | k;
      if ((paramInt >= 0) && (paramInt <= 10)) {
        break label68;
      }
      return n;
      i = 524288;
      break;
    }
    label68:
    int[] arrayOfInt = { 1, 16385, 12290, 17, 2, 3, 8289, 33, 1, 16417, 17 };
    if ((0x2 & arrayOfInt[paramInt]) != 0) {
      return arrayOfInt[paramInt];
    }
    return n | arrayOfInt[paramInt];
  }
  
  private String a()
  {
    EditText localEditText = (EditText)findViewById(1057292289);
    if (localEditText == null) {
      return null;
    }
    return localEditText.getText().toString().trim();
  }
  
  private void a(EditText paramEditText, String paramString1, int paramInt1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2, int paramInt2)
  {
    paramEditText.setImeOptions(6);
    paramEditText.setText(paramString1);
    paramEditText.setHint(paramString2);
    paramEditText.setHintTextColor(c);
    paramEditText.setInputType(a(paramInt1, paramBoolean1, paramBoolean2, paramBoolean3));
    paramEditText.setImeOptions(33554432);
    if (paramInt2 > 0)
    {
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new InputFilter.LengthFilter(paramInt2);
      paramEditText.setFilters(arrayOfInputFilter);
    }
    paramEditText.addTextChangedListener(this);
    paramEditText.setSelection(paramEditText.getText().length());
    paramEditText.setClickable(true);
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    ((EditText)findViewById(1057292289)).setSelection(0, 0);
    this.b.reportSoftInputStr(paramString, 1, paramBoolean);
  }
  
  public final void a(int paramInt)
  {
    EditText localEditText = (EditText)findViewById(1057292289);
    if (localEditText != null)
    {
      if (paramInt > 0)
      {
        InputFilter[] arrayOfInputFilter = new InputFilter[1];
        arrayOfInputFilter[0] = new InputFilter.LengthFilter(paramInt);
        localEditText.setFilters(arrayOfInputFilter);
      }
    }
    else {
      return;
    }
    localEditText.setFilters(new InputFilter[0]);
  }
  
  public final void a(String paramString)
  {
    EditText localEditText = (EditText)findViewById(1057292289);
    if (localEditText != null)
    {
      localEditText.setText(paramString);
      localEditText.setSelection(paramString.length());
    }
  }
  
  public final void afterTextChanged(Editable paramEditable)
  {
    this.b.reportSoftInputStr(paramEditable.toString(), 0, false);
  }
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  protected final View createSoftInputView()
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(this.a);
    localRelativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    localRelativeLayout.setBackgroundColor(d);
    EditText local2 = new EditText(this.a)
    {
      public final boolean onKeyPreIme(int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 4) {
          k.a(k.this, k.a(k.this), true);
        }
        while (paramAnonymousInt == 84) {
          return true;
        }
        return super.onKeyPreIme(paramAnonymousInt, paramAnonymousKeyEvent);
      }
      
      public final void onWindowFocusChanged(boolean paramAnonymousBoolean)
      {
        super.onWindowFocusChanged(paramAnonymousBoolean);
        if (paramAnonymousBoolean) {
          ((InputMethodManager)k.b(k.this).getSystemService("input_method")).showSoftInput(this, 0);
        }
      }
    };
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -2);
    localLayoutParams1.addRule(15);
    localLayoutParams1.addRule(0, 1057292290);
    local2.setLayoutParams(localLayoutParams1);
    local2.setId(1057292289);
    localRelativeLayout.addView(local2);
    Button localButton = new Button(this.a);
    localButton.setText(this.a.getResources().getIdentifier("ok", "string", "android"));
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams2.addRule(15);
    localLayoutParams2.addRule(11);
    localButton.setLayoutParams(localLayoutParams2);
    localButton.setId(1057292290);
    localButton.setBackgroundColor(0);
    localRelativeLayout.addView(localButton);
    ((EditText)localRelativeLayout.findViewById(1057292289)).setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public final boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 6) {
          k.a(k.this, k.a(k.this), false);
        }
        return false;
      }
    });
    localRelativeLayout.setPadding(16, 16, 16, 16);
    return localRelativeLayout;
  }
  
  public final void onBackPressed()
  {
    a(a(), true);
  }
  
  public final void onClick(View paramView)
  {
    a(a(), false);
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.k
 * JD-Core Version:    0.7.0.1
 */