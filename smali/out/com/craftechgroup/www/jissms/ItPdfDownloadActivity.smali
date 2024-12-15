.class public Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItPdfDownloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field downloadPdf10:Landroid/widget/Button;

.field downloadPdf11:Landroid/widget/Button;

.field downloadPdf12:Landroid/widget/Button;

.field downloadPdf13:Landroid/widget/Button;

.field downloadPdf14:Landroid/widget/Button;

.field downloadPdf15:Landroid/widget/Button;

.field downloadPdf16:Landroid/widget/Button;

.field downloadPdf17:Landroid/widget/Button;

.field downloadPdf18:Landroid/widget/Button;

.field downloadPdf19:Landroid/widget/Button;

.field downloadPdf2:Landroid/widget/Button;

.field downloadPdf20:Landroid/widget/Button;

.field downloadPdf21:Landroid/widget/Button;

.field downloadPdf3:Landroid/widget/Button;

.field downloadPdf4:Landroid/widget/Button;

.field downloadPdf5:Landroid/widget/Button;

.field downloadPdf6:Landroid/widget/Button;

.field downloadPdf7:Landroid/widget/Button;

.field downloadPdf8:Landroid/widget/Button;

.field downloadPdf9:Landroid/widget/Button;

.field openDownloadedFolder:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 39
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    .line 40
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf3:Landroid/widget/Button;

    .line 41
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf4:Landroid/widget/Button;

    .line 42
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf5:Landroid/widget/Button;

    .line 43
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf6:Landroid/widget/Button;

    .line 44
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf7:Landroid/widget/Button;

    .line 45
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf8:Landroid/widget/Button;

    .line 46
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf9:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf10:Landroid/widget/Button;

    .line 48
    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf11:Landroid/widget/Button;

    .line 49
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf12:Landroid/widget/Button;

    .line 50
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf13:Landroid/widget/Button;

    .line 51
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf14:Landroid/widget/Button;

    .line 52
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf15:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf16:Landroid/widget/Button;

    .line 54
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf17:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf18:Landroid/widget/Button;

    .line 56
    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf19:Landroid/widget/Button;

    .line 57
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf20:Landroid/widget/Button;

    .line 58
    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf21:Landroid/widget/Button;

    .line 60
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->openDownloadedFolder:Landroid/widget/Button;

    .line 62
    return-void
.end method

.method private isConnectingToInternet()Z
    .registers 4

    .prologue
    .line 255
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 258
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 259
    const/4 v2, 0x1

    .line 261
    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method private openDownloadedFolder()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 224
    new-instance v3, Lcom/craftechgroup/www/jissms/CheckForSDCard;

    invoke-direct {v3}, Lcom/craftechgroup/www/jissms/CheckForSDCard;-><init>()V

    invoke-virtual {v3}, Lcom/craftechgroup/www/jissms/CheckForSDCard;->isSDCardPresent()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 227
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Jis Downloads"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "apkStorage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3e

    .line 233
    const-string v3, "Right now there is no directory. Please download some file first."

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 251
    .end local v0    # "apkStorage":Ljava/io/File;
    :goto_3d
    return-void

    .line 241
    .restart local v0    # "apkStorage":Ljava/io/File;
    :cond_3e
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Jis Downloads"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 244
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "file/*"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v3, "Open Download Folder"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3d

    .line 249
    .end local v0    # "apkStorage":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_79
    const-string v3, "Oops!! There is no SD Card."

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_3d
.end method

.method private setListeners()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf4:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf5:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf6:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf7:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf8:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf9:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf10:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf11:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf12:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf13:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf14:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf15:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf16:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf17:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf18:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf19:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf20:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf21:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->openDownloadedFolder:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_236

    .line 219
    :goto_8
    return-void

    .line 94
    :pswitch_9
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 95
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/1.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_8

    .line 97
    :cond_19
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 100
    :pswitch_23
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 101
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/2.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_8

    .line 103
    :cond_33
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 106
    :pswitch_3d
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 107
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/3.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_8

    .line 109
    :cond_4d
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 112
    :pswitch_57
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 113
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/4.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_8

    .line 115
    :cond_67
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 118
    :pswitch_71
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 119
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/5.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto :goto_8

    .line 121
    :cond_81
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 124
    :pswitch_8c
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 125
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/6.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 127
    :cond_9d
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 130
    :pswitch_a8
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 131
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/7.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 133
    :cond_b9
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 136
    :pswitch_c4
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 137
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/8.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 139
    :cond_d5
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 142
    :pswitch_e0
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 143
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/9.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 145
    :cond_f1
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 148
    :pswitch_fc
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 149
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/10.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 151
    :cond_10d
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 154
    :pswitch_118
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 155
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/11.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 157
    :cond_129
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 160
    :pswitch_134
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 161
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/12.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 163
    :cond_145
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 166
    :pswitch_150
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_161

    .line 167
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/13.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 169
    :cond_161
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 172
    :pswitch_16c
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 173
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/14.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 175
    :cond_17d
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 178
    :pswitch_188
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_199

    .line 179
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/15.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 181
    :cond_199
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 184
    :pswitch_1a4
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 185
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/16.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 187
    :cond_1b5
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 190
    :pswitch_1c0
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 191
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/17.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 193
    :cond_1d1
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 196
    :pswitch_1dc
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_1ed

    .line 197
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/18.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 199
    :cond_1ed
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 202
    :pswitch_1f8
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_209

    .line 203
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/19.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 205
    :cond_209
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 208
    :pswitch_214
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->isConnectingToInternet()Z

    move-result v0

    if-eqz v0, :cond_225

    .line 209
    new-instance v0, Lcom/craftechgroup/www/jissms/DownloadTask;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->downloadPdf2:Landroid/widget/Button;

    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/20.pdf"

    invoke-direct {v0, p0, v1, v2}, Lcom/craftechgroup/www/jissms/DownloadTask;-><init>(Landroid/content/Context;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 211
    :cond_225
    const-string v0, "Oops!! There is no internet connection. Please enable internet connection and try again."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 214
    :pswitch_230
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->openDownloadedFolder()V

    goto/16 :goto_8

    .line 92
    nop

    :pswitch_data_236
    .packed-switch 0x7f0b0066
        :pswitch_9
        :pswitch_23
        :pswitch_3d
        :pswitch_57
        :pswitch_71
        :pswitch_8c
        :pswitch_a8
        :pswitch_c4
        :pswitch_e0
        :pswitch_fc
        :pswitch_118
        :pswitch_134
        :pswitch_150
        :pswitch_16c
        :pswitch_188
        :pswitch_1a4
        :pswitch_1c0
        :pswitch_1dc
        :pswitch_1f8
        :pswitch_214
        :pswitch_230
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->initViews()V

    .line 33
    invoke-direct {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownloadActivity;->setListeners()V

    .line 35
    return-void
.end method
