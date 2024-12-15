.class Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask$1;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;)V
    .registers 2
    .param p1, "this$1"    # Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask$1;->this$1:Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask$1;->this$1:Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v0}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask$1;->this$1:Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v0}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 67
    return-void
.end method
