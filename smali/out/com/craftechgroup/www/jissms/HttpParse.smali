.class public Lcom/craftechgroup/www/jissms/HttpParse;
.super Ljava/lang/Object;
.source "HttpParse.java"


# instance fields
.field FinalHttpData:Ljava/lang/String;

.field Result:Ljava/lang/String;

.field bufferedReader:Ljava/io/BufferedReader;

.field bufferedWriter:Ljava/io/BufferedWriter;

.field outputStream:Ljava/io/OutputStream;

.field stringBuilder:Ljava/lang/StringBuilder;

.field url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/HttpParse;->FinalHttpData:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/craftechgroup/www/jissms/HttpParse;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public FinalDataParse(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "hashMap2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    .local v0, "map_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/HttpParse;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/HttpParse;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/HttpParse;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v3, p0, Lcom/craftechgroup/www/jissms/HttpParse;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 91
    .end local v0    # "map_entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_45
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/HttpParse;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/craftechgroup/www/jissms/HttpParse;->Result:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/craftechgroup/www/jissms/HttpParse;->Result:Ljava/lang/String;

    return-object v1
.end method

.method public postRequest(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p2, "HttpUrlHolder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "Data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->url:Ljava/net/URL;

    .line 32
    iget-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 34
    .local v1, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v2, 0x36b0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 36
    const/16 v2, 0x36b0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 38
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 42
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 44
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->outputStream:Ljava/io/OutputStream;

    .line 46
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/craftechgroup/www/jissms/HttpParse;->outputStream:Ljava/io/OutputStream;

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->bufferedWriter:Ljava/io/BufferedWriter;

    .line 50
    iget-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p0, p1}, Lcom/craftechgroup/www/jissms/HttpParse;->FinalDataParse(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 54
    iget-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->bufferedWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 56
    iget-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 58
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_77

    .line 60
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 62
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->bufferedReader:Ljava/io/BufferedReader;

    .line 65
    iget-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->FinalHttpData:Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_74} :catch_7c

    .line 74
    .end local v1    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :goto_74
    iget-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->FinalHttpData:Ljava/lang/String;

    return-object v2

    .line 68
    .restart local v1    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :cond_77
    :try_start_77
    const-string v2, "Something Went Wrong"

    iput-object v2, p0, Lcom/craftechgroup/www/jissms/HttpParse;->FinalHttpData:Ljava/lang/String;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7b} :catch_7c

    goto :goto_74

    .line 70
    .end local v1    # "httpURLConnection":Ljava/net/HttpURLConnection;
    :catch_7c
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_74
.end method
