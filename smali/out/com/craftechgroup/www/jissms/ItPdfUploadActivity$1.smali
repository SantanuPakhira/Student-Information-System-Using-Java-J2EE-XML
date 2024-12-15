.class Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$1;
.super Ljava/lang/Object;
.source "ItPdfUploadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "application/pdf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;

    const-string v2, "Select Pdf"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;

    iget v3, v3, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PDF_REQ_CODE:I

    invoke-virtual {v1, v2, v3}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 69
    return-void
.end method
