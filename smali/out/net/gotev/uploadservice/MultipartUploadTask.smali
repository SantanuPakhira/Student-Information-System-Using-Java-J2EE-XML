.class public Lnet/gotev/uploadservice/MultipartUploadTask;
.super Lnet/gotev/uploadservice/HttpUploadTask;
.source "MultipartUploadTask.java"


# static fields
.field private static final NEW_LINE:Ljava/lang/String; = "\r\n"

.field protected static final PARAM_UTF8_CHARSET:Ljava/lang/String; = "multipartUtf8Charset"

.field private static final TWO_HYPHENS:Ljava/lang/String; = "--"


# instance fields
.field private final US_ASCII:Ljava/nio/charset/Charset;

.field private boundary:Ljava/lang/String;

.field private boundaryBytes:[B

.field private isUtf8Charset:Z

.field private trailerBytes:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;-><init>()V

    .line 31
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->US_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method private getBoundary()Ljava/lang/String;
    .registers 5

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------AndroidUploadService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoundaryBytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private getFilesLength()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 79
    const-wide/16 v2, 0x0

    .line 81
    .local v2, "total":J
    iget-object v1, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadFile;

    .line 82
    .local v0, "file":Lnet/gotev/uploadservice/UploadFile;
    iget-object v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundaryBytes:[B

    array-length v4, v4

    int-to-long v4, v4

    iget-boolean v6, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->isUtf8Charset:Z

    invoke-virtual {v0, v4, v5, v6}, Lnet/gotev/uploadservice/UploadFile;->getTotalMultipartBytes(JZ)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 83
    goto :goto_c

    .line 85
    .end local v0    # "file":Lnet/gotev/uploadservice/UploadFile;
    :cond_24
    return-wide v2
.end method

.method private getRequestParametersLength()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 89
    const-wide/16 v2, 0x0

    .line 91
    .local v2, "parametersBytes":J
    iget-object v1, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getRequestParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 92
    iget-object v1, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getRequestParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/NameValue;

    .line 95
    .local v0, "parameter":Lnet/gotev/uploadservice/NameValue;
    iget-object v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundaryBytes:[B

    array-length v4, v4

    iget-boolean v5, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->isUtf8Charset:Z

    .line 96
    invoke-virtual {v0, v5}, Lnet/gotev/uploadservice/NameValue;->getMultipartBytes(Z)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 97
    goto :goto_18

    .line 100
    .end local v0    # "parameter":Lnet/gotev/uploadservice/NameValue;
    :cond_32
    return-wide v2
.end method

.method private getTrailerBytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\r\n--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private writeFiles(Lnet/gotev/uploadservice/http/HttpConnection;)V
    .registers 10
    .param p1, "connection"    # Lnet/gotev/uploadservice/http/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v3, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadFile;

    .line 118
    .local v0, "file":Lnet/gotev/uploadservice/UploadFile;
    iget-boolean v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->shouldContinue:Z

    if-nez v4, :cond_1b

    .line 131
    .end local v0    # "file":Lnet/gotev/uploadservice/UploadFile;
    :cond_1a
    return-void

    .line 121
    .restart local v0    # "file":Lnet/gotev/uploadservice/UploadFile;
    :cond_1b
    iget-object v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundaryBytes:[B

    invoke-interface {p1, v4}, Lnet/gotev/uploadservice/http/HttpConnection;->writeBody([B)V

    .line 122
    iget-boolean v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->isUtf8Charset:Z

    invoke-virtual {v0, v4}, Lnet/gotev/uploadservice/UploadFile;->getMultipartHeader(Z)[B

    move-result-object v1

    .line 123
    .local v1, "headerBytes":[B
    invoke-interface {p1, v1}, Lnet/gotev/uploadservice/http/HttpConnection;->writeBody([B)V

    .line 125
    iget-wide v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->uploadedBodyBytes:J

    iget-object v6, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundaryBytes:[B

    array-length v6, v6

    array-length v7, v1

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->uploadedBodyBytes:J

    .line 126
    iget-wide v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->uploadedBodyBytes:J

    iget-wide v6, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->totalBodyBytes:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lnet/gotev/uploadservice/MultipartUploadTask;->broadcastProgress(JJ)V

    .line 128
    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadFile;->getStream()Ljava/io/InputStream;

    move-result-object v2

    .line 129
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {p0, v2}, Lnet/gotev/uploadservice/MultipartUploadTask;->writeStream(Ljava/io/InputStream;)V

    goto :goto_a
.end method

.method private writeRequestParameters(Lnet/gotev/uploadservice/http/HttpConnection;)V
    .registers 10
    .param p1, "connection"    # Lnet/gotev/uploadservice/http/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v2, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getRequestParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 105
    iget-object v2, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getRequestParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/NameValue;

    .line 106
    .local v1, "parameter":Lnet/gotev/uploadservice/NameValue;
    iget-object v3, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundaryBytes:[B

    invoke-interface {p1, v3}, Lnet/gotev/uploadservice/http/HttpConnection;->writeBody([B)V

    .line 107
    iget-boolean v3, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->isUtf8Charset:Z

    invoke-virtual {v1, v3}, Lnet/gotev/uploadservice/NameValue;->getMultipartBytes(Z)[B

    move-result-object v0

    .line 108
    .local v0, "formItemBytes":[B
    invoke-interface {p1, v0}, Lnet/gotev/uploadservice/http/HttpConnection;->writeBody([B)V

    .line 110
    iget-wide v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->uploadedBodyBytes:J

    iget-object v3, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundaryBytes:[B

    array-length v3, v3

    array-length v6, v0

    add-int/2addr v3, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->uploadedBodyBytes:J

    .line 111
    iget-wide v4, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->uploadedBodyBytes:J

    iget-wide v6, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->totalBodyBytes:J

    invoke-virtual {p0, v4, v5, v6, v7}, Lnet/gotev/uploadservice/MultipartUploadTask;->broadcastProgress(JJ)V

    goto :goto_16

    .line 114
    .end local v0    # "formItemBytes":[B
    .end local v1    # "parameter":Lnet/gotev/uploadservice/NameValue;
    :cond_43
    return-void
.end method


# virtual methods
.method protected getBodyLength()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lnet/gotev/uploadservice/MultipartUploadTask;->getRequestParametersLength()J

    move-result-wide v0

    .line 54
    .local v0, "parameterBytes":J
    invoke-direct {p0}, Lnet/gotev/uploadservice/MultipartUploadTask;->getFilesLength()J

    move-result-wide v2

    .line 56
    .local v2, "totalFileBytes":J
    add-long v4, v0, v2

    iget-object v6, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->trailerBytes:[B

    array-length v6, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    return-wide v4
.end method

.method protected init(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V
    .registers 7
    .param p1, "service"    # Lnet/gotev/uploadservice/UploadService;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadTask;->init(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V

    .line 36
    invoke-direct {p0}, Lnet/gotev/uploadservice/MultipartUploadTask;->getBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundary:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lnet/gotev/uploadservice/MultipartUploadTask;->getBoundaryBytes()[B

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundaryBytes:[B

    .line 38
    invoke-direct {p0}, Lnet/gotev/uploadservice/MultipartUploadTask;->getTrailerBytes()[B

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->trailerBytes:[B

    .line 39
    const-string v0, "multipartUtf8Charset"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->isUtf8Charset:Z

    .line 41
    iget-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_51

    .line 42
    iget-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lnet/gotev/uploadservice/TaskParameters;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_34
    iget-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "multipart/form-data; boundary="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/gotev/uploadservice/TaskParameters;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void

    .line 44
    :cond_51
    iget-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lnet/gotev/uploadservice/TaskParameters;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method protected writeBody(Lnet/gotev/uploadservice/http/HttpConnection;)V
    .registers 3
    .param p1, "connection"    # Lnet/gotev/uploadservice/http/HttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/MultipartUploadTask;->writeRequestParameters(Lnet/gotev/uploadservice/http/HttpConnection;)V

    .line 62
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/MultipartUploadTask;->writeFiles(Lnet/gotev/uploadservice/http/HttpConnection;)V

    .line 63
    iget-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadTask;->trailerBytes:[B

    invoke-interface {p1, v0}, Lnet/gotev/uploadservice/http/HttpConnection;->writeBody([B)V

    .line 64
    return-void
.end method
