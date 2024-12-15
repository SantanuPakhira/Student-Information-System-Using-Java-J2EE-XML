.class public Lcom/craftechgroup/www/jissms/ItDashboardActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItDashboardActivity.java"


# instance fields
.field imageFaculty:Landroid/widget/ImageView;

.field imageStudent:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->setContentView(I)V

    .line 22
    const v0, 0x7f0b008a

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->imageFaculty:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->imageStudent:Landroid/widget/ImageView;

    .line 24
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->imageFaculty:Landroid/widget/ImageView;

    new-instance v1, Lcom/craftechgroup/www/jissms/ItDashboardActivity$1;

    invoke-direct {v1, p0}, Lcom/craftechgroup/www/jissms/ItDashboardActivity$1;-><init>(Lcom/craftechgroup/www/jissms/ItDashboardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->imageStudent:Landroid/widget/ImageView;

    new-instance v1, Lcom/craftechgroup/www/jissms/ItDashboardActivity$2;

    invoke-direct {v1, p0}, Lcom/craftechgroup/www/jissms/ItDashboardActivity$2;-><init>(Lcom/craftechgroup/www/jissms/ItDashboardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public openFacultyActivity()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public openStudentActivity()V
    .registers 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItStudentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItDashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
