.class public final Lnet/gotev/uploadservice/UploadService;
.super Landroid/app/Service;
.source "UploadService.java"


# static fields
.field private static final ACTION_UPLOAD_SUFFIX:Ljava/lang/String; = ".uploadservice.action.upload"

.field private static final BROADCAST_ACTION_SUFFIX:Ljava/lang/String; = ".uploadservice.broadcast.status"

.field public static EXECUTE_IN_FOREGROUND:Z = false

.field public static HTTP_STACK:Lnet/gotev/uploadservice/http/HttpStack; = null

.field public static KEEP_ALIVE_TIME_IN_SECONDS:I = 0x0

.field public static NAMESPACE:Ljava/lang/String; = null

.field protected static final PARAM_BROADCAST_DATA:Ljava/lang/String; = "broadcastData"

.field protected static final PARAM_TASK_CLASS:Ljava/lang/String; = "taskClass"

.field protected static final PARAM_TASK_PARAMETERS:Ljava/lang/String; = "taskParameters"

.field protected static final PROGRESS_REPORT_INTERVAL:J = 0xa6L

.field private static final TAG:Ljava/lang/String;

.field protected static final UPLOAD_NOTIFICATION_BASE_ID:I = 0x4d2

.field public static UPLOAD_POOL_SIZE:I

.field private static volatile foregroundUploadId:Ljava/lang/String;

.field private static final uploadTasksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/gotev/uploadservice/HttpUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private notificationIncrementalId:I

.field private final uploadTasksQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private uploadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 31
    const-class v0, Lnet/gotev/uploadservice/UploadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lnet/gotev/uploadservice/UploadService;->UPLOAD_POOL_SIZE:I

    .line 43
    sput v1, Lnet/gotev/uploadservice/UploadService;->KEEP_ALIVE_TIME_IN_SECONDS:I

    .line 53
    sput-boolean v1, Lnet/gotev/uploadservice/UploadService;->EXECUTE_IN_FOREGROUND:Z

    .line 59
    const-string v0, "net.gotev"

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->NAMESPACE:Ljava/lang/String;

    .line 65
    new-instance v0, Lnet/gotev/uploadservice/http/impl/HurlStack;

    invoke-direct {v0}, Lnet/gotev/uploadservice/http/impl/HurlStack;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->HTTP_STACK:Lnet/gotev/uploadservice/http/HttpStack;

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lnet/gotev/uploadservice/UploadService;->notificationIncrementalId:I

    .line 90
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadService;->uploadTasksQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method protected static getActionBroadcast()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".uploadservice.broadcast.status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getActionUpload()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/gotev/uploadservice/UploadService;->NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".uploadservice.action.upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shutdownIfThereArentAnyActiveTasks()I
    .registers 2

    .prologue
    .line 187
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 188
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService;->stopSelf()V

    .line 189
    const/4 v0, 0x2

    .line 192
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static declared-synchronized stopAllUploads()V
    .registers 5

    .prologue
    .line 117
    const-class v3, Lnet/gotev/uploadservice/UploadService;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2d

    move-result v2

    if-eqz v2, :cond_d

    .line 128
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    monitor-exit v3

    return-void

    .line 122
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    :try_start_d
    sget-object v2, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 125
    sget-object v2, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/gotev/uploadservice/HttpUploadTask;

    .line 126
    .local v1, "taskToCancel":Lnet/gotev/uploadservice/HttpUploadTask;
    invoke-virtual {v1}, Lnet/gotev/uploadservice/HttpUploadTask;->cancel()V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_2d

    goto :goto_17

    .line 117
    .end local v1    # "taskToCancel":Lnet/gotev/uploadservice/HttpUploadTask;
    :catchall_2d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized stopUpload(Ljava/lang/String;)V
    .registers 4
    .param p0, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v2, Lnet/gotev/uploadservice/UploadService;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/HttpUploadTask;

    .line 108
    .local v0, "removedTask":Lnet/gotev/uploadservice/HttpUploadTask;
    if-eqz v0, :cond_10

    .line 109
    invoke-virtual {v0}, Lnet/gotev/uploadservice/HttpUploadTask;->cancel()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 111
    :cond_10
    monitor-exit v2

    return-void

    .line 107
    .end local v0    # "removedTask":Lnet/gotev/uploadservice/HttpUploadTask;
    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method getTask(Landroid/content/Intent;)Lnet/gotev/uploadservice/HttpUploadTask;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 216
    const-string v5, "taskClass"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "taskClass":Ljava/lang/String;
    if-nez v3, :cond_a

    .line 219
    const/4 v4, 0x0

    .line 240
    :goto_9
    return-object v4

    .line 222
    :cond_a
    const/4 v4, 0x0

    .line 225
    .local v4, "uploadTask":Lnet/gotev/uploadservice/HttpUploadTask;
    :try_start_b
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 227
    .local v2, "task":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lnet/gotev/uploadservice/HttpUploadTask;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 228
    const-class v5, Lnet/gotev/uploadservice/HttpUploadTask;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lnet/gotev/uploadservice/HttpUploadTask;

    move-object v4, v0

    .line 229
    invoke-virtual {v4, p0, p1}, Lnet/gotev/uploadservice/HttpUploadTask;->init(Lnet/gotev/uploadservice/UploadService;Landroid/content/Intent;)V

    .line 234
    :goto_28
    sget-object v5, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully created new task with class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_40} :catch_41

    goto :goto_9

    .line 236
    .end local v2    # "task":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_41
    move-exception v1

    .line 237
    .local v1, "exc":Ljava/lang/Exception;
    sget-object v5, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    const-string v6, "Error while instantiating new task"

    invoke-static {v5, v6, v1}, Lnet/gotev/uploadservice/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 231
    .end local v1    # "exc":Ljava/lang/Exception;
    .restart local v2    # "task":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4a
    :try_start_4a
    sget-object v5, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not extend HttpUploadTask!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lnet/gotev/uploadservice/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_62} :catch_41

    goto :goto_28
