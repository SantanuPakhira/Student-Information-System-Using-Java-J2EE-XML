.class public Lnet/gotev/uploadservice/http/impl/HurlStack;
.super Ljava/lang/Object;
.source "HurlStack.java"

# interfaces
.implements Lnet/gotev/uploadservice/http/HttpStack;


# instance fields
.field private mConnectTimeout:I

.field private mFollowRedirects:Z

.field private mReadTimeout:I

.field private mUseCaches:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mFollowRedirects:Z

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mUseCaches:Z

    .line 22
    const/16 v0, 0x3a98

    iput v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mConnectTimeout:I

    .line 23
    const/16 v0, 0x7530

    iput v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mReadTimeout:I

    .line 24
    return-void
.end method

.method public constructor <init>(ZZII)V
    .registers 5
    .param p1, "followRedirects"    # Z
    .param p2, "useCaches"    # Z
    .param p3, "connectTimeout"    # I
    .param p4, "readTimeout"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mFollowRedirects:Z

    .line 31
    iput-boolean p2, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mUseCaches:Z

    .line 32
    iput p3, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mConnectTimeout:I

    .line 33
    iput p4, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mReadTimeout:I

    .line 34
    return-void
.end method


# virtual methods
.method public createNewConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/http/HttpConnection;
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;

    iget-boolean v3, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mFollowRedirects:Z

    iget-boolean v4, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mUseCaches:Z

    iget v5, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mConnectTimeout:I

    iget v6, p0, Lnet/gotev/uploadservice/http/impl/HurlStack;->mReadTimeout:I

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;-><init>(Ljava/lang/String;Ljava/lang/String;ZZII)V

    return-object v0
.end method
