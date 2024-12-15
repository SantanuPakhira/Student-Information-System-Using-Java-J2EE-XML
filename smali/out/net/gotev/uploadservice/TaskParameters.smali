.class public final Lnet/gotev/uploadservice/TaskParameters;
.super Ljava/lang/Object;
.source "TaskParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/gotev/uploadservice/TaskParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoDeleteSuccessfullyUploadedFiles:Z

.field private customUserAgent:Ljava/lang/String;

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/gotev/uploadservice/UploadFile;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private maxRetries:I

.field private method:Ljava/lang/String;

.field private notificationConfig:Lnet/gotev/uploadservice/UploadNotificationConfig;

.field private requestHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private requestParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private usesFixedLengthStreamingMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lnet/gotev/uploadservice/TaskParameters$1;

    invoke-direct {v0}, Lnet/gotev/uploadservice/TaskParameters$1;-><init>()V

    sput-object v0, Lnet/gotev/uploadservice/TaskParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "POST"

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->method:Ljava/lang/String;

    .line 21
    iput v1, p0, Lnet/gotev/uploadservice/TaskParameters;->maxRetries:I

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/gotev/uploadservice/TaskParameters;->usesFixedLengthStreamingMode:Z

    .line 23
    iput-boolean v1, p0, Lnet/gotev/uploadservice/TaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestHeaders:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestParameters:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->files:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "POST"

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->method:Ljava/lang/String;

    .line 21
    iput v2, p0, Lnet/gotev/uploadservice/TaskParameters;->maxRetries:I

    .line 22
    iput-boolean v1, p0, Lnet/gotev/uploadservice/TaskParameters;->usesFixedLengthStreamingMode:Z

    .line 23
    iput-boolean v2, p0, Lnet/gotev/uploadservice/TaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestHeaders:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestParameters:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->files:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->id:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->url:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->method:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->customUserAgent:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/gotev/uploadservice/TaskParameters;->maxRetries:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_83

    move v0, v1

    :goto_49
    iput-boolean v0, p0, Lnet/gotev/uploadservice/TaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_85

    :goto_51
    iput-boolean v1, p0, Lnet/gotev/uploadservice/TaskParameters;->usesFixedLengthStreamingMode:Z

    .line 71
    const-class v0, Lnet/gotev/uploadservice/UploadNotificationConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lnet/gotev/uploadservice/UploadNotificationConfig;

    iput-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->notificationConfig:Lnet/gotev/uploadservice/UploadNotificationConfig;

    .line 72
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestHeaders:Ljava/util/ArrayList;

    const-class v1, Lnet/gotev/uploadservice/NameValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 73
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestParameters:Ljava/util/ArrayList;

    const-class v1, Lnet/gotev/uploadservice/NameValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 74
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->files:Ljava/util/ArrayList;

    const-class v1, Lnet/gotev/uploadservice/UploadFile;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 75
    return-void

    :cond_83
    move v0, v2

    .line 69
    goto :goto_49

    :cond_85
    move v1, v2

    .line 70
    goto :goto_51
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lnet/gotev/uploadservice/TaskParameters$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lnet/gotev/uploadservice/TaskParameters$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lnet/gotev/uploadservice/TaskParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addFile(Lnet/gotev/uploadservice/UploadFile;)V
    .registers 3
    .param p1, "file"    # Lnet/gotev/uploadservice/UploadFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestHeaders:Ljava/util/ArrayList;

    new-instance v1, Lnet/gotev/uploadservice/NameValue;

    invoke-direct {v1, p1, p2}, Lnet/gotev/uploadservice/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public addRequestParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestParameters:Ljava/util/ArrayList;

    new-instance v1, Lnet/gotev/uploadservice/NameValue;

    invoke-direct {v1, p1, p2}, Lnet/gotev/uploadservice/NameValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->customUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getFiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/gotev/uploadservice/UploadFile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->files:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxRetries()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lnet/gotev/uploadservice/TaskParameters;->maxRetries:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationConfig()Lnet/gotev/uploadservice/UploadNotificationConfig;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->notificationConfig:Lnet/gotev/uploadservice/UploadNotificationConfig;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/gotev/uploadservice/NameValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestParameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoDeleteSuccessfullyUploadedFiles()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lnet/gotev/uploadservice/TaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    return v0
