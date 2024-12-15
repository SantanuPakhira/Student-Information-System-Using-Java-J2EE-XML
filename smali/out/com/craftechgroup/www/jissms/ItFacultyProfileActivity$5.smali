.class Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$5;
.super Ljava/lang/Object;
.source "ItFacultyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$5;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$5;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->finish()V

    .line 100
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$5;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getInstance(Landroid/content/Context;)Lcom/craftechgroup/www/jissms/SharedPrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->logout()V

    .line 101
    return-void
.end method
