.class public Lcom/craftechgroup/www/jissms/ItPdfDownload;
.super Landroid/app/Activity;
.source "ItPdfDownload.java"


# instance fields
.field dest_file_path:Ljava/lang/String;

.field download_file_url:Ljava/lang/String;

.field downloadedSize:I

.field per:F

.field totalsize:I

.field tv_loading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, "test.pdf"

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->dest_file_path:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->downloadedSize:I

    .line 26
    const-string v0, "http://www.craftechgroup.com/android_jis_clg_portal/PdfUploadFolder/1.pdf"

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->download_file_url:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->per:F

    return-void
.end method


# virtual methods
.method downloadAndOpenPDF()V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/craftechgroup/www/jissms/ItPdfDownload$1;

    invoke-direct {v1, p0}, Lcom/craftechgroup/www/jissms/ItPdfDownload$1;-><init>(Lcom/craftechgroup/www/jissms/ItPdfDownload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 56
    return-void
.end method

.method downloadFile(Ljava/lang/String;)Ljava/io/File;
    .registers 15
    .param p1, "dwnload_file_path"    # Ljava/lang/String;

    .prologue
    const/high16 v12, -0x10000

    .line 59
    const/4 v4, 0x0

    .line 62
    .local v4, "file":Ljava/io/File;
    :try_start_3
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 66
    .local v9, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v10, "GET"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 67
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 70
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "SDCardRoot":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->dest_file_path:Ljava/lang/String;

    invoke-direct {v5, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_25} :catch_ad
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_25} :catch_99
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_a0

    .line 77
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_25
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v6, "fileOutput":Ljava/io/FileOutputStream;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 84
    .local v7, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    iput v10, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->totalsize:I

    .line 85
    const-string v10, "Starting PDF download..."

    invoke-virtual {p0, v10}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->setText(Ljava/lang/String;)V

    .line 88
    const/high16 v10, 0x100000

    new-array v1, v10, [B

    .line 89
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 91
    .local v2, "bufferLength":I
    :goto_3e
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_8f

    .line 92
    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 93
    iget v10, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->downloadedSize:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->downloadedSize:I

    .line 94
    iget v10, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->downloadedSize:I

    int-to-float v10, v10

    iget v11, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->totalsize:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    iput v10, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->per:F

    .line 95
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Total PDF File size  : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->totalsize:I

    div-int/lit16 v11, v11, 0x400

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " KB\n\nDownloading PDF "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->per:F

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "% complete"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->setText(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/net/MalformedURLException; {:try_start_25 .. :try_end_86} :catch_87
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_86} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_86} :catch_a7

    goto :goto_3e

    .line 104
    .end local v1    # "buffer":[B
    .end local v2    # "bufferLength":I
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :catch_87
    move-exception v3

    move-object v4, v5

    .line 105
    .end local v0    # "SDCardRoot":Ljava/io/File;
    .end local v5    # "file":Ljava/io/File;
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urlConnection":Ljava/net/HttpURLConnection;
    .local v3, "e":Ljava/net/MalformedURLException;
    .restart local v4    # "file":Ljava/io/File;
    :goto_89
    const-string v10, "Some error occured. Press back and try again."

    invoke-virtual {p0, v10, v12}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->setTextError(Ljava/lang/String;I)V

    .line 115
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_8e
    return-object v4

    .line 101
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "SDCardRoot":Ljava/io/File;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bufferLength":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v9    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_8f
    :try_start_8f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 102
    const-string v10, "Download Complete. Open PDF Application installed in the device."

    invoke-virtual {p0, v10}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->setText(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/net/MalformedURLException; {:try_start_8f .. :try_end_97} :catch_87
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_97} :catch_aa
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_97} :catch_a7

    move-object v4, v5

    .line 114
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_8e

    .line 107
    .end local v0    # "SDCardRoot":Ljava/io/File;
    .end local v1    # "buffer":[B
    .end local v2    # "bufferLength":I
    .end local v6    # "fileOutput":Ljava/io/FileOutputStream;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_99
    move-exception v3

    .line 108
    .local v3, "e":Ljava/io/IOException;
    :goto_9a
    const-string v10, "Some error occured. Press back and try again."

    invoke-virtual {p0, v10, v12}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->setTextError(Ljava/lang/String;I)V

    goto :goto_8e

    .line 110
    .end local v3    # "e":Ljava/io/IOException;
    :catch_a0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Exception;
    :goto_a1
    const-string v10, "Failed to download image. Please check your internet connection."

    invoke-virtual {p0, v10, v12}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->setTextError(Ljava/lang/String;I)V

    goto :goto_8e

    .line 110
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    .restart local v0    # "SDCardRoot":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v9    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_a7
    move-exception v3

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_a1

    .line 107
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :catch_aa
    move-exception v3

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_9a

    .line 104
    .end local v0    # "SDCardRoot":Ljava/io/File;
    .end local v8    # "url":Ljava/net/URL;
    .end local v9    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_ad
    move-exception v3

    goto :goto_89
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->tv_loading:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->tv_loading:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->setContentView(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->tv_loading:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItPdfDownload;->tv_loading:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 36
    invoke-virtual {p0}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->downloadAndOpenPDF()V

    .line 37
    return-void
.end method

.method setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Lcom/craftechgroup/www/jissms/ItPdfDownload$3;

    invoke-direct {v0, p0, p1}, Lcom/craftechgroup/www/jissms/ItPdfDownload$3;-><init>(Lcom/craftechgroup/www/jissms/ItPdfDownload;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method setTextError(Ljava/lang/String;I)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 119
    new-instance v0, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/craftechgroup/www/jissms/ItPdfDownload$2;-><init>(Lcom/craftechgroup/www/jissms/ItPdfDownload;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/craftechgroup/www/jissms/ItPdfDownload;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method
