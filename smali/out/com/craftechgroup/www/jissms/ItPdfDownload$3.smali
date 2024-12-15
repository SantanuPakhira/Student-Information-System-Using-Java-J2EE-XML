.class Lcom/craftechgroup/www/jissms/ItPdfDownload$3;
.super Ljava/lang/Object;
.source "ItPdfDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItPdfDownload;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

.field final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItPdfDownload;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItPdfDownload;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$3;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    iput-object p2, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$3;->val$txt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$3;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->tv_loading:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$3;->val$txt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method
