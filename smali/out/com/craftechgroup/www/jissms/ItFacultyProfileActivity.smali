.class public Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItFacultyProfileActivity.java"


# instance fields
.field buttonCourseList:Landroid/widget/Button;

.field buttonExamList:Landroid/widget/Button;

.field buttonPdfUpload:Landroid/widget/Button;

.field buttonStudentList:Landroid/widget/Button;

.field textViewEmail:Landroid/widget/TextView;

.field textViewGender:Landroid/widget/TextView;

.field textViewId:Landroid/widget/TextView;

.field textViewUsername:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v1, 0x7f040025

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->setContentView(I)V

    .line 19
    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->buttonStudentList:Landroid/widget/Button;

    .line 20
    const v1, 0x7f0b0094

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->buttonCourseList:Landroid/widget/Button;

    .line 21
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->buttonExamList:Landroid/widget/Button;

    .line 22
    const v1, 0x7f0b0096

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->buttonPdfUpload:Landroid/widget/Button;

    .line 25
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->buttonStudentList:Landroid/widget/Button;

    new-instance v2, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$1;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$1;-><init>(Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->buttonCourseList:Landroid/widget/Button;

    new-instance v2, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$2;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$2;-><init>(Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->buttonPdfUpload:Landroid/widget/Button;

    new-instance v2, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$3;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$3;-><init>(Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->buttonExamList:Landroid/widget/Button;

    new-instance v2, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$4;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$4;-><init>(Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-static {p0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getInstance(Landroid/content/Context;)Lcom/craftechgroup/www/jissms/SharedPrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->isLoggedIn()Z

    move-result v1

    if-nez v1, :cond_74

    .line 74
    invoke-virtual {p0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->finish()V

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    :cond_74
    const v1, 0x7f0b008f

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->textViewId:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0b0090

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->textViewUsername:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0b0091

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->textViewEmail:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->textViewGender:Landroid/widget/TextView;

    .line 86
    invoke-static {p0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getInstance(Landroid/content/Context;)Lcom/craftechgroup/www/jissms/SharedPrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getUser()Lcom/craftechgroup/www/jissms/User;

    move-result-object v0

    .line 89
    .local v0, "user":Lcom/craftechgroup/www/jissms/User;
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->textViewId:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/User;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->textViewUsername:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/User;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->textViewEmail:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/User;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->textViewGender:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/craftechgroup/www/jissms/User;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v1, 0x7f0b0097

    invoke-virtual {p0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$5;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity$5;-><init>(Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method

.method public openCourseListActivity()V
    .registers 3

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public openExamListActivity()V
    .registers 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItShowAllExamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public openPdfActivity()V
    .registers 3

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public openStudentListActivity()V
    .registers 3

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/craftechgroup/www/jissms/ItShowAllStudentsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
