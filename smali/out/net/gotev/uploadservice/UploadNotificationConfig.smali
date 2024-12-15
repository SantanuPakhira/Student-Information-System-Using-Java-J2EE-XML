.class public final Lnet/gotev/uploadservice/UploadNotificationConfig;
.super Ljava/lang/Object;
.source "UploadNotificationConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/UploadNotificationConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoClearOnSuccess:Z

.field private clearOnAction:Z

.field private clickIntent:Landroid/content/Intent;

.field private completed:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private iconResourceID:I

.field private inProgress:Ljava/lang/String;

.field private ringToneEnabled:Z

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 185
    new-instance v0, Lnet/gotev/uploadservice/UploadNotificationConfig$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/UploadNotificationConfig$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/UploadNotificationConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const v0, 0x1080055

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->iconResourceID:I

    .line 41
    const-string v0, "File Upload"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->title:Ljava/lang/String;

    .line 42
    const-string v0, "Upload in progress"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->inProgress:Ljava/lang/String;

    .line 43
    const-string v0, "Upload completed successfully!"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->completed:Ljava/lang/String;

    .line 44
    const-string v0, "Error during upload"

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->error:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->autoClearOnSuccess:Z

    .line 46
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clearOnAction:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clickIntent:Landroid/content/Intent;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->ringToneEnabled:Z

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->iconResourceID:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->title:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->inProgress:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->completed:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->error:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4c

    move v0, v1

    :goto_2a
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->autoClearOnSuccess:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4e

    move v0, v1

    :goto_33
    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clearOnAction:Z

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_50

    :goto_3b
    iput-boolean v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->ringToneEnabled:Z

    .line 225
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clickIntent:Landroid/content/Intent;

    .line 226
    return-void

    :cond_4c
    move v0, v2

    .line 222
    goto :goto_2a

    :cond_4e
    move v0, v2

    .line 223
    goto :goto_33

    :cond_50
    move v1, v2

    .line 224
    goto :goto_3b
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/UploadNotificationConfig$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lnet/gotev/uploadservice/UploadNotificationConfig$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/UploadNotificationConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method final getCompletedMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->completed:Ljava/lang/String;

    return-object v0
.end method

.method final getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->error:Ljava/lang/String;

    return-object v0
.end method

.method final getIconResourceID()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->iconResourceID:I

    return v0
.end method

.method final getInProgressMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->inProgress:Ljava/lang/String;

    return-object v0
.end method

.method final getPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x8000000

    .line 176
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clickIntent:Landroid/content/Intent;

    if-nez v0, :cond_11

    .line 177
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 180
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x1

    iget-object v1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clickIntent:Landroid/content/Intent;

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_10
.end method

.method final getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->title:Ljava/lang/String;

    return-object v0
.end method

.method final isAutoClearOnSuccess()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->autoClearOnSuccess:Z

    return v0
.end method

.method final isClearOnAction()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clearOnAction:Z

    return v0
.end method

.method final isRingToneEnabled()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->ringToneEnabled:Z

    return v0
.end method

.method public final setAutoClearOnSuccess(Z)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2
    .param p1, "clear"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->autoClearOnSuccess:Z

    .line 108
    return-object p0
.end method

.method public final setClearOnAction(Z)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2
    .param p1, "clear"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clearOnAction:Z

    .line 118
    return-object p0
.end method

.method public final setClickIntent(Landroid/content/Intent;)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2
    .param p1, "clickIntent"    # Landroid/content/Intent;

    .prologue
    .line 128
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clickIntent:Landroid/content/Intent;

    .line 129
    return-object p0
.end method

.method public final setCompletedMessage(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->completed:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public final setErrorMessage(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->error:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public final setIcon(I)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2
    .param p1, "resourceID"    # I

    .prologue
    .line 57
    iput p1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->iconResourceID:I

    .line 58
    return-object p0
.end method

.method public final setInProgressMessage(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->inProgress:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public final setRingToneEnabled(Ljava/lang/Boolean;)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 3
    .param p1, "enabled"    # Ljava/lang/Boolean;

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->ringToneEnabled:Z

    .line 140
    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->title:Ljava/lang/String;

    .line 68
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    iget v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->iconResourceID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->inProgress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->completed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->error:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->autoClearOnSuccess:Z

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_20
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 211
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clearOnAction:Z

    if-eqz v0, :cond_3d

    move v0, v1

    :goto_29
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 212
    iget-boolean v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->ringToneEnabled:Z

    if-eqz v0, :cond_3f

    :goto_31
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 213
    iget-object v0, p0, Lnet/gotev/uploadservice/UploadNotificationConfig;->clickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 214
    return-void

    :cond_3b
    move v0, v2

    .line 210
    goto :goto_20

    :cond_3d
    move v0, v2

    .line 211
    goto :goto_29

    :cond_3f
    move v1, v2

    .line 212
    goto :goto_31
.end method
