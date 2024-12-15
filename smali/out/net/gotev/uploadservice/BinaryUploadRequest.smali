.class public Lnet/gotev/uploadservice/BinaryUploadRequest;
.super Lnet/gotev/uploadservice/HttpUploadRequest;
.source "BinaryUploadRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lnet/gotev/uploadservice/BinaryUploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uploadId"    # Ljava/lang/String;
    .param p3, "serverUrl"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lnet/gotev/uploadservice/HttpUploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method private logDoesNotSupportParameters()V
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This upload method does not support adding parameters"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method


# virtual methods
.method public addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/HttpUploadRequest;
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
            "Lnet/gotev/uploadservice/HttpUploadRequest;"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lnet/gotev/uploadservice/BinaryUploadRequest;->logDoesNotSupportParameters()V

    .line 127
    return-object p0
.end method

.method public varargs addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lnet/gotev/uploadservice/BinaryUploadRequest;->logDoesNotSupportParameters()V

    .line 121
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 3
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 79
    return-object p0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/BinaryUploadRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Lnet/gotev/uploadservice/BinaryUploadRequest;->logDoesNotSupportParameters()V

    .line 115
    return-object p0
.end method

.method protected getTaskClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 48
    const-class v0, Lnet/gotev/uploadservice/BinaryUploadTask;

    return-object v0
.end method

.method public setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 2
    .param p1, "autoDeleteFiles"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 73
    return-object p0
.end method

.method public bridge synthetic setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/BinaryUploadRequest;->setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/BinaryUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lnet/gotev/uploadservice/HttpUploadRequest;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 85
    return-object p0
.end method

.method public bridge synthetic setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lnet/gotev/uploadservice/BinaryUploadRequest;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 2
    .param p1, "customUserAgent"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 97
    return-object p0
.end method

.method public bridge synthetic setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/BinaryUploadRequest;->setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setFileToUpload(Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lnet/gotev/uploadservice/BinaryUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lnet/gotev/uploadservice/BinaryUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    new-instance v1, Lnet/gotev/uploadservice/UploadFile;

    invoke-direct {v1, p1}, Lnet/gotev/uploadservice/UploadFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/TaskParameters;->addFile(Lnet/gotev/uploadservice/UploadFile;)V

    .line 61
    return-object p0
.end method

.method public setMaxRetries(I)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 2
    .param p1, "maxRetries"    # I

    .prologue
    .line 102
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setMaxRetries(I)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 103
    return-object p0
.end method

.method public bridge synthetic setMaxRetries(I)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/BinaryUploadRequest;->setMaxRetries(I)Lnet/gotev/uploadservice/BinaryUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 91
    return-object p0
.end method

.method public bridge synthetic setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/BinaryUploadRequest;->setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/BinaryUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 2
    .param p1, "config"    # Lnet/gotev/uploadservice/UploadNotificationConfig;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 67
    return-object p0
.end method

.method public bridge synthetic setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/BinaryUploadRequest;->setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/BinaryUploadRequest;

    move-result-object v0

    return-object v0
.end method

.method public setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/BinaryUploadRequest;
    .registers 2
    .param p1, "fixedLength"    # Z

    .prologue
    .line 108
    invoke-super {p0, p1}, Lnet/gotev/uploadservice/HttpUploadRequest;->setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/HttpUploadRequest;

    .line 109
    return-object p0
.end method

.method public bridge synthetic setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/BinaryUploadRequest;->setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/BinaryUploadRequest;

    move-result-object v0

    return-object v0
.end method
