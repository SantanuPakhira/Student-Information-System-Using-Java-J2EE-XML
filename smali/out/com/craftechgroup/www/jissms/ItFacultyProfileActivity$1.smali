.class Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$1;
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
    .line 25
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->openStudentListActivity()V

    .line 29
    return-void
.end method
