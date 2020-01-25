.class Lcom/freeme/camera/common/storage/MediaSaver$Request;
.super Ljava/lang/Object;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/storage/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Request"
.end annotation


# instance fields
.field private exif:Lcom/freeme/camera/common/exif/ExifInterface;

.field private mData:[B

.field private mFilePath:Ljava/lang/String;

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mTempUri:Landroid/net/Uri;

.field private mType:I

.field private mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/freeme/camera/common/storage/MediaSaver;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/storage/MediaSaver;[BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Landroid/net/Uri;ILcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mData:[B

    iput-object p3, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mValues:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    iput-object p6, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mUri:Landroid/net/Uri;

    iput-object p6, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mTempUri:Landroid/net/Uri;

    iput p7, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mType:I

    iput-object p8, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->exif:Lcom/freeme/camera/common/exif/ExifInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/storage/MediaSaver$Request;)I
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->getDataSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)[B
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mData:[B

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/common/storage/MediaSaver$Request;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/storage/MediaSaver$Request;->saveRequest()V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/common/storage/MediaSaver$Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/common/storage/MediaSaver$Request;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/storage/MediaSaver$Request;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mType:I

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/common/storage/MediaSaver$Request;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mTempUri:Landroid/net/Uri;

    return-object p0
.end method

.method private getDataSize()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    array-length v0, v0

    return v0
.end method

.method private saveRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->exif:Lcom/freeme/camera/common/exif/ExifInterface;

    invoke-static {v0, p0, v1}, Lcom/freeme/camera/common/storage/MediaSaver;->access$700(Lcom/freeme/camera/common/storage/MediaSaver;Lcom/freeme/camera/common/storage/MediaSaver$Request;Lcom/freeme/camera/common/exif/ExifInterface;)V

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mTempUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->this$0:Lcom/freeme/camera/common/storage/MediaSaver;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/MediaSaver$Request;->exif:Lcom/freeme/camera/common/exif/ExifInterface;

    invoke-static {v0, p0, v1}, Lcom/freeme/camera/common/storage/MediaSaver;->access$800(Lcom/freeme/camera/common/storage/MediaSaver;Lcom/freeme/camera/common/storage/MediaSaver$Request;Lcom/freeme/camera/common/exif/ExifInterface;)V

    :cond_1
    return-void
.end method
