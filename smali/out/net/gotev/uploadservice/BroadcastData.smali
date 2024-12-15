.class Lnet/gotev/uploadservice/BroadcastData;
.super Ljava/lang/Object;
.source "BroadcastData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/gotev/uploadservice/BroadcastData$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/BroadcastData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private exception:Ljava/lang/Exception;

.field private id:Ljava/lang/String;

.field private responseBody:[B

.field private responseCode:I

.field private status:Lnet/gotev/uploadservice/BroadcastData$Status;

.field private totalBytes:J

.field private uploadedBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lnet/gotev/uploadservice/BroadcastData$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/BroadcastData$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/BroadcastData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseBody:[B

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseBody:[B

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->id:Ljava/lang/String;

    .line 70
    invoke-static {}, Lnet/gotev/uploadservice/BroadcastData$Status;->values()[Lnet/gotev/uploadservice/BroadcastData$Status;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->status:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->exception:Ljava/lang/Exception;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/BroadcastData;->uploadedBytes:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/gotev/uploadservice/BroadcastData;->totalBytes:J

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseCode:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseBody:[B

    .line 77
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/BroadcastData$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lnet/gotev/uploadservice/BroadcastData$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/BroadcastData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lnet/gotev/uploadservice/UploadService;->getActionBroadcast()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "broadcastData"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    return-object v0
.end method

.method public getProgressPercent()I
    .registers 5

    .prologue
    .line 131
    iget-wide v0, p0, Lnet/gotev/uploadservice/BroadcastData;->uploadedBytes:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lnet/gotev/uploadservice/BroadcastData;->totalBytes:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getResponseBody()[B
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseBody:[B

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseCode:I

    return v0
.end method

.method public getStatus()Lnet/gotev/uploadservice/BroadcastData$Status;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->status:Lnet/gotev/uploadservice/BroadcastData$Status;

    return-object v0
.end method

.method public getTotalBytes()J
    .registers 3

    .prologue
    .line 122
    iget-wide v0, p0, Lnet/gotev/uploadservice/BroadcastData;->totalBytes:J

    return-wide v0
.end method

.method public getUploadedBytes()J
    .registers 3

    .prologue
    .line 113
    iget-wide v0, p0, Lnet/gotev/uploadservice/BroadcastData;->uploadedBytes:J

    return-wide v0
.end method

.method public setException(Ljava/lang/Exception;)Lnet/gotev/uploadservice/BroadcastData;
    .registers 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 108
    iput-object p1, p0, Lnet/gotev/uploadservice/BroadcastData;->exception:Ljava/lang/Exception;

    .line 109
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lnet/gotev/uploadservice/BroadcastData;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lnet/gotev/uploadservice/BroadcastData;->id:Ljava/lang/String;

    .line 91
    return-object p0
.end method

.method public setResponseBody([B)Lnet/gotev/uploadservice/BroadcastData;
    .registers 2
    .param p1, "responseBody"    # [B

    .prologue
    .line 148
    iput-object p1, p0, Lnet/gotev/uploadservice/BroadcastData;->responseBody:[B

    .line 149
    return-object p0
.end method

.method public setResponseCode(I)Lnet/gotev/uploadservice/BroadcastData;
    .registers 2
    .param p1, "responseCode"    # I

    .prologue
    .line 139
    iput p1, p0, Lnet/gotev/uploadservice/BroadcastData;->responseCode:I

    .line 140
    return-object p0
.end method

.method public setStatus(Lnet/gotev/uploadservice/BroadcastData$Status;)Lnet/gotev/uploadservice/BroadcastData;
    .registers 2
    .param p1, "status"    # Lnet/gotev/uploadservice/BroadcastData$Status;

    .prologue
    .line 99
    iput-object p1, p0, Lnet/gotev/uploadservice/BroadcastData;->status:Lnet/gotev/uploadservice/BroadcastData$Status;

    .line 100
    return-object p0
.end method

.method public setTotalBytes(J)Lnet/gotev/uploadservice/BroadcastData;
    .registers 4
    .param p1, "totalBytes"    # J

    .prologue
    .line 126
    iput-wide p1, p0, Lnet/gotev/uploadservice/BroadcastData;->totalBytes:J

    .line 127
    return-object p0
.end method

.method public setUploadedBytes(J)Lnet/gotev/uploadservice/BroadcastData;
    .registers 4
    .param p1, "uploadedBytes"    # J

    .prologue
    .line 117
    iput-wide p1, p0, Lnet/gotev/uploadservice/BroadcastData;->uploadedBytes:J

    .line 118
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->status:Lnet/gotev/uploadservice/BroadcastData$Status;

    invoke-virtual {v0}, Lnet/gotev/uploadservice/BroadcastData$Status;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->exception:Ljava/lang/Exception;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 60
    iget-wide v0, p0, Lnet/gotev/uploadservice/BroadcastData;->uploadedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-wide v0, p0, Lnet/gotev/uploadservice/BroadcastData;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseBody:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lnet/gotev/uploadservice/BroadcastData;->responseBody:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    return-void
.end method