.end method

.method protected declared-synchronized holdForegroundNotification(Ljava/lang/String;Landroid/app/Notification;)Z
    .registers 7
    .param p1, "uploadId"    # Ljava/lang/String;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v0, 0x0

    .line 249
    monitor-enter p0

    :try_start_2
    sget-boolean v1, Lnet/gotev/uploadservice/UploadService;->EXECUTE_IN_FOREGROUND:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_35

    if-nez v1, :cond_8

    .line 261
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 251
    :cond_8
    :try_start_8
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    if-nez v1, :cond_26

    .line 252
    sput-object p1, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    .line 253
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now holds the foreground notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_26
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 257
    const/16 v0, 0x4d2

    invoke-virtual {p0, v0, p2}, Lnet/gotev/uploadservice/UploadService;->startForeground(ILandroid/app/Notification;)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_35

    .line 258
    const/4 v0, 0x1

    goto :goto_6

    .line 249
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 134
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lnet/gotev/uploadservice/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 135
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    sget-object v2, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lnet/gotev/uploadservice/UploadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 137
    sget v1, Lnet/gotev/uploadservice/UploadService;->UPLOAD_POOL_SIZE:I

    if-gtz v1, :cond_22

    .line 138
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    sput v1, Lnet/gotev/uploadservice/UploadService;->UPLOAD_POOL_SIZE:I

    .line 142
    :cond_22
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lnet/gotev/uploadservice/UploadService;->UPLOAD_POOL_SIZE:I

    sget v3, Lnet/gotev/uploadservice/UploadService;->UPLOAD_POOL_SIZE:I

    sget v4, Lnet/gotev/uploadservice/UploadService;->KEEP_ALIVE_TIME_IN_SECONDS:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lnet/gotev/uploadservice/UploadService;->uploadTasksQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lnet/gotev/uploadservice/UploadService;->uploadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 148
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 199
    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->stopAllUploads()V

    .line 200
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadService;->uploadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 202
    sget-boolean v0, Lnet/gotev/uploadservice/UploadService;->EXECUTE_IN_FOREGROUND:Z

    if-eqz v0, :cond_1a

    .line 203
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    const-string v1, "Stopping foreground execution"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/gotev/uploadservice/UploadService;->stopForeground(Z)V

    .line 207
    :cond_1a
    sget-object v0, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    const-string v1, "UploadService destroyed"

    invoke-static {v0, v1}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x1

    .line 157
    if-eqz p1, :cond_11

    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->getActionUpload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 158
    :cond_11
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->shutdownIfThereArentAnyActiveTasks()I

    move-result v1

    .line 183
    :goto_15
    return v1

    .line 161
    :cond_16
    sget-object v3, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    const-string v4, "Starting service with namespace: %s, upload pool size: %d, %ds idle thread keep alive time. Foreground execution is %s"

    const/4 v1, 0x4

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v6, Lnet/gotev/uploadservice/UploadService;->NAMESPACE:Ljava/lang/String;

    aput-object v6, v5, v1

    sget v1, Lnet/gotev/uploadservice/UploadService;->UPLOAD_POOL_SIZE:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    sget v6, Lnet/gotev/uploadservice/UploadService;->KEEP_ALIVE_TIME_IN_SECONDS:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x3

    sget-boolean v1, Lnet/gotev/uploadservice/UploadService;->EXECUTE_IN_FOREGROUND:Z

    if-eqz v1, :cond_4e

    const-string v1, "enabled"

    :goto_3a
    aput-object v1, v5, v6

    .line 161
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lnet/gotev/uploadservice/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/UploadService;->getTask(Landroid/content/Intent;)Lnet/gotev/uploadservice/HttpUploadTask;

    move-result-object v0

    .line 168
    .local v0, "currentTask":Lnet/gotev/uploadservice/HttpUploadTask;
    if-nez v0, :cond_51

    .line 169
    invoke-direct {p0}, Lnet/gotev/uploadservice/UploadService;->shutdownIfThereArentAnyActiveTasks()I

    move-result v1

    goto :goto_15

    .line 163
    .end local v0    # "currentTask":Lnet/gotev/uploadservice/HttpUploadTask;
    :cond_4e
    const-string v1, "disabled"

    goto :goto_3a

    .line 174
    .restart local v0    # "currentTask":Lnet/gotev/uploadservice/HttpUploadTask;
    :cond_51
    iget v1, p0, Lnet/gotev/uploadservice/UploadService;->notificationIncrementalId:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lnet/gotev/uploadservice/UploadService;->notificationIncrementalId:I

    .line 175
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lnet/gotev/uploadservice/HttpUploadTask;->setLastProgressNotificationTime(J)Lnet/gotev/uploadservice/HttpUploadTask;

    move-result-object v1

    iget v3, p0, Lnet/gotev/uploadservice/UploadService;->notificationIncrementalId:I

    add-int/lit16 v3, v3, 0x4d2

    .line 176
    invoke-virtual {v1, v3}, Lnet/gotev/uploadservice/HttpUploadTask;->setNotificationId(I)Lnet/gotev/uploadservice/HttpUploadTask;

    .line 178
    iget-object v1, p0, Lnet/gotev/uploadservice/UploadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 180
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    iget-object v3, v0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v3}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lnet/gotev/uploadservice/UploadService;->uploadThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move v1, v2

    .line 183
    goto :goto_15
