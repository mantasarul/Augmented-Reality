package com.unity3d.player;

import java.net.CookieHandler;
import java.net.CookieManager;
import java.nio.ByteBuffer;
import java.security.cert.CertPathValidatorException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

class UnityWebRequest
  implements Runnable
{
  private static final HostnameVerifier k = new HostnameVerifier()
  {
    public final boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
    {
      return true;
    }
  };
  private long a;
  private String b;
  private String c;
  private Map d;
  private boolean e;
  private int f;
  private long g;
  private long h;
  private boolean i;
  private boolean j;
  
  static
  {
    if (CookieHandler.getDefault() == null) {
      CookieHandler.setDefault(new CookieManager());
    }
  }
  
  UnityWebRequest(long paramLong, String paramString1, Map paramMap, String paramString2, boolean paramBoolean, int paramInt)
  {
    this.a = paramLong;
    this.b = paramString2;
    this.c = paramString1;
    this.d = paramMap;
    this.e = paramBoolean;
    this.f = paramInt;
  }
  
  private static native void contentLengthCallback(long paramLong, int paramInt);
  
  private static native boolean downloadCallback(long paramLong, ByteBuffer paramByteBuffer, int paramInt);
  
  private static native void errorCallback(long paramLong, int paramInt, String paramString);
  
  private boolean hasTimedOut()
  {
    if (this.f <= 0) {}
    while (System.currentTimeMillis() - this.g < this.f) {
      return false;
    }
    return true;
  }
  
  private static native void headerCallback(long paramLong, String paramString1, String paramString2);
  
  private static native void responseCodeCallback(long paramLong, int paramInt);
  
  /* Error */
  private void runSafe()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 73	java/lang/System:currentTimeMillis	()J
    //   4: putfield 75	com/unity3d/player/UnityWebRequest:g	J
    //   7: new 95	java/net/URL
    //   10: dup
    //   11: aload_0
    //   12: getfield 51	com/unity3d/player/UnityWebRequest:b	Ljava/lang/String;
    //   15: invokespecial 98	java/net/URL:<init>	(Ljava/lang/String;)V
    //   18: astore_1
    //   19: aload_1
    //   20: invokevirtual 102	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   23: astore 4
    //   25: aload 4
    //   27: aload_0
    //   28: getfield 59	com/unity3d/player/UnityWebRequest:f	I
    //   31: invokevirtual 108	java/net/URLConnection:setConnectTimeout	(I)V
    //   34: aload 4
    //   36: aload_0
    //   37: getfield 59	com/unity3d/player/UnityWebRequest:f	I
    //   40: invokevirtual 111	java/net/URLConnection:setReadTimeout	(I)V
    //   43: aload 4
    //   45: instanceof 113
    //   48: ifeq +54 -> 102
    //   51: aload 4
    //   53: checkcast 113	javax/net/ssl/HttpsURLConnection
    //   56: astore 30
    //   58: aload_0
    //   59: getfield 57	com/unity3d/player/UnityWebRequest:e	Z
    //   62: ifeq +745 -> 807
    //   65: new 115	com/unity3d/player/UnityWebRequest$2
    //   68: dup
    //   69: aload_0
    //   70: invokespecial 118	com/unity3d/player/UnityWebRequest$2:<init>	(Lcom/unity3d/player/UnityWebRequest;)V
    //   73: astore 31
    //   75: aload 30
    //   77: getstatic 45	com/unity3d/player/UnityWebRequest:k	Ljavax/net/ssl/HostnameVerifier;
    //   80: invokevirtual 122	javax/net/ssl/HttpsURLConnection:setHostnameVerifier	(Ljavax/net/ssl/HostnameVerifier;)V
    //   83: aload 31
    //   85: invokestatic 127	com/unity3d/player/b:a	(Lcom/unity3d/player/b$b;)Ljavax/net/ssl/SSLSocketFactory;
    //   88: astore 32
    //   90: aload 32
    //   92: ifnull +10 -> 102
    //   95: aload 30
    //   97: aload 32
    //   99: invokevirtual 131	javax/net/ssl/HttpsURLConnection:setSSLSocketFactory	(Ljavax/net/ssl/SSLSocketFactory;)V
    //   102: aload_1
    //   103: invokevirtual 135	java/net/URL:getProtocol	()Ljava/lang/String;
    //   106: ldc 137
    //   108: invokevirtual 143	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   111: ifeq +40 -> 151
    //   114: aload_1
    //   115: invokevirtual 146	java/net/URL:getHost	()Ljava/lang/String;
    //   118: invokevirtual 149	java/lang/String:isEmpty	()Z
    //   121: ifne +30 -> 151
    //   124: aload_0
    //   125: ldc 151
    //   127: invokevirtual 154	com/unity3d/player/UnityWebRequest:malformattedUrlCallback	(Ljava/lang/String;)V
    //   130: return
    //   131: astore_3
    //   132: aload_0
    //   133: aload_3
    //   134: invokevirtual 157	java/net/MalformedURLException:toString	()Ljava/lang/String;
    //   137: invokevirtual 154	com/unity3d/player/UnityWebRequest:malformattedUrlCallback	(Ljava/lang/String;)V
    //   140: return
    //   141: astore_2
    //   142: aload_0
    //   143: aload_2
    //   144: invokevirtual 158	java/io/IOException:toString	()Ljava/lang/String;
    //   147: invokevirtual 160	com/unity3d/player/UnityWebRequest:errorCallback	(Ljava/lang/String;)V
    //   150: return
    //   151: aload 4
    //   153: instanceof 162
    //   156: ifeq +63 -> 219
    //   159: aload 4
    //   161: checkcast 162	java/net/HttpURLConnection
    //   164: astore 29
    //   166: aload 29
    //   168: aload_0
    //   169: getfield 53	com/unity3d/player/UnityWebRequest:c	Ljava/lang/String;
    //   172: invokevirtual 165	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   175: aload 29
    //   177: iconst_0
    //   178: invokevirtual 169	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   181: aload_0
    //   182: getfield 171	com/unity3d/player/UnityWebRequest:h	J
    //   185: lconst_0
    //   186: lcmp
    //   187: ifle +32 -> 219
    //   190: aload_0
    //   191: getfield 173	com/unity3d/player/UnityWebRequest:j	Z
    //   194: ifeq +98 -> 292
    //   197: aload 29
    //   199: iconst_0
    //   200: invokevirtual 176	java/net/HttpURLConnection:setChunkedStreamingMode	(I)V
    //   203: aload_0
    //   204: getfield 178	com/unity3d/player/UnityWebRequest:i	Z
    //   207: ifeq +12 -> 219
    //   210: aload 29
    //   212: ldc 180
    //   214: ldc 182
    //   216: invokevirtual 186	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   219: aload_0
    //   220: getfield 55	com/unity3d/player/UnityWebRequest:d	Ljava/util/Map;
    //   223: ifnull +94 -> 317
    //   226: aload_0
    //   227: getfield 55	com/unity3d/player/UnityWebRequest:d	Ljava/util/Map;
    //   230: invokeinterface 192 1 0
    //   235: invokeinterface 198 1 0
    //   240: astore 26
    //   242: aload 26
    //   244: invokeinterface 203 1 0
    //   249: ifeq +68 -> 317
    //   252: aload 26
    //   254: invokeinterface 207 1 0
    //   259: checkcast 209	java/util/Map$Entry
    //   262: astore 27
    //   264: aload 4
    //   266: aload 27
    //   268: invokeinterface 212 1 0
    //   273: checkcast 139	java/lang/String
    //   276: aload 27
    //   278: invokeinterface 215 1 0
    //   283: checkcast 139	java/lang/String
    //   286: invokevirtual 216	java/net/URLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   289: goto -47 -> 242
    //   292: aload 29
    //   294: aload_0
    //   295: getfield 171	com/unity3d/player/UnityWebRequest:h	J
    //   298: l2i
    //   299: invokevirtual 219	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   302: goto -99 -> 203
    //   305: astore 28
    //   307: aload_0
    //   308: aload 28
    //   310: invokevirtual 220	java/net/ProtocolException:toString	()Ljava/lang/String;
    //   313: invokevirtual 223	com/unity3d/player/UnityWebRequest:badProtocolCallback	(Ljava/lang/String;)V
    //   316: return
    //   317: ldc 224
    //   319: invokestatic 230	java/nio/ByteBuffer:allocateDirect	(I)Ljava/nio/ByteBuffer;
    //   322: astore 5
    //   324: aload_0
    //   325: aconst_null
    //   326: invokevirtual 234	com/unity3d/player/UnityWebRequest:uploadCallback	(Ljava/nio/ByteBuffer;)I
    //   329: ifle +97 -> 426
    //   332: aload 4
    //   334: iconst_1
    //   335: invokevirtual 237	java/net/URLConnection:setDoOutput	(Z)V
    //   338: aload 4
    //   340: invokevirtual 241	java/net/URLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   343: astore 23
    //   345: aload_0
    //   346: aload 5
    //   348: invokevirtual 234	com/unity3d/player/UnityWebRequest:uploadCallback	(Ljava/nio/ByteBuffer;)I
    //   351: istore 24
    //   353: iload 24
    //   355: ifle +71 -> 426
    //   358: aload_0
    //   359: invokespecial 243	com/unity3d/player/UnityWebRequest:hasTimedOut	()Z
    //   362: ifeq +32 -> 394
    //   365: aload 23
    //   367: invokevirtual 248	java/io/OutputStream:close	()V
    //   370: aload_0
    //   371: getfield 49	com/unity3d/player/UnityWebRequest:a	J
    //   374: bipush 14
    //   376: ldc 250
    //   378: invokestatic 252	com/unity3d/player/UnityWebRequest:errorCallback	(JILjava/lang/String;)V
    //   381: return
    //   382: astore 22
    //   384: aload_0
    //   385: aload 22
    //   387: invokevirtual 253	java/lang/Exception:toString	()Ljava/lang/String;
    //   390: invokevirtual 160	com/unity3d/player/UnityWebRequest:errorCallback	(Ljava/lang/String;)V
    //   393: return
    //   394: aload 23
    //   396: aload 5
    //   398: invokevirtual 257	java/nio/ByteBuffer:array	()[B
    //   401: aload 5
    //   403: invokevirtual 261	java/nio/ByteBuffer:arrayOffset	()I
    //   406: iload 24
    //   408: invokevirtual 265	java/io/OutputStream:write	([BII)V
    //   411: aload_0
    //   412: aload 5
    //   414: invokevirtual 234	com/unity3d/player/UnityWebRequest:uploadCallback	(Ljava/nio/ByteBuffer;)I
    //   417: istore 25
    //   419: iload 25
    //   421: istore 24
    //   423: goto -70 -> 353
    //   426: aload 4
    //   428: instanceof 162
    //   431: ifeq +19 -> 450
    //   434: aload 4
    //   436: checkcast 162	java/net/HttpURLConnection
    //   439: astore 17
    //   441: aload_0
    //   442: aload 17
    //   444: invokevirtual 268	java/net/HttpURLConnection:getResponseCode	()I
    //   447: invokevirtual 270	com/unity3d/player/UnityWebRequest:responseCodeCallback	(I)V
    //   450: aload 4
    //   452: invokevirtual 274	java/net/URLConnection:getHeaderFields	()Ljava/util/Map;
    //   455: astore 6
    //   457: aload_0
    //   458: aload 6
    //   460: invokevirtual 277	com/unity3d/player/UnityWebRequest:headerCallback	(Ljava/util/Map;)V
    //   463: aload 6
    //   465: ifnull +16 -> 481
    //   468: aload 6
    //   470: ldc_w 279
    //   473: invokeinterface 283 2 0
    //   478: ifne +27 -> 505
    //   481: aload 4
    //   483: invokevirtual 286	java/net/URLConnection:getContentLength	()I
    //   486: iconst_m1
    //   487: if_icmpeq +18 -> 505
    //   490: aload_0
    //   491: ldc_w 279
    //   494: aload 4
    //   496: invokevirtual 286	java/net/URLConnection:getContentLength	()I
    //   499: invokestatic 290	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   502: invokevirtual 292	com/unity3d/player/UnityWebRequest:headerCallback	(Ljava/lang/String;Ljava/lang/String;)V
    //   505: aload 6
    //   507: ifnull +16 -> 523
    //   510: aload 6
    //   512: ldc_w 294
    //   515: invokeinterface 283 2 0
    //   520: ifne +23 -> 543
    //   523: aload 4
    //   525: invokevirtual 297	java/net/URLConnection:getContentType	()Ljava/lang/String;
    //   528: ifnull +15 -> 543
    //   531: aload_0
    //   532: ldc_w 294
    //   535: aload 4
    //   537: invokevirtual 297	java/net/URLConnection:getContentType	()Ljava/lang/String;
    //   540: invokevirtual 292	com/unity3d/player/UnityWebRequest:headerCallback	(Ljava/lang/String;Ljava/lang/String;)V
    //   543: aload_0
    //   544: aload 4
    //   546: invokevirtual 286	java/net/URLConnection:getContentLength	()I
    //   549: invokevirtual 299	com/unity3d/player/UnityWebRequest:contentLengthCallback	(I)V
    //   552: aload 4
    //   554: instanceof 162
    //   557: ifeq +244 -> 801
    //   560: aload 4
    //   562: checkcast 162	java/net/HttpURLConnection
    //   565: astore 16
    //   567: aload_0
    //   568: aload 16
    //   570: invokevirtual 268	java/net/HttpURLConnection:getResponseCode	()I
    //   573: invokevirtual 270	com/unity3d/player/UnityWebRequest:responseCodeCallback	(I)V
    //   576: aload 16
    //   578: invokevirtual 303	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   581: astore 12
    //   583: aload 12
    //   585: ifnonnull +10 -> 595
    //   588: aload 4
    //   590: invokevirtual 306	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   593: astore 12
    //   595: aload 12
    //   597: invokestatic 312	java/nio/channels/Channels:newChannel	(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    //   600: astore 13
    //   602: aload 13
    //   604: aload 5
    //   606: invokeinterface 317 2 0
    //   611: istore 14
    //   613: iload 14
    //   615: iconst_m1
    //   616: if_icmpeq +122 -> 738
    //   619: aload_0
    //   620: invokespecial 243	com/unity3d/player/UnityWebRequest:hasTimedOut	()Z
    //   623: ifeq +84 -> 707
    //   626: aload 13
    //   628: invokeinterface 318 1 0
    //   633: aload_0
    //   634: getfield 49	com/unity3d/player/UnityWebRequest:a	J
    //   637: bipush 14
    //   639: ldc 250
    //   641: invokestatic 252	com/unity3d/player/UnityWebRequest:errorCallback	(JILjava/lang/String;)V
    //   644: return
    //   645: astore 11
    //   647: aload_0
    //   648: aload 11
    //   650: invokevirtual 319	java/net/UnknownHostException:toString	()Ljava/lang/String;
    //   653: invokevirtual 322	com/unity3d/player/UnityWebRequest:unknownHostCallback	(Ljava/lang/String;)V
    //   656: return
    //   657: astore 21
    //   659: aload_0
    //   660: aload 21
    //   662: invokevirtual 319	java/net/UnknownHostException:toString	()Ljava/lang/String;
    //   665: invokevirtual 322	com/unity3d/player/UnityWebRequest:unknownHostCallback	(Ljava/lang/String;)V
    //   668: return
    //   669: astore 20
    //   671: aload_0
    //   672: aload 20
    //   674: invokevirtual 326	com/unity3d/player/UnityWebRequest:sslCannotConnectCallback	(Ljavax/net/ssl/SSLException;)V
    //   677: return
    //   678: astore 19
    //   680: aload_0
    //   681: getfield 49	com/unity3d/player/UnityWebRequest:a	J
    //   684: bipush 14
    //   686: aload 19
    //   688: invokevirtual 327	java/net/SocketTimeoutException:toString	()Ljava/lang/String;
    //   691: invokestatic 252	com/unity3d/player/UnityWebRequest:errorCallback	(JILjava/lang/String;)V
    //   694: return
    //   695: astore 18
    //   697: aload_0
    //   698: aload 18
    //   700: invokevirtual 158	java/io/IOException:toString	()Ljava/lang/String;
    //   703: invokevirtual 160	com/unity3d/player/UnityWebRequest:errorCallback	(Ljava/lang/String;)V
    //   706: return
    //   707: aload_0
    //   708: aload 5
    //   710: iload 14
    //   712: invokevirtual 330	com/unity3d/player/UnityWebRequest:downloadCallback	(Ljava/nio/ByteBuffer;I)Z
    //   715: ifeq +23 -> 738
    //   718: aload 5
    //   720: invokevirtual 334	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   723: pop
    //   724: aload 13
    //   726: aload 5
    //   728: invokeinterface 317 2 0
    //   733: istore 14
    //   735: goto -122 -> 613
    //   738: aload 13
    //   740: invokeinterface 318 1 0
    //   745: return
    //   746: astore 10
    //   748: aload_0
    //   749: aload 10
    //   751: invokevirtual 326	com/unity3d/player/UnityWebRequest:sslCannotConnectCallback	(Ljavax/net/ssl/SSLException;)V
    //   754: return
    //   755: astore 9
    //   757: aload_0
    //   758: getfield 49	com/unity3d/player/UnityWebRequest:a	J
    //   761: bipush 14
    //   763: aload 9
    //   765: invokevirtual 327	java/net/SocketTimeoutException:toString	()Ljava/lang/String;
    //   768: invokestatic 252	com/unity3d/player/UnityWebRequest:errorCallback	(JILjava/lang/String;)V
    //   771: return
    //   772: astore 8
    //   774: aload_0
    //   775: getfield 49	com/unity3d/player/UnityWebRequest:a	J
    //   778: bipush 14
    //   780: aload 8
    //   782: invokevirtual 158	java/io/IOException:toString	()Ljava/lang/String;
    //   785: invokestatic 252	com/unity3d/player/UnityWebRequest:errorCallback	(JILjava/lang/String;)V
    //   788: return
    //   789: astore 7
    //   791: aload_0
    //   792: aload 7
    //   794: invokevirtual 253	java/lang/Exception:toString	()Ljava/lang/String;
    //   797: invokevirtual 160	com/unity3d/player/UnityWebRequest:errorCallback	(Ljava/lang/String;)V
    //   800: return
    //   801: aconst_null
    //   802: astore 12
    //   804: goto -221 -> 583
    //   807: aconst_null
    //   808: astore 31
    //   810: goto -727 -> 83
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	813	0	this	UnityWebRequest
    //   18	97	1	localURL	java.net.URL
    //   141	3	2	localIOException1	java.io.IOException
    //   131	3	3	localMalformedURLException	java.net.MalformedURLException
    //   23	566	4	localURLConnection	java.net.URLConnection
    //   322	405	5	localByteBuffer	ByteBuffer
    //   455	56	6	localMap	Map
    //   789	4	7	localException1	Exception
    //   772	9	8	localIOException2	java.io.IOException
    //   755	9	9	localSocketTimeoutException1	java.net.SocketTimeoutException
    //   746	4	10	localSSLException1	SSLException
    //   645	4	11	localUnknownHostException1	java.net.UnknownHostException
    //   581	222	12	localInputStream	java.io.InputStream
    //   600	139	13	localReadableByteChannel	java.nio.channels.ReadableByteChannel
    //   611	123	14	m	int
    //   565	12	16	localHttpURLConnection1	java.net.HttpURLConnection
    //   439	4	17	localHttpURLConnection2	java.net.HttpURLConnection
    //   695	4	18	localIOException3	java.io.IOException
    //   678	9	19	localSocketTimeoutException2	java.net.SocketTimeoutException
    //   669	4	20	localSSLException2	SSLException
    //   657	4	21	localUnknownHostException2	java.net.UnknownHostException
    //   382	4	22	localException2	Exception
    //   343	52	23	localOutputStream	java.io.OutputStream
    //   351	71	24	n	int
    //   417	3	25	i1	int
    //   240	13	26	localIterator	Iterator
    //   262	15	27	localEntry	Map.Entry
    //   305	4	28	localProtocolException	java.net.ProtocolException
    //   164	129	29	localHttpURLConnection3	java.net.HttpURLConnection
    //   56	40	30	localHttpsURLConnection	javax.net.ssl.HttpsURLConnection
    //   73	736	31	local2	2
    //   88	10	32	localSSLSocketFactory	javax.net.ssl.SSLSocketFactory
    // Exception table:
    //   from	to	target	type
    //   7	83	131	java/net/MalformedURLException
    //   83	90	131	java/net/MalformedURLException
    //   95	102	131	java/net/MalformedURLException
    //   7	83	141	java/io/IOException
    //   83	90	141	java/io/IOException
    //   95	102	141	java/io/IOException
    //   159	203	305	java/net/ProtocolException
    //   203	219	305	java/net/ProtocolException
    //   292	302	305	java/net/ProtocolException
    //   338	353	382	java/lang/Exception
    //   358	381	382	java/lang/Exception
    //   394	419	382	java/lang/Exception
    //   552	583	645	java/net/UnknownHostException
    //   588	595	645	java/net/UnknownHostException
    //   595	613	645	java/net/UnknownHostException
    //   619	644	645	java/net/UnknownHostException
    //   707	735	645	java/net/UnknownHostException
    //   738	745	645	java/net/UnknownHostException
    //   441	450	657	java/net/UnknownHostException
    //   441	450	669	javax/net/ssl/SSLException
    //   441	450	678	java/net/SocketTimeoutException
    //   441	450	695	java/io/IOException
    //   552	583	746	javax/net/ssl/SSLException
    //   588	595	746	javax/net/ssl/SSLException
    //   595	613	746	javax/net/ssl/SSLException
    //   619	644	746	javax/net/ssl/SSLException
    //   707	735	746	javax/net/ssl/SSLException
    //   738	745	746	javax/net/ssl/SSLException
    //   552	583	755	java/net/SocketTimeoutException
    //   588	595	755	java/net/SocketTimeoutException
    //   595	613	755	java/net/SocketTimeoutException
    //   619	644	755	java/net/SocketTimeoutException
    //   707	735	755	java/net/SocketTimeoutException
    //   738	745	755	java/net/SocketTimeoutException
    //   552	583	772	java/io/IOException
    //   588	595	772	java/io/IOException
    //   595	613	772	java/io/IOException
    //   619	644	772	java/io/IOException
    //   707	735	772	java/io/IOException
    //   738	745	772	java/io/IOException
    //   552	583	789	java/lang/Exception
    //   588	595	789	java/lang/Exception
    //   595	613	789	java/lang/Exception
    //   619	644	789	java/lang/Exception
    //   707	735	789	java/lang/Exception
    //   738	745	789	java/lang/Exception
  }
  
  private static native int uploadCallback(long paramLong, ByteBuffer paramByteBuffer);
  
  private static native boolean validateCertificateCallback(long paramLong, byte[] paramArrayOfByte);
  
  protected void badProtocolCallback(String paramString)
  {
    errorCallback(this.a, 4, paramString);
  }
  
  protected void contentLengthCallback(int paramInt)
  {
    contentLengthCallback(this.a, paramInt);
  }
  
  protected boolean downloadCallback(ByteBuffer paramByteBuffer, int paramInt)
  {
    return downloadCallback(this.a, paramByteBuffer, paramInt);
  }
  
  protected void errorCallback(String paramString)
  {
    errorCallback(this.a, 2, paramString);
  }
  
  protected void headerCallback(String paramString1, String paramString2)
  {
    headerCallback(this.a, paramString1, paramString2);
  }
  
  protected void headerCallback(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() == 0)) {
      return;
    }
    Iterator localIterator1 = paramMap.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      String str = (String)localEntry.getKey();
      if (str == null) {
        str = "Status";
      }
      Iterator localIterator2 = ((List)localEntry.getValue()).iterator();
      while (localIterator2.hasNext()) {
        headerCallback(str, (String)localIterator2.next());
      }
    }
  }
  
  protected void malformattedUrlCallback(String paramString)
  {
    errorCallback(this.a, 5, paramString);
  }
  
  protected void responseCodeCallback(int paramInt)
  {
    responseCodeCallback(this.a, paramInt);
  }
  
  public void run()
  {
    try
    {
      runSafe();
      return;
    }
    catch (Exception localException)
    {
      errorCallback(localException.toString());
    }
  }
  
  void setupTransferSettings(long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.h = paramLong;
    this.i = paramBoolean1;
    this.j = paramBoolean2;
  }
  
  protected void sslCannotConnectCallback(SSLException paramSSLException)
  {
    String str = paramSSLException.toString();
    int m = 16;
    for (;;)
    {
      if (paramSSLException != null) {
        if (!(paramSSLException instanceof SSLKeyException)) {
          break label32;
        }
      }
      for (m = 23;; m = 25)
      {
        errorCallback(this.a, m, str);
        return;
        label32:
        if ((!(paramSSLException instanceof SSLPeerUnverifiedException)) && (!(paramSSLException instanceof CertPathValidatorException))) {
          break;
        }
      }
      paramSSLException = paramSSLException.getCause();
    }
  }
  
  protected void unknownHostCallback(String paramString)
  {
    errorCallback(this.a, 7, paramString);
  }
  
  protected int uploadCallback(ByteBuffer paramByteBuffer)
  {
    return uploadCallback(this.a, paramByteBuffer);
  }
  
  protected boolean validateCertificateCallback(byte[] paramArrayOfByte)
  {
    return validateCertificateCallback(this.a, paramArrayOfByte);
  }
}


/* Location:           C:\Users\shovon\Desktop\bangla assignment\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.unity3d.player.UnityWebRequest
 * JD-Core Version:    0.7.0.1
 */