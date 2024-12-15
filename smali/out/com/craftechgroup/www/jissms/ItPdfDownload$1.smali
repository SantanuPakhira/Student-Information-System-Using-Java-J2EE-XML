.class Lcom/craftechgroup/www/jissms/ItPdfDownload$1;
.super Ljava/lang/Object;
.source "ItPdfDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItPdfDownload;->downloadAndOpenPDF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItPdfDownload;)V
    .registers 2
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItPdfDownload;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 42
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    iget-object v4, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    iget-object v4, v4, Lcom/craftechgroup/www/jissms/ItPdfDownload;->download_file_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->downloadFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 44
    .local v2, "path":Landroid/net/Uri;
    :try_start_e
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "application/pdf"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    invoke-virtual {v3, v1}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->startActivity(Landroid/content/Intent;)V

    .line 48
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    invoke-virtual {v3}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->finish()V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_29} :catch_2a

    .line 53
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_29
    return-void

    .line 49
    :catch_2a
    move-exception v0

    .line 50
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    iget-object v3, v3, Lcom/craftechgroup/www/jissms/ItPdfDownload;->tv_loading:Landroid/widget/TextView;

    const-string v4, "PDF Reader application is not installed in your device"

    .line 51
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_29
.end method
