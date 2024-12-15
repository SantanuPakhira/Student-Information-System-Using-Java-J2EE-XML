.class public Lcom/craftechgroup/www/jissms/ItFacultyActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItFacultyActivity.java"


# instance fields
.field editTextPassword:Landroid/widget/EditText;

.field editTextUsername:Landroid/widget/EditText;

.field textViewRegister:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/craftechgroup/www/jissms/ItFacultyActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->userLogin()V

    return-void
.end method

.method private userLogin()V
    .registers 6

    .prologue
    .line 56
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->editTextUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "username":Ljava/lang/String;
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->editTextPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "password":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 61
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->editTextUsername:Landroid/widget/EditText;

    const-string v4, "Please enter your username"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->editTextUsername:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 141
    :goto_26
    return-void

    .line 66
    :cond_27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 67
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->editTextPassword:Landroid/widget/EditText;

    const-string v4, "Please enter your password"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->editTextPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_26

    .line 139
    :cond_3a
    new-instance v1, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;

    invoke-direct {v1, p0, v2, v0}, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;-><init>(Lcom/craftechgroup/www/jissms/ItFacultyActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .local v1, "ul":Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_26
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f0b008c

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->editTextUsername:Landroid/widget/EditText;

    .line 30
    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->editTextPassword:Landroid/widget/EditText;

    .line 36
    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1;

    invoke-direct {v1, p0}, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1;-><init>(Lcom/craftechgroup/www/jissms/ItFacultyActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method
