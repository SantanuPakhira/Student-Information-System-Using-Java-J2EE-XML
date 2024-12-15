.class Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$2;
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
    .line 73
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$2;->this$0:Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$2;->this$0:Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfUploadFunction()V

    .line 80
    return-void
.end method
