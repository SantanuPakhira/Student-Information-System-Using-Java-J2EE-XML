.class public Lnet/gotev/uploadservice/BinaryUploadTask;
.super Lnet/gotev/uploadservice/HttpUploadTask;
.source "BinaryUploadTask.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBodyLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lnet/gotev/uploadservice/BinaryUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadFile;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method protected writeBody(Lnet/gotev/uploadservice/http/HttpConnection;)V
    .registers 4
    .param p1, "connection"    # Lnet/gotev/uploadservice/http/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lnet/gotev/uploadservice/BinaryUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadFile;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadFile;->getStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/BinaryUploadTask;->writeStream(Ljava/io/InputStream;)V

    .line 24
    return-void
.end method
