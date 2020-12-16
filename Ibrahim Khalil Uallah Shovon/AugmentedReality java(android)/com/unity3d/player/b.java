package com.unity3d.player;

import android.os.Build.VERSION;
import java.net.InetAddress;
import java.net.Socket;
import java.security.Principal;
import java.security.cert.X509Certificate;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public final class b
  extends SSLSocketFactory
{
  private static volatile SSLSocketFactory c;
  private static volatile X509TrustManager d;
  private static final Object e = new Object[0];
  private static final Object f = new Object[0];
  private static final boolean g;
  private final SSLSocketFactory a;
  private final a b;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i >= 16)
    {
      int j = Build.VERSION.SDK_INT;
      bool = false;
      if (j < 20) {
        bool = true;
      }
    }
    g = bool;
  }
  
  private b(b[] paramArrayOfb)
  {
    SSLContext localSSLContext = SSLContext.getInstance("TLS");
    localSSLContext.init(null, paramArrayOfb, null);
    this.a = localSSLContext.getSocketFactory();
    this.b = null;
  }
  
  private Socket a(Socket paramSocket)
  {
    if ((paramSocket != null) && ((paramSocket instanceof SSLSocket)))
    {
      if (g) {
        ((SSLSocket)paramSocket).setEnabledProtocols(((SSLSocket)paramSocket).getSupportedProtocols());
      }
      if (this.b != null) {
        ((SSLSocket)paramSocket).addHandshakeCompletedListener(this.b);
      }
    }
    return paramSocket;
  }
  
  public static SSLSocketFactory a(b paramb)
  {
    if (paramb == null) {}
    try
    {
      return b();
    }
    catch (Exception localException)
    {
      b localb;
      g.Log(5, "CustomSSLSocketFactory: Failed to create SSLSocketFactory (" + localException.getMessage() + ")");
    }
    localb = new b(new b[] { paramb });
    return localb;
    return null;
  }
  
  private static SSLSocketFactory b()
  {
    synchronized (e)
    {
      if (c != null)
      {
        SSLSocketFactory localSSLSocketFactory = c;
        return localSSLSocketFactory;
      }
      b localb = new b(null);
      c = localb;
      return localb;
    }
  }
  
  private static X509TrustManager c()
  {
    synchronized (f)
    {
      if (d != null)
      {
        X509TrustManager localX509TrustManager2 = d;
        return localX509TrustManager2;
      }
    }
    try
    {
      TrustManagerFactory localTrustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
      localTrustManagerFactory.init(null);
      for (TrustManager localTrustManager : localTrustManagerFactory.getTrustManagers()) {
        if ((localTrustManager instanceof X509TrustManager))
        {
          X509TrustManager localX509TrustManager1 = (X509TrustManager)localTrustManager;
          d = localX509TrustManager1;
          return localX509TrustManager1;
          localObject2 = finally;
          throw localObject2;
        }
      }
      return null;
    }
    catch (Exception localException)
    {
      g.Log(5, "CustomSSLSocketFactory: Failed to find X509TrustManager (" + localException.getMessage() + ")");
    }
  }
  
  public final Socket createSocket()
  {
    return a(this.a.createSocket());
  }
  
  public final Socket createSocket(String paramString, int paramInt)
  {
    return a(this.a.createSocket(paramString, paramInt));
  }
  
  public final Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    return a(this.a.createSocket(paramString, paramInt1, paramInetAddress, paramInt2));
  }
  
  public final Socket createSocket(InetAddress paramInetAddress, int paramInt)
  {
    return a(this.a.createSocket(paramInetAddress, paramInt));
  }
  
  public final Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    return a(this.a.createSocket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2));
  }
  
  public final Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
  {
    return a(this.a.createSocket(paramSocket, paramString, paramInt, paramBoolean));
  }
  
  public final String[] getDefaultCipherSuites()
  {
    return this.a.getDefaultCipherSuites();
  }
  
  public final String[] getSupportedCipherSuites()
  {
    return this.a.getSupportedCipherSuites();
  }
  
  final class a
    implements HandshakeCompletedListener
  {
    public final void handshakeCompleted(HandshakeCompletedEvent paramHandshakeCompletedEvent)
    {
      SSLSession localSSLSession = paramHandshakeCompletedEvent.getSession();
      localSSLSession.getCipherSuite();
      localSSLSession.getProtocol();
      try
      {
        localSSLSession.getPeerPrincipal().getName();
        return;
      }
      catch (SSLPeerUnverifiedException localSSLPeerUnverifiedException) {}
    }
  }
  
  public static abstract class b
    implements X509TrustManager
  {
    protected X509TrustManager a = b.a();
    
    public final void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    {
      this.a.checkClientTrusted(paramArrayOfX509Certificate, paramString);
    }
    
    public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
    {
      this.a.checkServerTrusted(paramArrayOfX509Certificate, paramString);
    }
    
    public final X509Certificate[] getAcceptedIssuers()
    {
      return this.a.getAcceptedIssuers();
    }
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.b
 * JD-Core Version:    0.7.0.1
 */