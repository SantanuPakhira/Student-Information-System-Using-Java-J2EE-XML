.class public Lnet/gotev/uploadservice/http/impl/HurlStackConnection;
.super Ljava/lang/Object;
.source "HurlStackConnection.java"

# interfaces
.implements Lnet/gotev/uploadservice/http/HttpConnection;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZII)V
    .registers 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "followRedirects"    # Z
    .param p4, "useCaches"    # Z
    .param p5, "connectTimeout"    # I
    .param p6, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "creating new connection"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 33
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 34
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 35
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 36
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 37
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 38
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 39
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private getResponseBodyAsByteArray(Ljava/io/InputStream;)[B
    .registers 7
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 108
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 114
    .local v0, "buffer":[B
    :goto_9
    const/4 v3, 0x0

    :try_start_a
    array-length v4, v0

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, "bytesRead":I
    if-lez v2, :cond_17

    .line 115
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_9

    .line 117
    .end local v2    # "bytesRead":I
    :catch_16
    move-exception v3

    .line 119
    :cond_17
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "closing connection"

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_31

    .line 128
    :try_start_11
    iget-object v1, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_3d

    .line 132
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 133
    iget-object v1, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2c} :catch_3b

    .line 137
    :goto_2c
    :try_start_2c
    iget-object v1, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_32

    .line 142
    :cond_31
    :goto_31
    return-void

    .line 138
    :catch_32
    move-exception v0

    .line 139
    .local v0, "exc":Ljava/lang/Exception;
    sget-object v1, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error while closing connection"

    invoke-static {v1, v2, v0}, Lnet/gotev/uploadservice/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_31

    .line 134
    .end local v0    # "exc":Ljava/lang/Exception;
    :catch_3b
    move-exception v1

    goto :goto_2c

    .line 129
    :catch_3d
    move-exception v1

    goto :goto_1a
.end method

.method public getServerResponseBody()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    const/4 v1, 0x0

    .line 88
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    .line 89
    iget-object v2, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 94
    :goto_12
    invoke-direct {p0, v1}, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->getResponseBodyAsByteArray(Ljava/io/InputStream;)[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2c

    move-result-object v2

    .line 97
    if-eqz v1, :cond_1b

    .line 99
    :try_start_18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_23

    .line 102
    :cond_1b
    :goto_1b
    return-object v2

    .line 91
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_2c

    move-result-object v1

    goto :goto_12

    .line 100
    :catch_23
    move-exception v0

    .line 101
    .local v0, "exc":Ljava/lang/Exception;
    sget-object v3, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error while closing server response stream"

    invoke-static {v3, v4, v0}, Lnet/gotev/uploadservice/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 97
    .end local v0    # "exc":Ljava/lang/Exception;
    :catchall_2c
    move-exception v2

    if-eqz v1, :cond_32

    .line 99
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33

    .line 102
    :cond_32
    :goto_32
    throw v2

    .line 100
    :catch_33
    move-exception v0

    .line 101
    .restart local v0    # "exc":Ljava/lang/Exception;
    sget-object v3, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error while closing server response stream"

    invoke-static {v3, v4, v0}, Lnet/gotev/uploadservice/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32
.end method

.method public getServerResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public setHeaders(Ljava/util/List;ZJ)V
    .registers 10
    .param p2, "isFixedLengthStreamingMode"    # Z
    .param p3, "totalBodyBytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lnet/gotev/uploadservice/NameValue;>;"
    if-eqz p2, :cond_41

    .line 47
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2b

    .line 48
    iget-object v1, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p3, p4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 63
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/NameValue;

    .line 64
    .local v0, "param":Lnet/gotev/uploadservice/NameValue;
    iget-object v2, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/NameValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/gotev/uploadservice/NameValue;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 51
    .end local v0    # "param":Lnet/gotev/uploadservice/NameValue;
    :cond_2b
    const-wide/32 v2, 0x7fffffff

    cmp-long v1, p3, v2

    if-lez v1, :cond_3a

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You need Android API version 19 or newer to upload more than 2GB in a single request using fixed size content length. Try switching to chunked mode instead, but make sure your server side supports it!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_3a
    iget-object v1, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    long-to-int v2, p3

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_d

    .line 60
    :cond_41
    iget-object v1, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_d

    .line 66
    :cond_48
    return-void
.end method

.method public writeBody([B)V
    .registers 5
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 71
    return-void
.end method

.method public writeBody([BI)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "lengthToWriteFromStart"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lnet/gotev/uploadservice/http/impl/HurlStackConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    return-void
.end method