.end method

.method public isCustomUserAgentDefined()Z
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->customUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v0, ""

    iget-object v1, p0, Lnet/gotev/uploadservice/TaskParameters;->customUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isUsesFixedLengthStreamingMode()Z
    .registers 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lnet/gotev/uploadservice/TaskParameters;->usesFixedLengthStreamingMode:Z

    return v0
.end method

.method public setAutoDeleteSuccessfullyUploadedFiles(Z)Lnet/gotev/uploadservice/TaskParameters;
    .registers 2
    .param p1, "autoDeleteSuccessfullyUploadedFiles"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lnet/gotev/uploadservice/TaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    .line 176
    return-object p0
.end method

.method public setCustomUserAgent(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;
    .registers 2
    .param p1, "customUserAgent"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lnet/gotev/uploadservice/TaskParameters;->customUserAgent:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lnet/gotev/uploadservice/TaskParameters;->id:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public setMaxRetries(I)Lnet/gotev/uploadservice/TaskParameters;
    .registers 3
    .param p1, "maxRetries"    # I

    .prologue
    .line 162
    if-gez p1, :cond_6

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lnet/gotev/uploadservice/TaskParameters;->maxRetries:I

    .line 167
    :goto_5
    return-object p0

    .line 165
    :cond_6
    iput p1, p0, Lnet/gotev/uploadservice/TaskParameters;->maxRetries:I

    goto :goto_5
.end method

.method public setMethod(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;
    .registers 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 139
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 140
    iput-object p1, p0, Lnet/gotev/uploadservice/TaskParameters;->method:Ljava/lang/String;

    .line 141
    :cond_a
    return-object p0
.end method

.method public setNotificationConfig(Lnet/gotev/uploadservice/UploadNotificationConfig;)Lnet/gotev/uploadservice/TaskParameters;
    .registers 2
    .param p1, "notificationConfig"    # Lnet/gotev/uploadservice/UploadNotificationConfig;

    .prologue
    .line 112
    iput-object p1, p0, Lnet/gotev/uploadservice/TaskParameters;->notificationConfig:Lnet/gotev/uploadservice/UploadNotificationConfig;

    .line 113
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lnet/gotev/uploadservice/TaskParameters;
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lnet/gotev/uploadservice/TaskParameters;->url:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setUsesFixedLengthStreamingMode(Z)Lnet/gotev/uploadservice/TaskParameters;
    .registers 2
    .param p1, "usesFixedLengthStreamingMode"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lnet/gotev/uploadservice/TaskParameters;->usesFixedLengthStreamingMode:Z

    .line 185
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->method:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->customUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lnet/gotev/uploadservice/TaskParameters;->maxRetries:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-boolean v0, p0, Lnet/gotev/uploadservice/TaskParameters;->autoDeleteSuccessfullyUploadedFiles:Z

    if-eqz v0, :cond_41

    move v0, v1

    :goto_20
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 56
    iget-boolean v0, p0, Lnet/gotev/uploadservice/TaskParameters;->usesFixedLengthStreamingMode:Z

    if-eqz v0, :cond_43

    :goto_28
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->notificationConfig:Lnet/gotev/uploadservice/UploadNotificationConfig;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 59
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->requestParameters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lnet/gotev/uploadservice/TaskParameters;->files:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 61
    return-void

    :cond_41
    move v0, v2

    .line 55
    goto :goto_20

    :cond_43
    move v1, v2

    .line 56
    goto :goto_28
.end method
