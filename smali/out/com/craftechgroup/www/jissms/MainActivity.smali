.class public Lcom/craftechgroup/www/jissms/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field ITbutton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/MainActivity;->setContentView(I)V

    .line 16
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/MainActivity;->ITbutton:Landroid/widget/ImageButton;

    .line 17
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/MainActivity;->ITbutton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/craftechgroup/www/jissms/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/craftechgroup/www/jissms/MainActivity$1;-><init>(Lcom/craftechgroup/www/jissms/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method

.method public openNewActivity()V
    .registers 3

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItDashboardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