.end method

.method protected declared-synchronized taskCompleted(Ljava/lang/String;)V
    .registers 6
    .param p1, "uploadId"    # Ljava/lang/String;

    .prologue
    .line 270
    monitor-enter p0

    :try_start_1
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/HttpUploadTask;

    .line 273
    .local v0, "task":Lnet/gotev/uploadservice/HttpUploadTask;
    sget-boolean v1, Lnet/gotev/uploadservice/UploadService;->EXECUTE_IN_FOREGROUND:Z

    if-eqz v1, :cond_38

    if-eqz v0, :cond_38

    iget-object v1, v0, Lnet/gotev/uploadservice/HttpUploadTask;->params:Lnet/gotev/uploadservice/TaskParameters;

    invoke-virtual {v1}, Lnet/gotev/uploadservice/TaskParameters;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 274
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now un-holded the foreground notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x0

    sput-object v1, Lnet/gotev/uploadservice/UploadService;->foregroundUploadId:Ljava/lang/String;

    .line 279
    :cond_38
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->uploadTasksMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 280
    sget-object v1, Lnet/gotev/uploadservice/UploadService;->TAG:Ljava/lang/String;

    const-string v2, "All tasks finished. UploadService is about to shutdown..."

    invoke-static {v1, v2}, Lnet/gotev/uploadservice/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lnet/gotev/uploadservice/UploadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 282
    invoke-virtual {p0}, Lnet/gotev/uploadservice/UploadService;->stopSelf()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 284
    :cond_4f
    monitor-exit p0

    return-void

    .line 270
    .end local v0    # "task":Lnet/gotev/uploadservice/HttpUploadTask;
    :catchall_51
    move-exception v1

    monitor-exit p0

    throw v1
.end method
