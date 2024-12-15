.class Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;
.super Landroid/os/AsyncTask;
.source "ItShowAllCourseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetHttpResponse"
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
.field JSonResult:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field studentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/craftechgroup/www/jissms/Student;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;


# direct methods
.method public constructor <init>(Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->context:Landroid/content/Context;

    .line 78
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 12
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 90
    new-instance v1, Lcom/craftechgroup/www/jissms/HttpServicesClass;

    iget-object v7, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;

    iget-object v7, v7, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->HttpUrl:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/craftechgroup/www/jissms/HttpServicesClass;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "httpServicesClass":Lcom/craftechgroup/www/jissms/HttpServicesClass;
    :try_start_9
    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/HttpServicesClass;->ExecutePostRequest()V

    .line 95
    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/HttpServicesClass;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_6f

    .line 97
    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/HttpServicesClass;->getResponse()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->JSonResult:Ljava/lang/String;

    .line 99
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->JSonResult:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_6a

    if-eqz v7, :cond_63

    .line 101
    const/4 v3, 0x0

    .line 104
    .local v3, "jsonArray":Lorg/json/JSONArray;
    :try_start_1f
    new-instance v4, Lorg/json/JSONArray;

    iget-object v7, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->JSonResult:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_26} :catch_65
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_6a

    .line 110
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .local v4, "jsonArray":Lorg/json/JSONArray;
    :try_start_26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->studentList:Ljava/util/List;

    .line 112
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_62

    .line 114
    new-instance v6, Lcom/craftechgroup/www/jissms/Student;

    invoke-direct {v6}, Lcom/craftechgroup/www/jissms/Student;-><init>()V

    .line 116
    .local v6, "student":Lcom/craftechgroup/www/jissms/Student;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 119
    .local v5, "jsonObject":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;

    iget-object v7, v7, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->IdList:Ljava/util/List;

    const-string v8, "id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/craftechgroup/www/jissms/Student;->StudentName:Ljava/lang/String;

    .line 124
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->studentList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_5f} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_5f} :catch_6a

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "student":Lcom/craftechgroup/www/jissms/Student;
    :cond_62
    move-object v3, v4

    .line 144
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_63
    :goto_63
    const/4 v7, 0x0

    return-object v7

    .line 128
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_65
    move-exception v0

    .line 130
    .local v0, "e":Lorg/json/JSONException;
    :goto_66
    :try_start_66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_63

    .line 139
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_6a
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_63

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6f
    :try_start_6f
    iget-object v7, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/craftechgroup/www/jissms/HttpServicesClass;->getErrorMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7d} :catch_6a

    goto :goto_63

    .line 128
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_7e
    move-exception v0

    move-object v3, v4

    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_66
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 67
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;

    iget-object v1, v1, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 153
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;

    iget-object v1, v1, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->StudentListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 155
    new-instance v0, Lcom/craftechgroup/www/jissms/ListAdapterClass;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->studentList:Ljava/util/List;

    iget-object v2, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/craftechgroup/www/jissms/ListAdapterClass;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 157
    .local v0, "adapter":Lcom/craftechgroup/www/jissms/ListAdapterClass;
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;

    iget-object v1, v1, Lcom/craftechgroup/www/jissms/ItShowAllCourseActivity;->StudentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 159
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 84
    return-void
.end method
