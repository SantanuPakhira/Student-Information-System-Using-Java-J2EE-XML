.class Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;
.super Landroid/os/AsyncTask;
.source "ItShowSingleRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;
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
.field public context:Landroid/content/Context;

.field final synthetic this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;


# direct methods
.method public constructor <init>(Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->context:Landroid/content/Context;

    .line 187
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 180
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 9
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 200
    :try_start_0
    iget-object v5, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    iget-object v5, v5, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->FinalJSonObject:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_4e

    if-eqz v5, :cond_4c

    .line 202
    const/4 v2, 0x0

    .line 205
    .local v2, "jsonArray":Lorg/json/JSONArray;
    :try_start_7
    new-instance v3, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    iget-object v5, v5, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->FinalJSonObject:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_10} :catch_48
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_4e

    .line 209
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    :try_start_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4c

    .line 211
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 214
    .local v4, "jsonObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->NameHolder:Ljava/lang/String;

    .line 215
    iget-object v5, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    const-string v6, "phone_number"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->NumberHolder:Ljava/lang/String;

    .line 216
    iget-object v5, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    const-string v6, "class"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->ClassHolder:Ljava/lang/String;
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_45} :catch_53
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_45} :catch_4e

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 220
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_48
    move-exception v0

    .line 222
    .local v0, "e":Lorg/json/JSONException;
    :goto_49
    :try_start_49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4e

    .line 231
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_4c
    :goto_4c
    const/4 v5, 0x0

    return-object v5

    .line 226
    :catch_4e
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_53
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    goto :goto_49
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->NAME:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    iget-object v1, v1, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->NameHolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->PHONE_NUMBER:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    iget-object v1, v1, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->NumberHolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    iget-object v0, v0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->CLASS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity$GetHttpResponse;->this$0:Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;

    iget-object v1, v1, Lcom/craftechgroup/www/jissms/ItShowSingleRecordActivity;->ClassHolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 193
    return-void
.end method
