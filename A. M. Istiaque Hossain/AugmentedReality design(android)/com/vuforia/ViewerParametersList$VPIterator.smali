.class Lcom/vuforia/ViewerParametersList$VPIterator;
.super Ljava/lang/Object;
.source "ViewerParametersList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/ViewerParametersList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VPIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/vuforia/ViewerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private next:Lcom/vuforia/ViewerParameters;

.field final synthetic this$0:Lcom/vuforia/ViewerParametersList;


# direct methods
.method constructor <init>(Lcom/vuforia/ViewerParametersList;)V
    .locals 4
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vuforia/ViewerParametersList$VPIterator;->this$0:Lcom/vuforia/ViewerParametersList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuforia/ViewerParametersList$VPIterator;->next:Lcom/vuforia/ViewerParameters;

    .line 46
    invoke-virtual {p1}, Lcom/vuforia/ViewerParametersList;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 47
    #calls: Lcom/vuforia/ViewerParametersList;->begin()Lcom/vuforia/ViewerParameters;
    invoke-static {p1}, Lcom/vuforia/ViewerParametersList;->access$000(Lcom/vuforia/ViewerParametersList;)Lcom/vuforia/ViewerParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/vuforia/ViewerParametersList$VPIterator;->next:Lcom/vuforia/ViewerParameters;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vuforia/ViewerParametersList$VPIterator;->next:Lcom/vuforia/ViewerParameters;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/vuforia/ViewerParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vuforia/ViewerParametersList$VPIterator;->next:Lcom/vuforia/ViewerParameters;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/vuforia/ViewerParametersList$VPIterator;->next:Lcom/vuforia/ViewerParameters;

    .line 60
    iget-object v1, p0, Lcom/vuforia/ViewerParametersList$VPIterator;->this$0:Lcom/vuforia/ViewerParametersList;

    #calls: Lcom/vuforia/ViewerParametersList;->next(Lcom/vuforia/ViewerParameters;)Lcom/vuforia/ViewerParameters;
    invoke-static {v1, v0}, Lcom/vuforia/ViewerParametersList;->access$100(Lcom/vuforia/ViewerParametersList;Lcom/vuforia/ViewerParameters;)Lcom/vuforia/ViewerParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/vuforia/ViewerParametersList$VPIterator;->next:Lcom/vuforia/ViewerParameters;

    .line 61
    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/vuforia/ViewerParametersList$VPIterator;->next()Lcom/vuforia/ViewerParameters;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
