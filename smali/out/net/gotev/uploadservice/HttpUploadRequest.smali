.class public abstract Lnet/gotev/uploadservice/HttpUploadRequest;
.super Ljava/lang/Object;
.source "HttpUploadRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field protected final params:Lnet/gotev/uploadservice/TaskParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lnet/gotev/uploadservice/HttpUploadRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/HttpUploadRequest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uploadId"    # Ljava/lang/String;
    .param p3, "serverUrl"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lnet/gotev/uploadservice/TaskParameters;

    invoke-direct {v0}, Lnet/gotev/uploadservice/TaskParameters;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 37
    if-nez p1, :cond_14

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context MUST not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_14
    iput-object p1, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->context:Landroid/content/Context;

    .line 42
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 43
    :cond_1e
    sget-object v0, Lnet/gotev/uploadservice/HttpUploadRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "null or empty upload ID. Generating it"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/TaskParameters;->setId(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;

    .line 50
    :goto_32
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p3}, Lnet/gotev/uploadservice/TaskParameters;->setUrl(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;

    .line 51
    sget-object v0, Lnet/gotev/uploadservice/HttpUploadRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Created new upload request to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 52
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 46
    :cond_66
    sget-object v0, Lnet/gotev/uploadservice/HttpUploadRequest;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setting provided upload ID"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p2}, Lnet/gotev/uploadservice/TaskParameters;->setId(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;

    goto :goto_32
.end method


# virtual methods
.method public addArrayParameter(Ljava/lang/String;Ljava/util/List;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 6
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
    .line 190
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2, p1, v0}, Lnet/gotev/uploadservice/TaskParameters;->addRequestParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 193
    .end local v0    # "value":Ljava/lang/String;
    :cond_16
    return-object p0
.end method

.method public varargs addArrayParameter(Ljava/lang/String;[Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 7
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    .line 176
    array-length v2, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_e

    aget-object v0, p2, v1

    .line 177
    .local v0, "value":Ljava/lang/String;
    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3, p1, v0}, Lnet/gotev/uploadservice/TaskParameters;->addRequestParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    .end local v0    # "value":Ljava/lang/String;
    :cond_e
    return-object p0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p1, p2}, Lnet/gotev/uploadservice/TaskParameters;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object p0
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 4
    .param p1, "paramName"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p1, p2}, Lnet/gotev/uploadservice/TaskParameters;->addRequestParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-object p0
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getTaskClass()Ljava/lang/Class;
.end method

.method protected initializeIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    const-string v1, "taskParameters"

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->getTaskClass()Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "taskClass":Ljava/lang/Class;
    if-nez v0, :cond_15

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The request must specify a task class!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_15
    const-string v1, "taskClass"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public setAutoDeleteFilesAfterSuccessfulUpload(Z)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3
    .param p1, "autoDeleteFiles"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/TaskParameters;->setAutoDeleteSuccessfullyUploadedFiles(Z)Lnet/gotev/uploadservice/TaskParameters;

    .line 109
    return-object p0
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 8
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "auth":Ljava/lang/String;
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/gotev/uploadservice/TaskParameters;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-object p0
.end method

.method public setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3
    .param p1, "customUserAgent"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/TaskParameters;->setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;

    .line 217
    return-object p0
.end method

.method public setMaxRetries(I)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3
    .param p1, "maxRetries"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/TaskParameters;->setMaxRetries(I)Lnet/gotev/uploadservice/TaskParameters;

    .line 236
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/TaskParameters;->setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;

    .line 204
    return-object p0
.end method

.method public setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3
    .param p1, "config"    # Lnet/gotev/uploadservice/UploadNotificationConfig;

    .prologue
    .line 96
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/TaskParameters;->setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/TaskParameters;

    .line 97
    return-object p0
.end method

.method public setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/HttpUploadRequest;
    .registers 3
    .param p1, "fixedLength"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0, p1}, Lnet/gotev/uploadservice/TaskParameters;->setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/TaskParameters;

    .line 250
    return-object p0
.end method

.method public final startUpload()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->validate()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lnet/gotev/uploadservice/UploadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/HttpUploadRequest;->initializeIntent(Landroid/content/Intent;)V

    .line 65
    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->getActionUpload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 120
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v0, ""

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 121
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request URL cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1e
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specify either http:// or https:// as protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_42
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadRequest;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 130
    return-void
.end method
