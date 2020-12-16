.class final Lcom/unity3d/player/UnityWebRequest$2;
.super Lcom/unity3d/player/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityWebRequest;->runSafe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/unity3d/player/UnityWebRequest;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityWebRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityWebRequest$2;->b:Lcom/unity3d/player/UnityWebRequest;

    invoke-direct {p0}, Lcom/unity3d/player/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/unity3d/player/UnityWebRequest$2;->b:Lcom/unity3d/player/UnityWebRequest;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityWebRequest;->validateCertificateCallback([B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0}, Ljava/security/cert/CertificateException;-><init>()V

    throw v0

    :cond_0
    new-array v0, v1, [B

    goto :goto_0

    :cond_1
    return-void
.end method
