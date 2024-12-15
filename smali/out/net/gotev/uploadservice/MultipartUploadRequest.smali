.class public Lnet/gotev/uploadservice/MultipartUploadRequest;
.super Lnet/gotev/uploadservice/HttpUploadRequest;
.source "MultipartUploadRequest.java"


# instance fields
.field private isUtf8Charset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/gotev/uploadservice/MultipartUploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uploadId"    # Ljava/lang/String;
    .param p3, "serverUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lnet/gotev/uploadservice/HttpUploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/gotev/uploadservice/MultipartUploadRequest;->isUtf8Charset:Z

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/MultipartUploadRequest;->addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/MultipartUploadRequest;->addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 3
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/gotev/uploadservice/MultipartUploadRequest;"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;->addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 168
    return-object p0
.end method

.method public varargs addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 3
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;->addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 162
    return-object p0
.end method

.method public addFileToUpload(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, p2, v0, v0}, Lnet/gotev/uploadservice/MultipartUploadRequest;->addFileToUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public addFileToUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/gotev/uploadservice/MultipartUploadRequest;->addFileToUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public addFileToUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    new-instance v1, Lnet/gotev/uploadservice/UploadFile;

    invoke-direct {v1, p1, p2, p3, p4}, Lnet/gotev/uploadservice/UploadFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/TaskParameters;->addFile(Lnet/gotev/uploadservice/UploadFile;)V

    .line 90
    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/MultipartUploadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 3
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 144
    return-object p0
.end method

.method public bridge synthetic addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/MultipartUploadRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 3
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 156
    return-object p0
.end method

.method protected getTaskClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 60
    const-class v0, Lnet/gotev/uploadservice/MultipartUploadTask;

    return-object v0
.end method

.method protected initializeIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->initializeIntent(Landroid/content/Intent;)V

    .line 55
    const-string v0, "multipartUtf8Charset"

    iget-boolean v1, p0, Lnet/gotev/uploadservice/MultipartUploadRequest;->isUtf8Charset:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method public bridge synthetic setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 2
    .param p1, "autoDeleteFiles"    # Z

    .prologue
    .line 137
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 138
    return-object p0
.end method

.method public bridge synthetic setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 150
    return-object p0
.end method

.method public bridge synthetic setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 2
    .param p1, "customUserAgent"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 180
    return-object p0
.end method

.method public bridge synthetic setMaxRetries(I)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setMaxRetries(I)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setMaxRetries(I)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 2
    .param p1, "maxRetries"    # I

    .prologue
    .line 185
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setMaxRetries(I)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 186
    return-object p0
.end method

.method public bridge synthetic setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 174
    return-object p0
.end method

.method public bridge synthetic setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 2
    .param p1, "config"    # Lnet/gotev/uploadservice/UploadNotificationConfig;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 132
    return-object p0
.end method

.method public bridge synthetic setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 2
    .param p1, "fixedLength"    # Z

    .prologue
    .line 191
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 192
    return-object p0
.end method

.method public setUtf8Charset()Lnet/gotev/uploadservice/MultipartUploadRequest;
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/MultipartUploadRequest;->isUtf8Charset:Z

    .line 202
    return-object p0
.end method

.method protected validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->validate()V

    .line 67
    iget-object v0, p0, Lnet/gotev/uploadservice/MultipartUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You have to add at least one file to upload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_17
    return-void
.end method
