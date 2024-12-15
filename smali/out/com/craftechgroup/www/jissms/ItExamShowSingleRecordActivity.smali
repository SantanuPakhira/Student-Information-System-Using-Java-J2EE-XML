.class public Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItExamShowSingleRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$GetHttpResponse;
    }
.end annotation


# instance fields
.field CLASS:Landroid/widget/TextView;

.field ClassHolder:Ljava/lang/String;

.field DeleteButton:Landroid/widget/Button;

.field FinalJSonObject:Ljava/lang/String;

.field HttpURL:Ljava/lang/String;

.field NAME:Landroid/widget/TextView;

.field NameHolder:Ljava/lang/String;

.field NumberHolder:Ljava/lang/String;

.field PHONE_NUMBER:Landroid/widget/TextView;

.field ParseResult:Ljava/lang/String;

.field ResultHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field TempItem:Ljava/lang/String;

.field UpdateButton:Landroid/widget/Button;

.field finalResult:Ljava/lang/String;

.field hashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field httpParse:Lcom/craftechgroup/www/jissms/HttpParse;

.field pDialog:Landroid/app/ProgressDialog;

.field progressDialog2:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 19
    new-instance v0, Lcom/craftechgroup/www/jissms/HttpParse;

    invoke-direct {v0}, Lcom/craftechgroup/www/jissms/HttpParse;-><init>()V

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->httpParse:Lcom/craftechgroup/www/jissms/HttpParse;

    .line 23
    const-string v0, "http://www.craftechgroup.com/android_jis_clg_portal/FilterExamData.php"

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->HttpURL:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->hashMap:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->ResultHash:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public HttpWebCall(Ljava/lang/String;)V
    .registers 5
    .param p1, "PreviousListViewClickedItem"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;

    invoke-direct {v0, p0}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;-><init>(Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;)V

    .line 175
    .local v0, "httpWebCallFunction":Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->NAME:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->PHONE_NUMBER:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->CLASS:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ListViewValue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->TempItem:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->TempItem:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->HttpWebCall(Ljava/lang/String;)V

    .line 90
    return-void
.end method
