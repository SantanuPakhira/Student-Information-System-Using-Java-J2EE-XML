.class Lcom/craftechgroup/www/jissms/ItPdfDownload$2;
.super Ljava/lang/Object;
.source "ItPdfDownload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItPdfDownload;->setTextError(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

.field final synthetic val$color:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItPdfDownload;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItPdfDownload;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    iput p2, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;->val$color:I

    iput-object p3, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->tv_loading:Landroid/widget/TextView;

    iget v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;->this$0:Lcom/craftechgroup/www/jissms/ItPdfDownload;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->tv_loading:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
