.class public abstract Lnet/gotev/uploadservice/HttpUploadTask;
.super Ljava/lang/Object;
.source "HttpUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private connection:Lnet/gotev/uploadservice/http/HttpConnection;

.field private lastProgressNotificationTime:J

.field private notification:Landroid/support/v4/app/NotificationCompat$Builder;

.field private notificationId:I

.field private notificationManager:Landroid/app/NotificationManager;

.field protected params:Lnet/gotev/uploadservice/TaskParameters;

.field protected service:Lnet/gotev/uploadservice/UploadService;

.field protected shouldContinue:Z

.field protected totalBodyBytes:J

.field protected uploadedBodyBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lnet/gotev/uploadservice/HttpUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->shouldContinue:Z

    return-void
.end method

.method private broadcastError(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 349
    sget-object v1, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting error for upload with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 350
    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v1, Lnet/gotev/uploadservice/BroadcastData;

    invoke-direct {v1}, Lnet/gotev/uploadservice/BroadcastData;-><init>()V

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 353
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/BroadcastData;->setId(Ljava/lang/String;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    sget-object v2, Lnet/gotev/uploadservice/BroadcastData$Status;->ERROR:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 354
    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/BroadcastData;->setStatus(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    .line 355
    invoke-virtual {v1, p1}, Lnet/gotev/uploadservice/BroadcastData;->setException(Ljava/lang/Exception;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v0

    .line 357
    .local v0, "data":Lnet/gotev/uploadservice/BroadcastData;
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->updateNotificationError()V

    .line 361
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadService;->taskCompleted(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private createNotification()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 365
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    if-nez v1, :cond_a

    .line 382
    :goto_9
    return-void

    .line 367
    :cond_a
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 368
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getInProgressMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 369
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v2, v3}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 370
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getIconResourceID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget-object v2, Lnet/gotev/uploadservice/UploadService;->NAMESPACE:Ljava/lang/String;

    .line 371
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    .line 372
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 373
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 375
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 377
    .local v0, "builtNotification":Landroid/app/Notification;
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/gotev/uploadservice/UploadService;->holdForegroundNotification(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 378
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_9

    .line 380
    :cond_72
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_9
.end method

.method private setRingtone()V
    .registers 4

    .prologue
    .line 406
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadNotificationConfig;->isRingToneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 407
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 408
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 411
    :cond_1e
    return-void
.end method

.method private updateNotificationCompleted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    if-nez v0, :cond_a

    .line 433
    :cond_9
    :goto_9
    return-void

    .line 416
    :cond_a
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 418
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lnet/gotev/uploadservice/UploadNotificationConfig;->isAutoClearOnSuccess()Z

    move-result v0

    if-nez v0, :cond_9

    .line 419
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 420
    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getCompletedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 421
    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 422
    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->isClearOnAction()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 423
    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getIconResourceID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->NAMESPACE:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v3, v3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 427
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->setRingtone()V

    .line 431
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_9
.end method

.method private updateNotificationError()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 436
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v0

    if-nez v0, :cond_a

    .line 452
    :goto_9
    return-void

    .line 438
    :cond_a
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 440
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 441
    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 442
    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 443
    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->isClearOnAction()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 444
    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getIconResourceID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->NAMESPACE:Ljava/lang/String;

    .line 445
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {v0, v3, v3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 447
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->setRingtone()V

    .line 451
    iget-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_9
.end method

.method private updateNotificationProgress(II)V
    .registers 7
    .param p1, "uploadedBytes"    # I
    .param p2, "totalBytes"    # I

    .prologue
    .line 385
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v1

    if-nez v1, :cond_9

    .line 402
    :goto_8
    return-void

    .line 387
    :cond_9
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 388
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getInProgressMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 389
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v2, v3}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 390
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;->getIconResourceID()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget-object v2, Lnet/gotev/uploadservice/UploadService;->NAMESPACE:Ljava/lang/String;

    .line 391
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 392
    invoke-virtual {v1, p2, p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 393
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 395
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 397
    .local v0, "builtNotification":Landroid/app/Notification;
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/gotev/uploadservice/UploadService;->holdForegroundNotification(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 398
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_8

    .line 400
    :cond_70
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_8
.end method


# virtual methods
.method protected final broadcastCancelled()V
    .registers 5

    .prologue
    .line 298
    sget-object v1, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting cancellation for upload with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 299
    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v1, Lnet/gotev/uploadservice/BroadcastData;

    invoke-direct {v1}, Lnet/gotev/uploadservice/BroadcastData;-><init>()V

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 302
    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/BroadcastData;->setId(Ljava/lang/String;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v1

    sget-object v2, Lnet/gotev/uploadservice/BroadcastData$Status;->CANCELLED:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 303
    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/BroadcastData;->setStatus(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v0

    .line 305
    .local v0, "data":Lnet/gotev/uploadservice/BroadcastData;
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->updateNotificationError()V

    .line 309
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/UploadService;->taskCompleted(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method protected final broadcastCompleted(I[B)V
    .registers 9
    .param p1, "responseCode"    # I
    .param p2, "serverResponseBody"    # [B

    .prologue
    .line 260
    div-int/lit8 v3, p1, 0x64

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    const/4 v2, 0x1

    .line 262
    .local v2, "successfulUpload":Z
    :goto_6
    if-eqz v2, :cond_3d

    .line 263
    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->isAutoDeleteSuccessfullyUploadedFiles()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 264
    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 266
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/gotev/uploadservice/UploadFile;>;"
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/gotev/uploadservice/UploadFile;

    iget-object v3, v3, Lnet/gotev/uploadservice/UploadFile;->file:Ljava/io/File;

    invoke-virtual {p0, v3}, Lnet/gotev/uploadservice/HttpUploadTask;->deleteFile(Ljava/io/File;)Z

    goto :goto_26

    .line 260
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/gotev/uploadservice/UploadFile;>;"
    .end local v2    # "successfulUpload":Z
    :cond_38
    const/4 v2, 0x0

    goto :goto_6

    .line 271
    .restart local v2    # "successfulUpload":Z
    :cond_3a
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->onSuccessfulUpload()V

    .line 274
    :cond_3d
    sget-object v3, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting upload completed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v5}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v3, Lnet/gotev/uploadservice/BroadcastData;

    invoke-direct {v3}, Lnet/gotev/uploadservice/BroadcastData;-><init>()V

    iget-object v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 277
    invoke-virtual {v4}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/gotev/uploadservice/BroadcastData;->setId(Ljava/lang/String;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v3

    sget-object v4, Lnet/gotev/uploadservice/BroadcastData$Status;->COMPLETED:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 278
    invoke-virtual {v3, v4}, Lnet/gotev/uploadservice/BroadcastData;->setStatus(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v3

    .line 279
    invoke-virtual {v3, p1}, Lnet/gotev/uploadservice/BroadcastData;->setResponseCode(I)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v3

    .line 280
    invoke-virtual {v3, p2}, Lnet/gotev/uploadservice/BroadcastData;->setResponseBody([B)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v0

    .line 282
    .local v0, "data":Lnet/gotev/uploadservice/BroadcastData;
    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/gotev/uploadservice/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    if-eqz v2, :cond_92

    .line 285
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->updateNotificationCompleted()V

    .line 289
    :goto_86
    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    iget-object v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v4}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/gotev/uploadservice/UploadService;->taskCompleted(Ljava/lang/String;)V

    .line 290
    return-void

    .line 287
    :cond_92
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->updateNotificationError()V

    goto :goto_86
.end method

.method protected final broadcastProgress(JJ)V
    .registers 14
    .param p1, "uploadedBytes"    # J
    .param p3, "totalBytes"    # J

    .prologue
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 231
    .local v0, "currentTime":J
    iget-wide v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->lastProgressNotificationTime:J

    const-wide/16 v6, 0xa6

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-gez v3, :cond_e

    .line 249
    :goto_d
    return-void

    .line 235
    :cond_e
    invoke-virtual {p0, v0, v1}, Lnet/gotev/uploadservice/HttpUploadTask;->setLastProgressNotificationTime(J)Lnet/gotev/uploadservice/HttpUploadTask;

    .line 237
    sget-object v3, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting upload progress for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v5}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Uploaded bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v3, Lnet/gotev/uploadservice/BroadcastData;

    invoke-direct {v3}, Lnet/gotev/uploadservice/BroadcastData;-><init>()V

    iget-object v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 241
    invoke-virtual {v4}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/gotev/uploadservice/BroadcastData;->setId(Ljava/lang/String;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v3

    sget-object v4, Lnet/gotev/uploadservice/BroadcastData$Status;->IN_PROGRESS:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 242
    invoke-virtual {v3, v4}, Lnet/gotev/uploadservice/BroadcastData;->setStatus(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v3

    .line 243
    invoke-virtual {v3, p1, p2}, Lnet/gotev/uploadservice/BroadcastData;->setUploadedBytes(J)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v3

    .line 244
    invoke-virtual {v3, p3, p4}, Lnet/gotev/uploadservice/BroadcastData;->setTotalBytes(J)Lnet/gotev/uploadservice/BroadcastData;

    move-result-object v2

    .line 246
    .local v2, "data":Lnet/gotev/uploadservice/BroadcastData;
    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/BroadcastData;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/gotev/uploadservice/UploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    long-to-int v3, p1

    long-to-int v4, p3

    invoke-direct {p0, v3, v4}, Lnet/gotev/uploadservice/HttpUploadTask;->updateNotificationProgress(II)V

    goto :goto_d
.end method

.method public final cancel()V
    .registers 2

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->shouldContinue:Z

    .line 199
    return-void
.end method

.method protected final deleteFile(Ljava/io/File;)Z
    .registers 7
    .param p1, "fileToDelete"    # Ljava/io/File;

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 323
    .local v0, "deleted":Z
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 325
    if-nez v0, :cond_24

    .line 326
    sget-object v2, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-static {v2, v3}, Lnet/gotev/uploadservice/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_23
    return v0

    .line 329
    :cond_24
    sget-object v2, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-static {v2, v3}, Lnet/gotev/uploadservice/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    goto :goto_23

    .line 333
    :catch_41
    move-exception v1

    .line 334
    .local v1, "exc":Ljava/lang/Exception;
    sget-object v2, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while deleting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Check if you granted: android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {v2, v3, v1}, Lnet/gotev/uploadservice/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method protected abstract getBodyLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method protected init(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V
    .registers 4
    .param p1, "service"    # Lnet/gotev/uploadservice/UploadService;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lnet/gotev/uploadservice/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationManager:Landroid/app/NotificationManager;

    .line 83
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notification:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 84
    iput-object p1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->service:Lnet/gotev/uploadservice/UploadService;

    .line 85
    const-string v0, "taskParameters"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/TaskParameters;

    iput-object v0, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 86
    return-void
.end method

.method protected onSuccessfulUpload()V
    .registers 1

    .prologue
    .line 195
    return-void
.end method

.method public final run()V
    .registers 8

    .prologue
    .line 91
    invoke-direct {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->createNotification()V

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "attempts":I
    const/16 v1, 0x3e8

    .line 96
    .local v1, "errorDelay":I
    const v3, 0x927c0

    .line 98
    .local v3, "maxErrorDelay":I
    :cond_9
    :goto_9
    iget-object v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v4}, Lnet/gotev/uploadservice/TaskParameters;->getMaxRetries()I

    move-result v4

    if-gt v0, v4, :cond_1a

    iget-boolean v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->shouldContinue:Z

    if-eqz v4, :cond_1a

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 102
    :try_start_17
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->upload()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_22

    .line 125
    :cond_1a
    iget-boolean v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->shouldContinue:Z

    if-nez v4, :cond_21

    .line 126
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->broadcastCancelled()V

    .line 128
    :cond_21
    return-void

    .line 105
    :catch_22
    move-exception v2

    .line 106
    .local v2, "exc":Ljava/lang/Exception;
    iget-boolean v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->shouldContinue:Z

    if-eqz v4, :cond_1a

    .line 108
    iget-object v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v4}, Lnet/gotev/uploadservice/TaskParameters;->getMaxRetries()I

    move-result v4

    if-le v0, v4, :cond_33

    .line 109
    invoke-direct {p0, v2}, Lnet/gotev/uploadservice/HttpUploadTask;->broadcastError(Ljava/lang/Exception;)V

    goto :goto_9

    .line 111
    :cond_33
    sget-object v4, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in uploadId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v6}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Waiting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit16 v6, v1, 0x3e8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s before next attempt. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 114
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-static {v4, v5}, Lnet/gotev/uploadservice/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    int-to-long v4, v1

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 117
    mul-int/lit8 v1, v1, 0xa

    .line 118
    if-le v1, v3, :cond_9

    .line 119
    move v1, v3

    goto :goto_9
.end method

.method protected final setLastProgressNotificationTime(J)Lnet/gotev/uploadservice/HttpUploadTask;
    .registers 4
    .param p1, "lastProgressNotificationTime"    # J

    .prologue
    .line 202
    iput-wide p1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->lastProgressNotificationTime:J

    .line 203
    return-object p0
.end method

.method protected final setNotificationId(I)Lnet/gotev/uploadservice/HttpUploadTask;
    .registers 2
    .param p1, "notificationId"    # I

    .prologue
    .line 207
    iput p1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->notificationId:I

    .line 208
    return-object p0
.end method

.method protected upload()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 143
    sget-object v1, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting upload task with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_1e
    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getBodyLength()J

    move-result-wide v2

    iput-wide v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->totalBodyBytes:J

    .line 148
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->isCustomUserAgentDefined()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 149
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    const-string v2, "User-Agent"

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getCustomUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/gotev/uploadservice/TaskParameters;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_39
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->HTTP_STACK:Lnet/gotev/uploadservice/http/HttpStack;

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lnet/gotev/uploadservice/http/HttpStack;->createNewConnection(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/http/HttpConnection;

    move-result-object v1

    iput-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->connection:Lnet/gotev/uploadservice/http/HttpConnection;

    .line 154
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->connection:Lnet/gotev/uploadservice/http/HttpConnection;

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v2}, Lnet/gotev/uploadservice/TaskParameters;->getRequestHeaders()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 155
    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->isUsesFixedLengthStreamingMode()Z

    move-result v3

    invoke-virtual {p0}, Lnet/gotev/uploadservice/HttpUploadTask;->getBodyLength()J

    move-result-wide v4

    .line 154
    invoke-interface {v1, v2, v3, v4, v5}, Lnet/gotev/uploadservice/http/HttpConnection;->setHeaders(Ljava/util/List;ZJ)V

    .line 157
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->connection:Lnet/gotev/uploadservice/http/HttpConnection;

    invoke-virtual {p0, v1}, Lnet/gotev/uploadservice/HttpUploadTask;->writeBody(Lnet/gotev/uploadservice/http/HttpConnection;)V

    .line 159
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->connection:Lnet/gotev/uploadservice/http/HttpConnection;

    invoke-interface {v1}, Lnet/gotev/uploadservice/http/HttpConnection;->getServerResponseCode()I

    move-result v0

    .line 160
    .local v0, "serverResponseCode":I
    sget-object v1, Lnet/gotev/uploadservice/HttpUploadTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server responded with HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to upload with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    .line 161
    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-boolean v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->shouldContinue:Z

    if-eqz v1, :cond_a2

    .line 170
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->connection:Lnet/gotev/uploadservice/http/HttpConnection;

    invoke-interface {v1}, Lnet/gotev/uploadservice/http/HttpConnection;->getServerResponseBody()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/gotev/uploadservice/HttpUploadTask;->broadcastCompleted(I[B)V
    :try_end_a2
    .catchall {:try_start_1e .. :try_end_a2} :catchall_a8

    .line 174
    :cond_a2
    iget-object v1, p0, Lnet/gotev/uploadservice/HttpUploadTask;->connection:Lnet/gotev/uploadservice/http/HttpConnection;

    invoke-interface {v1}, Lnet/gotev/uploadservice/http/HttpConnection;->close()V

    .line 176
    return-void

    .line 174
    .end local v0    # "serverResponseCode":I
    :catchall_a8
    move-exception v1

    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->connection:Lnet/gotev/uploadservice/http/HttpConnection;

    invoke-interface {v2}, Lnet/gotev/uploadservice/http/HttpConnection;->close()V

    throw v1
.end method

.method protected abstract writeBody(Lnet/gotev/uploadservice/http/HttpConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final writeStream(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 215
    .local v0, "buffer":[B
    :goto_4
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_23

    iget-boolean v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->shouldContinue:Z

    if-eqz v2, :cond_23

    .line 216
    iget-object v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->connection:Lnet/gotev/uploadservice/http/HttpConnection;

    invoke-interface {v2, v0, v1}, Lnet/gotev/uploadservice/http/HttpConnection;->writeBody([BI)V

    .line 217
    iget-wide v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->uploadedBodyBytes:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->uploadedBodyBytes:J

    .line 218
    iget-wide v2, p0, Lnet/gotev/uploadservice/HttpUploadTask;->uploadedBodyBytes:J

    iget-wide v4, p0, Lnet/gotev/uploadservice/HttpUploadTask;->totalBodyBytes:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lnet/gotev/uploadservice/HttpUploadTask;->broadcastProgress(JJ)V

    goto :goto_4

    .line 220
    :cond_23
    return-void
.end method
