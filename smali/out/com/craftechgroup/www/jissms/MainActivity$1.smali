.class Lcom/craftechgroup/www/jissms/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/MainActivity;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/MainActivity;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/MainActivity$1;->this$0:Lcom/craftechgroup/www/jissms/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/MainActivity$1;->this$0:Lcom/craftechgroup/www/jissms/MainActivity;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/MainActivity;->openNewActivity()V

    .line 21
    return-void
.end method
