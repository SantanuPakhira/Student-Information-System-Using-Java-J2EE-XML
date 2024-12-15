.class Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/craftechgroup/www/jissms/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field apkStorage:Ljava/io/File;

.field outputFile:Ljava/io/File;

.field final synthetic this$0:Lcom/craftechgroup/www/jissms/DownloadTask;


# direct methods
.method private constructor <init>(Lcom/craftechgroup/www/jissms/DownloadTask;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->apkStorage:Ljava/io/File;

    .line 45
    iput-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->outputFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Lcom/craftechgroup/www/jissms/DownloadTask;Lcom/craftechgroup/www/jissms/DownloadTask$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/craftechgroup/www/jissms/DownloadTask;
    .param p2, "x1"    # Lcom/craftechgroup/www/jissms/DownloadTask$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;-><init>(Lcom/craftechgroup/www/jissms/DownloadTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 13
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 96
    :try_start_1
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v7}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$200(Lcom/craftechgroup/www/jissms/DownloadTask;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 98
    .local v1, "c":Ljava/net/HttpURLConnection;
    const-string v7, "GET"

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 102
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_4c

    .line 103
    const-string v7, "Download Task"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server returned HTTP "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 104
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 103
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_4c
    new-instance v7, Lcom/craftechgroup/www/jissms/CheckForSDCard;

    invoke-direct {v7}, Lcom/craftechgroup/www/jissms/CheckForSDCard;-><init>()V

    invoke-virtual {v7}, Lcom/craftechgroup/www/jissms/CheckForSDCard;->isSDCardPresent()Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 112
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Jis Downloads"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->apkStorage:Ljava/io/File;

    .line 119
    :goto_7b
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->apkStorage:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8f

    .line 120
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->apkStorage:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 121
    const-string v7, "Download Task"

    const-string v8, "Directory Created."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_8f
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->apkStorage:Ljava/io/File;

    iget-object v9, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v9}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$400(Lcom/craftechgroup/www/jissms/DownloadTask;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->outputFile:Ljava/io/File;

    .line 127
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->outputFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_b2

    .line 128
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->outputFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 129
    const-string v7, "Download Task"

    const-string v8, "File Created"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_b2
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->outputFile:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 134
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 136
    .local v4, "is":Ljava/io/InputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 137
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 138
    .local v5, "len1":I
    :goto_c2
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_103

    .line 139
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_cd} :catch_ce

    goto :goto_c2

    .line 146
    .end local v0    # "buffer":[B
    .end local v1    # "c":Ljava/net/HttpURLConnection;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "len1":I
    .end local v6    # "url":Ljava/net/URL;
    :catch_ce
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    iput-object v10, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->outputFile:Ljava/io/File;

    .line 151
    const-string v7, "Download Task"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download Error Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_f0
    return-object v10

    .line 116
    .restart local v1    # "c":Ljava/net/HttpURLConnection;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_f1
    :try_start_f1
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v7}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$300(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "Oops!! There is no SD Card."

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7b

    .line 143
    .restart local v0    # "buffer":[B
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "len1":I
    :cond_103
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 144
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_109} :catch_ce

    goto :goto_f0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const-wide/16 v6, 0xbb8

    const v3, 0x7f060024

    .line 57
    :try_start_5
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->outputFile:Ljava/io/File;

    if-eqz v1, :cond_23

    .line 58
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v1}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v1}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_46

    .line 90
    :goto_1f
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 91
    return-void

    .line 61
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v1}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask$1;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask$1;-><init>(Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    const-string v1, "Download Task"

    const-string v2, "Download Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_45} :catch_46

    goto :goto_1f

    .line 73
    :catch_46
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v1}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask$2;

    invoke-direct {v2, p0}, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask$2;-><init>(Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    const-string v1, "Download Task"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download Failed with Exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 49
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 50
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v0}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/DownloadTask$DownloadingTask;->this$0:Lcom/craftechgroup/www/jissms/DownloadTask;

    invoke-static {v0}, Lcom/craftechgroup/www/jissms/DownloadTask;->access$100(Lcom/craftechgroup/www/jissms/DownloadTask;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060025

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 52
    return-void
.end method
