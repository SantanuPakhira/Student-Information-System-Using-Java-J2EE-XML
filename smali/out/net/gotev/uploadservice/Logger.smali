.class public Lnet/gotev/uploadservice/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/Logger$SingletonHolder;,
        Lnet/gotev/uploadservice/Logger$LoggerDelegate;,
        Lnet/gotev/uploadservice/Logger$LogLevel;
    }
.end annotation


# instance fields
.field private mDelegate:Lnet/gotev/uploadservice/Logger$LoggerDelegate;

.field private mLogLevel:Lnet/gotev/uploadservice/Logger$LogLevel;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lnet/gotev/uploadservice/Logger$LogLevel;->OFF:Lnet/gotev/uploadservice/Logger$LogLevel;

    iput-object v0, p0, Lnet/gotev/uploadservice/Logger;->mLogLevel:Lnet/gotev/uploadservice/Logger$LogLevel;

    .line 28
    new-instance v0, Lnet/gotev/uploadservice/DefaultLoggerDelegate;

    invoke-direct {v0}, Lnet/gotev/uploadservice/DefaultLoggerDelegate;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/Logger;->mDelegate:Lnet/gotev/uploadservice/Logger$LoggerDelegate;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lnet/gotev/uploadservice/Logger$1;)V
    .registers 2
    .param p1, "x0"    # Lnet/gotev/uploadservice/Logger$1;

    .prologue
    .line 10
    invoke-direct {p0}, Lnet/gotev/uploadservice/Logger;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->mLogLevel:Lnet/gotev/uploadservice/Logger$LogLevel;

    sget-object v1, Lnet/gotev/uploadservice/Logger$LogLevel;->DEBUG:Lnet/gotev/uploadservice/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/Logger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_17

    .line 77
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->mDelegate:Lnet/gotev/uploadservice/Logger$LoggerDelegate;

    invoke-interface {v0, p0, p1}, Lnet/gotev/uploadservice/Logger$LoggerDelegate;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_17
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->mLogLevel:Lnet/gotev/uploadservice/Logger$LogLevel;

    sget-object v1, Lnet/gotev/uploadservice/Logger$LogLevel;->ERROR:Lnet/gotev/uploadservice/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/Logger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_17

    .line 59
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->mDelegate:Lnet/gotev/uploadservice/Logger$LoggerDelegate;

    invoke-interface {v0, p0, p1}, Lnet/gotev/uploadservice/Logger$LoggerDelegate;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_17
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->mLogLevel:Lnet/gotev/uploadservice/Logger$LogLevel;

    sget-object v1, Lnet/gotev/uploadservice/Logger$LogLevel;->ERROR:Lnet/gotev/uploadservice/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/Logger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_17

    .line 65
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->mDelegate:Lnet/gotev/uploadservice/Logger$LoggerDelegate;

    invoke-interface {v0, p0, p1, p2}, Lnet/gotev/uploadservice/Logger$LoggerDelegate;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_17
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->mLogLevel:Lnet/gotev/uploadservice/Logger$LogLevel;

    sget-object v1, Lnet/gotev/uploadservice/Logger$LogLevel;->INFO:Lnet/gotev/uploadservice/Logger$LogLevel;

    invoke-virtual {v0, v1}, Lnet/gotev/uploadservice/Logger$LogLevel;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_17

    .line 71
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iget-object v0, v0, Lnet/gotev/uploadservice/Logger;->mDelegate:Lnet/gotev/uploadservice/Logger$LoggerDelegate;

    invoke-interface {v0, p0, p1}, Lnet/gotev/uploadservice/Logger$LoggerDelegate;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_17
    return-void
.end method

.method public static resetLoggerDelegate()V
    .registers 3

    .prologue
    .line 37
    const-class v1, Lnet/gotev/uploadservice/Logger;

    monitor-enter v1

    .line 38
    :try_start_3
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    new-instance v2, Lnet/gotev/uploadservice/DefaultLoggerDelegate;

    invoke-direct {v2}, Lnet/gotev/uploadservice/DefaultLoggerDelegate;-><init>()V

    iput-object v2, v0, Lnet/gotev/uploadservice/Logger;->mDelegate:Lnet/gotev/uploadservice/Logger$LoggerDelegate;

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static setLogLevel(Lnet/gotev/uploadservice/Logger$LogLevel;)V
    .registers 3
    .param p0, "level"    # Lnet/gotev/uploadservice/Logger$LogLevel;

    .prologue
    .line 52
    const-class v1, Lnet/gotev/uploadservice/Logger;

    monitor-enter v1

    .line 53
    :try_start_3
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iput-object p0, v0, Lnet/gotev/uploadservice/Logger;->mLogLevel:Lnet/gotev/uploadservice/Logger$LogLevel;

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public static setLoggerDelegate(Lnet/gotev/uploadservice/Logger$LoggerDelegate;)V
    .registers 3
    .param p0, "delegate"    # Lnet/gotev/uploadservice/Logger$LoggerDelegate;

    .prologue
    .line 43
    if-nez p0, :cond_a

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate MUST not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_a
    const-class v1, Lnet/gotev/uploadservice/Logger;

    monitor-enter v1

    .line 47
    :try_start_d
    invoke-static {}, Lnet/gotev/uploadservice/Logger$SingletonHolder;->access$100()Lnet/gotev/uploadservice/Logger;

    move-result-object v0

    iput-object p0, v0, Lnet/gotev/uploadservice/Logger;->mDelegate:Lnet/gotev/uploadservice/Logger$LoggerDelegate;

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0
.end method
