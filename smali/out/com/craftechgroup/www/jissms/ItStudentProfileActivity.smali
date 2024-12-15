.class public Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItStudentProfileActivity.java"


# instance fields
.field buttonCourseList:Landroid/widget/Button;

.field buttonExamList:Landroid/widget/Button;

.field buttonPdfDownload:Landroid/widget/Button;

.field buttonStudentList:Landroid/widget/Button;

.field textViewEmail:Landroid/widget/TextView;

.field textViewGender:Landroid/widget/TextView;

.field textViewId:Landroid/widget/TextView;

.field textViewUsername:Landroid/widget/TextView;


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
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f040028

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->setContentView(I)V

    .line 17
    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->buttonStudentList:Landroid/widget/Button;

    .line 18
    const v1, 0x7f0b0094

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->buttonCourseList:Landroid/widget/Button;

    .line 19
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->buttonExamList:Landroid/widget/Button;

    .line 20
    const v1, 0x7f0b0099

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->buttonPdfDownload:Landroid/widget/Button;

    .line 24
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->buttonStudentList:Landroid/widget/Button;

    new-instance v2, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$1;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$1;-><init>(Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->buttonCourseList:Landroid/widget/Button;

    new-instance v2, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$2;-><init>(Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->buttonExamList:Landroid/widget/Button;

    new-instance v2, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$3;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$3;-><init>(Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->buttonPdfDownload:Landroid/widget/Button;

    new-instance v2, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$4;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$4;-><init>(Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-static {p0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getInstance(Landroid/content/Context;)Lcom/craftechgroup/www/jissms/SharedPrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_74

    .line 71
    invoke-virtual {p0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->finish()V

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/craftechgroup/www/jissms/ItStudentActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    :cond_74
    const v1, 0x7f0b008f

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->textViewId:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0b0090

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->textViewUsername:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0b0091

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->textViewEmail:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->textViewGender:Landroid/widget/TextView;

    .line 83
    invoke-static {p0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getInstance(Landroid/content/Context;)Lcom/craftechgroup/www/jissms/SharedPrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getUser()Lcom/craftechgroup/www/jissms/User;

    move-result-object v0

    .line 86
    .local v0, "user":Lcom/craftechgroup/www/jissms/User;
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->textViewId:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/User;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->textViewUsername:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->textViewEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->textViewGender:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/User;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v1, 0x7f0b0097

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$5;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity$5;-><init>(Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public openCourseListActivity()V
    .registers 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method public openExamListActivity()V
    .registers 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public openPdfDwldActivity()V
    .registers 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public openStudentListActivity()V
    .registers 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItShowAllStudentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItStudentProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
