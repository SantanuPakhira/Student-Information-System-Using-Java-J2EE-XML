.class Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;
.super Landroid/os/AsyncTask;
.source "ItExamShowSingleRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->HttpWebCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpWebCallFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 138
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->ResultHash:Ljava/util/HashMap;

    const-string v1, "StudentID"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v1, v1, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->httpParse:Lcom/craftechgroup/www/jissms/HttpParse;

    iget-object v2, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v2, v2, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->ResultHash:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v3, v3, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->HttpURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/craftechgroup/www/jissms/HttpParse;->postRequest(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->ParseResult:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->ParseResult:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 138
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .param p1, "httpResponseMsg"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->pDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 155
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iput-object p1, v0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->FinalJSonObject:Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$GetHttpResponse;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v2, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    invoke-direct {v0, v1, v2}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$GetHttpResponse;-><init>(Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$GetHttpResponse;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 142
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 144
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity$1HttpWebCallFunction;->this$0:Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;

    const-string v2, "Loading Data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/craftechgroup/www/jissms/ItExamShowSingleRecordActivity;->pDialog:Landroid/app/ProgressDialog;

    .line 145
    return-void
.end method
