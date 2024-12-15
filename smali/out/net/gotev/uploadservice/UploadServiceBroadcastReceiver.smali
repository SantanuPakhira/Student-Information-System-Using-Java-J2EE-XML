.class public Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadServiceBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public onCancelled(Ljava/lang/String;)V
    .registers 2
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 130
    return-void
.end method

.method public onCompleted(Ljava/lang/String;I[B)V
    .registers 4
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "serverResponseCode"    # I
    .param p3, "serverResponseBody"    # [B

    .prologue
    .line 122
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 107
    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .registers 3
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 88
    return-void
.end method

.method public onProgress(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "uploadedBytes"    # J
    .param p4, "totalBytes"    # J

    .prologue
    .line 98
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    if-eqz p2, :cond_10

    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->getActionBroadcast()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 51
    :cond_10
    :goto_10
    return-void

    .line 28
    :cond_11
    const-string v0, "broadcastData"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lnet/gotev/uploadservice/BroadcastData;

    .line 30
    .local v6, "data":Lnet/gotev/uploadservice/BroadcastData;
    sget-object v0, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver$1;->$SwitchMap$net$gotev$uploadservice$BroadcastData$Status:[I

    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getStatus()Lnet/gotev/uploadservice/BroadcastData$Status;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/BroadcastData$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    goto :goto_10

    .line 32
    :pswitch_29
    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10

    .line 36
    :pswitch_35
    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getResponseCode()I

    move-result v1

    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getResponseBody()[B

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->onCompleted(Ljava/lang/String;I[B)V

    goto :goto_10

    .line 40
    :pswitch_45
    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getProgressPercent()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->onProgress(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getUploadedBytes()J

    move-result-wide v2

    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getTotalBytes()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->onProgress(Ljava/lang/String;JJ)V

    goto :goto_10

    .line 45
    :pswitch_61
    invoke-virtual {v6}, Lnet/gotev/uploadservice/BroadcastData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/UploadServiceBroadcastReceiver;->onCancelled(Ljava/lang/String;)V

    goto :goto_10

    .line 30
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_29
        :pswitch_35
        :pswitch_45
        :pswitch_61
    .end packed-switch
.end method

.method public register(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->getActionBroadcast()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method
