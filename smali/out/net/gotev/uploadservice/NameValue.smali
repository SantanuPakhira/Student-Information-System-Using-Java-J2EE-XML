.class public final Lnet/gotev/uploadservice/NameValue;
.super Ljava/lang/Object;
.source "NameValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final NEW_LINE:Ljava/lang/String; = "\r\n"


# instance fields
.field private final US_ASCII:Ljava/nio/charset/Charset;

.field private final UTF8:Ljava/nio/charset/Charset;

.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lnet/gotev/uploadservice/NameValue$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/NameValue$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/NameValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/NameValue;->US_ASCII:Ljava/nio/charset/Charset;

    .line 23
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/NameValue;->UTF8:Ljava/nio/charset/Charset;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/NameValue;->name:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/NameValue;->value:Ljava/lang/String;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/NameValue$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lnet/gotev/uploadservice/NameValue$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/NameValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/NameValue;->US_ASCII:Ljava/nio/charset/Charset;

    .line 23
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/NameValue;->UTF8:Ljava/nio/charset/Charset;

    .line 26
    iput-object p1, p0, Lnet/gotev/uploadservice/NameValue;->name:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lnet/gotev/uploadservice/NameValue;->value:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 47
    instance-of v2, p1, Lnet/gotev/uploadservice/NameValue;

    if-eqz v2, :cond_1f

    move-object v1, p1

    .line 48
    check-cast v1, Lnet/gotev/uploadservice/NameValue;

    .line 49
    .local v1, "other":Lnet/gotev/uploadservice/NameValue;
    iget-object v2, p0, Lnet/gotev/uploadservice/NameValue;->name:Ljava/lang/String;

    iget-object v3, v1, Lnet/gotev/uploadservice/NameValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lnet/gotev/uploadservice/NameValue;->value:Ljava/lang/String;

    iget-object v3, v1, Lnet/gotev/uploadservice/NameValue;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    .line 54
    .end local v1    # "other":Lnet/gotev/uploadservice/NameValue;
    .local v0, "areEqual":Z
    :goto_1c
    return v0

    .line 49
    .end local v0    # "areEqual":Z
    .restart local v1    # "other":Lnet/gotev/uploadservice/NameValue;
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c

    .line 51
    .end local v1    # "other":Lnet/gotev/uploadservice/NameValue;
    :cond_1f
    const/4 v0, 0x0

    .restart local v0    # "areEqual":Z
    goto :goto_1c
.end method

.method public getMultipartBytes(Z)[B
    .registers 4
    .param p1, "isUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Disposition: form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/NameValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/gotev/uploadservice/NameValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_36

    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->UTF8:Ljava/nio/charset/Charset;

    .line 40
    :goto_31
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 39
    :cond_36
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->US_ASCII:Ljava/nio/charset/Charset;

    goto :goto_31
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lnet/gotev/uploadservice/NameValue;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
