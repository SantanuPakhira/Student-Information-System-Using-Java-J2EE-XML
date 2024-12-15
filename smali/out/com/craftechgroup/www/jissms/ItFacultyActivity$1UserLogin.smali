.class Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;
.super Landroid/os/AsyncTask;
.source "ItFacultyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/craftechgroup/www/jissms/ItFacultyActivity;->userLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserLogin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field progressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/craftechgroup/www/jissms/ItFacultyActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/craftechgroup/www/jissms/ItFacultyActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    iput-object p2, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 74
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 6
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 127
    new-instance v1, Lcom/craftechgroup/www/jissms/RequestHandler;

    invoke-direct {v1}, Lcom/craftechgroup/www/jissms/RequestHandler;-><init>()V

    .line 130
    .local v1, "requestHandler":Lcom/craftechgroup/www/jissms/RequestHandler;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "username"

    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v2, "password"

    iget-object v3, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "http://www.craftechgroup.com/android_jis_clg_portal/Api.php?apicall=login"

    invoke-virtual {v1, v2, v0}, Lcom/craftechgroup/www/jissms/RequestHandler;->sendPostRequest(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 74
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    iget-object v4, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->progressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_73

    .line 97
    iget-object v4, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-virtual {v4}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 100
    const-string v4, "user"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 103
    .local v3, "userJson":Lorg/json/JSONObject;
    new-instance v2, Lcom/craftechgroup/www/jissms/User;

    const-string v4, "id"

    .line 104
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "username"

    .line 105
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    .line 106
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "gender"

    .line 107
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/craftechgroup/www/jissms/User;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v2, "user":Lcom/craftechgroup/www/jissms/User;
    iget-object v4, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-virtual {v4}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->getInstance(Landroid/content/Context;)Lcom/craftechgroup/www/jissms/SharedPrefManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/craftechgroup/www/jissms/SharedPrefManager;->userLogin(Lcom/craftechgroup/www/jissms/User;)V

    .line 114
    iget-object v4, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-virtual {v4}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->finish()V

    .line 115
    iget-object v4, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-virtual {v6}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/craftechgroup/www/jissms/ItFacultyProfileActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "user":Lcom/craftechgroup/www/jissms/User;
    .end local v3    # "userJson":Lorg/json/JSONObject;
    :goto_72
    return-void

    .line 117
    .restart local v1    # "obj":Lorg/json/JSONObject;
    :cond_73
    iget-object v4, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-virtual {v4}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Invalid username or password"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_83} :catch_84

    goto :goto_72

    .line 119
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_84
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_72
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 81
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->this$0:Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Lcom/craftechgroup/www/jissms/ItFacultyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->progressBar:Landroid/widget/ProgressBar;

    .line 82
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItFacultyActivity$1UserLogin;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 83
    return-void
.end method
