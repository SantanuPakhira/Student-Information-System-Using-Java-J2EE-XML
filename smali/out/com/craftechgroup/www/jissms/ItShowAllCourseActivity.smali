.class public Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItShowAllCourseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;
    }
.end annotation


# instance fields
.field HttpUrl:Ljava/lang/String;

.field IdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field StudentListView:Landroid/widget/ListView;

.field progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 28
    const-string v0, "http://www.craftechgroup.com/android_jis_clg_portal/AllCourseData.php"

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->HttpUrl:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->IdList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->StudentListView:Landroid/widget/ListView;

    .line 40
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 42
    new-instance v0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;

    invoke-direct {v0, p0, p0}, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;-><init>(Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->StudentListView:Landroid/widget/ListView;

    new-instance v1, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$1;

    invoke-direct {v1, p0}, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$1;-><init>(Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    return-void
.end method
