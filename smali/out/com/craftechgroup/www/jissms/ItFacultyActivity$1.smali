.class Lcom/craftechgroup/www/jissms/ItFacultyActivity$1;
.super Ljava/lang/Object;
.source "ItFacultyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItFacultyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItFacultyActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-static {v0}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->access$000(Lcom/craftechgroup/www/jissms/ItFacultyActivity;)V

    .line 40
    return-void
.end method
