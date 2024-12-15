.class final Lnet/gotev/uploadservice/NameValue$1;
.super Ljava/lang/Object;
.source "NameValue.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/gotev/uploadservice/NameValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/gotev/uploadservice/NameValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/NameValue$1;->createFromParcel(Landroid/os/Parcel;)Lnet/gotev/uploadservice/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/gotev/uploadservice/NameValue;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 63
    new-instance v0, Lnet/gotev/uploadservice/NameValue;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnet/gotev/uploadservice/NameValue;-><init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/NameValue$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lnet/gotev/uploadservice/NameValue$1;->newArray(I)[Lnet/gotev/uploadservice/NameValue;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lnet/gotev/uploadservice/NameValue;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 68
    new-array v0, p1, [Lnet/gotev/uploadservice/NameValue;

    return-object v0
.end method
