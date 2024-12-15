.class Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$4;
.super Ljava/lang/Object;
.source "ItStudentProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$4;->this$0:Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$4;->this$0:Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->openPdfDwldActivity()V

    .line 59
    return-void
.end method
