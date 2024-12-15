.class public Lcom/craftechgroup/www/jissms/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Download Task"


# instance fields
.field private buttonText:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private downloadFileName:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonText"    # Landroid/widget/Button;
    .param p3, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->downloadUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->downloadFileName:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->buttonText:Landroid/widget/Button;

    .line 33
    iput-object p3, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->downloadUrl:Ljava/lang/String;

    .line 35
    const-string v0, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->downloadFileName:Ljava/lang/String;

    .line 36
    const-string v0, "Download Task"

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->downloadFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;-><init>(Lcom/craftechgroup/www/jissms/DownloadTask;Lcom/craftechgroup/www/jissms/DownloadTask$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method static synthetic access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/craftechgroup/www/jissms/DownloadTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->buttonText:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/craftechgroup/www/jissms/DownloadTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/craftechgroup/www/jissms/DownloadTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/craftechgroup/www/jissms/DownloadTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/craftechgroup/www/jissms/DownloadTask;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/craftechgroup/www/jissms/DownloadTask;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask;->downloadFileName:Ljava/lang/String;

    return-object v0
.end method
