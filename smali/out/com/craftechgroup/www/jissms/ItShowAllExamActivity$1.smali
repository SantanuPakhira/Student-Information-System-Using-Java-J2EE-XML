.class Lcom/craftechgroup/www/jissms/ItShowAllExamActivity$1;
.super Ljava/lang/Object;
.source "ItShowAllExamActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;

    const-class v2, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ListViewValue"

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;

    iget-object v1, v1, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;->IdList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;

    invoke-virtual {v1, v0}, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity$1;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;

    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;->finish()V

    .line 62
    return-void
.end method
