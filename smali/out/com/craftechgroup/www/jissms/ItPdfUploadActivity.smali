.class public Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ItPdfUploadActivity.java"


# static fields
.field public static final PDF_UPLOAD_HTTP_URL:Ljava/lang/String; = "http://www.craftechgroup.com/android_jis_clg_portal/server_upload_pdf.php"


# instance fields
.field public PDF_REQ_CODE:I

.field PdfID:Ljava/lang/String;

.field PdfNameEditText:Landroid/widget/EditText;

.field PdfNameHolder:Ljava/lang/String;

.field PdfPathHolder:Ljava/lang/String;

.field SelectButton:Landroid/widget/Button;

.field UploadButton:Landroid/widget/Button;

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PDF_REQ_CODE:I

    return-void
.end method


# virtual methods
.method public PdfUploadFunction()V
    .registers 5

    .prologue
    .line 102
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfNameHolder:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->uri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/craftechgroup/www/jissms/FilePath;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfPathHolder:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfPathHolder:Ljava/lang/String;

    if-nez v1, :cond_27

    .line 110
    const-string v1, "Please move your PDF file to internal storage & try again."

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 132
    :goto_26
    return-void

    .line 118
    :cond_27
    :try_start_27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfID:Ljava/lang/String;

    .line 120
    new-instance v1, Lnet/gotev/uploadservice/MultipartUploadRequest;

    iget-object v2, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfID:Ljava/lang/String;

    const-string v3, "http://www.craftechgroup.com/android_jis_clg_portal/server_upload_pdf.php"

    invoke-direct {v1, p0, v2, v3}, Lnet/gotev/uploadservice/MultipartUploadRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfPathHolder:Ljava/lang/String;

    const-string v3, "pdf"

    .line 121
    invoke-virtual {v1, v2, v3}, Lnet/gotev/uploadservice/MultipartUploadRequest;->addFileToUpload(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v1

    const-string v2, "name"

    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfNameHolder:Ljava/lang/String;

    .line 122
    invoke-virtual {v1, v2, v3}, Lnet/gotev/uploadservice/MultipartUploadRequest;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v1

    new-instance v2, Lnet/gotev/uploadservice/UploadNotificationConfig;

    invoke-direct {v2}, Lnet/gotev/uploadservice/UploadNotificationConfig;-><init>()V

    .line 123
    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v1

    const/4 v2, 0x5

    .line 124
    invoke-virtual {v1, v2}, Lnet/gotev/uploadservice/MultipartUploadRequest;->setMaxRetries(I)Lnet/gotev/uploadservice/MultipartUploadRequest;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lnet/gotev/uploadservice/MultipartUploadRequest;->startUpload()Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_5b} :catch_5c

    goto :goto_26

    .line 127
    :catch_5c
    move-exception v0

    .line 129
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_26
.end method

.method public RequestRunTimePermission()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 138
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    const-string v0, "READ_EXTERNAL_STORAGE permission Access Dialog"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 148
    :goto_12
    return-void

    .line 145
    :cond_13
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_12
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    iget v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PDF_REQ_CODE:I

    if-ne p1, v0, :cond_1f

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1f

    if-eqz p3, :cond_1f

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 91
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->uri:Landroid/net/Uri;

    .line 94
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->SelectButton:Landroid/widget/Button;

    const-string v1, "PDF is Selected"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_1f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->RequestRunTimePermission()V

    .line 49
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->SelectButton:Landroid/widget/Button;

    .line 50
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->UploadButton:Landroid/widget/Button;

    .line 51
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->PdfNameEditText:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->SelectButton:Landroid/widget/Button;

    new-instance v1, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$1;

    invoke-direct {v1, p0}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$1;-><init>(Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;->UploadButton:Landroid/widget/Button;

    new-instance v1, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$2;

    invoke-direct {v1, p0}, Lcom/craftechgroup/www/jissms/ItPdfUploadActivity$2;-><init>(Lcom/craftechgroup/www/jissms/ItPdfUploadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "RC"    # I
    .param p2, "per"    # [Ljava/lang/String;
    .param p3, "Result"    # [I

    .prologue
    const/4 v1, 0x1

    .line 153
    packed-switch p1, :pswitch_data_22

    .line 168
    :goto_4
    return-void

    .line 157
    :pswitch_5
    array-length v0, p3

    if-lez v0, :cond_17

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_17

    .line 159
    const-string v0, "Permission Granted"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 163
    :cond_17
    const-string v0, "Permission Canceled"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    .line 153
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method
