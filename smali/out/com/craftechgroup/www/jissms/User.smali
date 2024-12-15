.class public Lcom/craftechgroup/www/jissms/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private email:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private id:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "gender"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/craftechgroup/www/jissms/User;->id:I

    .line 14
    iput-object p2, p0, Lcom/craftechgroup/www/jissms/User;->username:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/craftechgroup/www/jissms/User;->email:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/craftechgroup/www/jissms/User;->gender:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/User;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/craftechgroup/www/jissms/User;->id:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/craftechgroup/www/jissms/User;->username:Ljava/lang/String;

    return-object v0
.end method
