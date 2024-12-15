.class Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$5;
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
    .line 93
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$5;->this$0:Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$5;->this$0:Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->finish()V

    .line 97
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$5;->this$0:Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getInstance(Landroid/content/Context;)Lcom/craftechgroup/www/jissms/SharedPrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->logout()V

    .line 98
    return-void
.end method
