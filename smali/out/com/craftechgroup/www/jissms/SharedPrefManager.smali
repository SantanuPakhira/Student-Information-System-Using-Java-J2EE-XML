.class public Lcom/craftechgroup/www/jissms/SharedPrefManager;
.super Ljava/lang/Object;
.source "SharedPrefManager.java"


# static fields
.field private static final KEY_EMAIL:Ljava/lang/String; = "keyemail"

.field private static final KEY_GENDER:Ljava/lang/String; = "keygender"

.field private static final KEY_ID:Ljava/lang/String; = "keyid"

.field private static final KEY_USERNAME:Ljava/lang/String; = "keyusername"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "simplifiedcodingsharedpref"

.field private static mCtx:Landroid/content/Context;

.field private static mInstance:Lcom/craftechgroup/www/jissms/SharedPrefManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sput-object p1, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mCtx:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/craftechgroup/www/jissms/SharedPrefManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v1, Lcom/craftechgroup/www/jissms/SharedPrefManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mInstance:Lcom/craftechgroup/www/jissms/SharedPrefManager;

    if-nez v0, :cond_e

    .line 31
    new-instance v0, Lcom/craftechgroup/www/jissms/SharedPrefManager;

    invoke-direct {v0, p0}, Lcom/craftechgroup/www/jissms/SharedPrefManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mInstance:Lcom/craftechgroup/www/jissms/SharedPrefManager;

    .line 33
    :cond_e
    sget-object v0, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mInstance:Lcom/craftechgroup/www/jissms/SharedPrefManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getUser()Lcom/craftechgroup/www/jissms/User;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 56
    sget-object v1, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mCtx:Landroid/content/Context;

    const-string v2, "simplifiedcodingsharedpref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/craftechgroup/www/jissms/User;

    const-string v2, "keyid"

    const/4 v3, -0x1

    .line 58
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "keyusername"

    .line 59
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "keyemail"

    .line 60
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keygender"

    .line 61
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/craftechgroup/www/jissms/User;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v1
.end method

.method public isLoggedIn()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v2, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mCtx:Landroid/content/Context;

    const-string v3, "simplifiedcodingsharedpref"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "keyusername"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method public logout()V
    .registers 7

    .prologue
    .line 67
    sget-object v2, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mCtx:Landroid/content/Context;

    const-string v3, "simplifiedcodingsharedpref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    sget-object v2, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mCtx:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mCtx:Landroid/content/Context;

    const-class v5, Lcom/craftechgroup/www/jissms/ItFacultyActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public userLogin(Lcom/craftechgroup/www/jissms/User;)V
    .registers 7
    .param p1, "user"    # Lcom/craftechgroup/www/jissms/User;

    .prologue
    .line 39
    sget-object v2, Lcom/craftechgroup/www/jissms/SharedPrefManager;->mCtx:Landroid/content/Context;

    const-string v3, "simplifiedcodingsharedpref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "keyid"

    invoke-virtual {p1}, Lcom/craftechgroup/www/jissms/User;->getId()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 42
    const-string v2, "keyusername"

    invoke-virtual {p1}, Lcom/craftechgroup/www/jissms/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    const-string v2, "keyemail"

    invoke-virtual {p1}, Lcom/craftechgroup/www/jissms/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    const-string v2, "keygender"

    invoke-virtual {p1}, Lcom/craftechgroup/www/jissms/User;->getGender()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    return-void
.end method
