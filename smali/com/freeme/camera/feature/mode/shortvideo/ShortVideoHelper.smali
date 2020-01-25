.class public Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;
.super Ljava/lang/Object;
.source "ShortVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_SAVE_LOCATION:Ljava/lang/String; = "off"

.field public static final EIS_KEY:Ljava/lang/String; = "key_eis"

.field private static final FILE_ERROR:I = -0x2

.field private static final INVALID_DURATION:I = -0x1

.field private static final KEY_PDAF_SUPPORTED:Ljava/lang/String; = "pdaf-supported"

.field private static final KEY_SAVE_LOCATION:Ljava/lang/String; = "key_save_location"

.field public static final MEDIA_ENCODER_ERROR:I = -0x44f

.field public static final MEDIA_INFO:[I

.field public static final MEDIA_INFO_CAMERA_RELEASE:I = 0x7cf

.field public static final MEDIA_INFO_RECORDING_SIZE:I = 0x37f

.field public static final MEDIA_INFO_START_TIMER:I = 0x7ce

.field public static final MEDIA_INFO_WRITE_SLOW:I = 0x383

.field public static final RECORDER_INFO_SUFFIX:Ljava/lang/String; = "media-recorder-info="

.field public static final RECORDER_TEMP_FILE_NAME:Ljava/lang/String; = "videorecorder.3gp.tmp"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_ON:Ljava/lang/String; = "on"

.field private static sProfile:Landroid/media/CamcorderProfile;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

.field private mCameraPreviewData:[B

.field private mDateTaken:J

.field private mFileDes:Ljava/io/FileDescriptor;

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mOrientation:I

.field private mPhotoDateTaken:J

.field private mPhotoFileName:Ljava/lang/String;

.field private mPhotoFilePath:Ljava/lang/String;

.field private mPhotoTitle:Ljava/lang/String;

.field private mPreviewCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;

.field private mPreviewFormat:I

.field private mPreviewSize:Lcom/freeme/camera/common/utils/Size;

.field private mTempPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mVideoHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->MEDIA_INFO:[I

    return-void

    :array_0
    .array-data 4
        0x7cf
        0x7ce
    .end array-data
.end method

.method public constructor <init>(Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mOrientation:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPreviewCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[VideoHelper]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p4, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mVideoHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)[B
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraPreviewData:[B

    return-object p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraPreviewData:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->stopSwitchCameraAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPreviewFormat:I

    return p1
.end method

.method static synthetic access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mVideoHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    return-object p0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, ".mp4"

    return-object p1

    :cond_0
    const-string p1, ".3gp"

    return-object p1
.end method

.method private createFileName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->sProfile:Landroid/media/CamcorderProfile;

    iget p2, p2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[createFileName] + fileName = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private createFileTitle(ZJ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    if-eqz p1, :cond_0

    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "\'VID\'_yyyyMMdd_HHmmss"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "\'IMG\'_yyyyMMdd_HHmmss_S"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createPhotoValues(Lcom/freeme/camera/common/utils/Size;)Landroid/content/ContentValues;
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "datetaken"

    iget-wide v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoDateTaken:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orientation"

    iget v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_data"

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "width"

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "height"

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getZuoyiGeoCoder()Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object v1

    const-string v2, "key_save_location"

    invoke-virtual {v1}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraLocationSwitch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraLocationSwitch:Ljava/lang/String;

    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    const-string v1, "latitude"

    invoke-virtual {p1}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getCurLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "longitude"

    invoke-virtual {p1}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getCurLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2
    return-object v0
.end method

.method private createVideoValues()Landroid/content/ContentValues;
    .locals 7

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTempPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFilePath:Ljava/lang/String;

    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v2, v3}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getDuration(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    sget-object v4, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->sProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {p0, v4}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "duration"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "title"

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    iget-wide v5, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mDateTaken:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_data"

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "width"

    sget-object v3, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->sProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "height"

    sget-object v3, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->sProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "resolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->sProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->sProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "relative_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Camera/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getCameraInfoOrientation(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "camera"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[getCameraInfoOrientation] characteristics is null"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v0
.end method

.method private getDuration(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 1

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1

    :catch_0
    const-wide/16 p1, -0x2

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide p1

    :catch_1
    const-wide/16 p1, -0x1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide p1
.end method

.method public static getRecordingRotation(ILandroid/hardware/Camera$CameraInfo;)I
    .locals 4

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRecordingRotation] orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " info "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " rotation = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public static getRecordingRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    if-eqz p1, :cond_1

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_1
    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    :cond_2
    :goto_1
    return v0
.end method

.method private initializeCommonInfo(Z)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mDateTaken:J

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mDateTaken:J

    invoke-direct {p0, p1, v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->createFileTitle(ZJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTitle:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->createFileName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFileName:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private initializePhotoCommonInfo()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoDateTaken:J

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoDateTaken:J

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->createFileTitle(ZJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->createFileName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPhotoFilePath:Ljava/lang/String;

    return-void
.end method

.method private initializeVideoCommonInfo()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mDateTaken:J

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mDateTaken:J

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->createFileTitle(ZJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->createFileName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private prepareAnimationData([BIIILjava/lang/String;)Lcom/freeme/camera/common/IAppUi$AnimationData;
    .locals 1

    new-instance v0, Lcom/freeme/camera/common/IAppUi$AnimationData;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$AnimationData;-><init>()V

    iput-object p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mData:[B

    iput p2, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mWidth:I

    iput p3, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mHeight:I

    iput p4, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mFormat:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p5, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getCameraInfoOrientation(Ljava/lang/String;Landroid/app/Activity;)I

    move-result p1

    iput p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p5, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->isMirror(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/freeme/camera/common/IAppUi$AnimationData;->mIsMirror:Z

    return-object v0
.end method

.method private stopChangeModeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_MODE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method

.method private stopSwitchCameraAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mApp:Lcom/freeme/camera/common/app/IApp;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configRecorderSpec(Landroid/media/CamcorderProfile;Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Lcom/freeme/camera/common/setting/ISettingManager;Z)Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;
    .locals 4

    sput-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->sProfile:Landroid/media/CamcorderProfile;

    new-instance p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;

    invoke-direct {p1}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->unLockCamera()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->camera:Landroid/hardware/Camera;

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    const/4 v1, 0x1

    if-ne p3, v0, :cond_1

    iput v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->videoSource:I

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result p3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getRecordingRotation(ILandroid/hardware/Camera$CameraInfo;)I

    move-result p2

    iput p2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->orientationHint:I

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    iput p3, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->videoSource:I

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p3}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result p3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getCameraCharacteristics(Landroid/app/Activity;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getRecordingRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I

    move-result p2

    iput p2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->orientationHint:I

    :goto_0
    const-string p2, "on"

    invoke-interface {p4}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p3

    const-string p4, "key_microphone"

    invoke-interface {p3, p4}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    iput-boolean v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->isRecordAudio:Z

    const/4 p2, 0x5

    iput p2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->audioSource:I

    goto :goto_1

    :cond_2
    iput-boolean p3, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->isRecordAudio:Z

    :goto_1
    sget-object p2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->sProfile:Landroid/media/CamcorderProfile;

    iput-object p2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iput p3, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->maxDurationMs:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getRecorderMaxSize()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->maxFileSizeBytes:J

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p2}, Lcom/freeme/camera/common/ICameraContext;->getLocation()Landroid/location/Location;

    move-result-object p2

    iput-object p2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->location:Landroid/location/Location;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getVideoTempPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFilePath:Ljava/lang/String;

    if-eqz p5, :cond_5

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->initializeVideoCommonInfo()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->getVideoTempFileDes()Ljava/io/FileDescriptor;

    move-result-object p2

    iput-object p2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFilePath:Ljava/lang/String;

    iput-object p2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileName:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p2}, Lcom/freeme/camera/common/ICameraContext;->getZuoyiGeoCoder()Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    move-result-object p2

    iget-object p4, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p4}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p4

    const-string p5, "key_save_location"

    const/4 v0, 0x0

    invoke-virtual {p4}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p5, v0, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    const-string p3, "off"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, v1

    goto :goto_2

    :cond_3
    sget-object p4, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraLocationSwitch:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    sget-object p3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraLocationSwitch:Ljava/lang/String;

    const-string p4, "off"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, v1

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    new-instance p3, Landroid/location/Location;

    const-string p4, ""

    invoke-direct {p3, p4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getCurLatitude()D

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {p2}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getCurLongitude()D

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    iput-object p3, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->location:Landroid/location/Location;

    :cond_5
    return-object p1
.end method

.method public convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "video/mp4"

    return-object p1

    :cond_0
    const-string p1, "video/3gpp"

    return-object p1
.end method

.method public deleteVideoFile(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deleteVideoFile] Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getCameraCharacteristics(Landroid/app/Activity;Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreviewFrameCallback()Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPreviewCallback:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;

    return-object v0
.end method

.method public getRecorderMaxSize()J
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getRecordStorageSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurfaceListener()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;
    .locals 2

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;-><init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;)V

    return-object v0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVideoFilePath] mFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTempFileDes()Ljava/io/FileDescriptor;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_display_name"

    const-string v2, "videorecorder.3gp.tmp"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "datetaken"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "relative_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Camera/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mUri:Landroid/net/Uri;

    const-string v2, "rw"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFileDes:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mFileDes:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getVideoTempPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ".videorecorder.3gp.tmp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTempPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".videorecorder.3gp.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTempPath:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVideoTempPath] mTempPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTempPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mTempPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTempUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isMirror(Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "camera"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[isMirror] characteristics is null"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    sget-object p2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    return v0
.end method

.method public isPDAFSupported(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string p1, "true"

    const-string v2, "pdaf-supported"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isPdafSupported] isSupported = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public pauseAudioPlayBack(Lcom/freeme/camera/common/app/IApp;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[pauseAudioPlayback]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    const-string p1, "audio"

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method public prepareContentValues(ZILcom/freeme/camera/common/utils/Size;)Landroid/content/ContentValues;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[prepareContentValues] isVideo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mOrientation:I

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->initializePhotoCommonInfo()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->createVideoValues()Landroid/content/ContentValues;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->createPhotoValues(Lcom/freeme/camera/common/utils/Size;)Landroid/content/ContentValues;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public releaseAudioFocus(Lcom/freeme/camera/common/app/IApp;)V
    .locals 1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    const-string p1, "audio"

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method public releasePreviewFrameData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraPreviewData:[B

    return-void
.end method

.method public startEis25(Lcom/freeme/camera/common/setting/ISettingManager;Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;)Z
    .locals 2

    const-string p2, "on"

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    const-string v0, "key_eis"

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "eis-supported-frames"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "eis-supported-frames"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[startEis25] eis-supported-frames = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "eis-supported-frames"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[startEis25] parameters or eis-supported-frames is invalid"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p2

    :cond_2
    return p2
.end method

.method public startSwitchCameraAnimation(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraPreviewData:[B

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPreviewFormat:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->prepareAnimationData([BIIILjava/lang/String;)Lcom/freeme/camera/common/IAppUi$AnimationData;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_SWITCH_CAMERA:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-interface {v0, v1, p1}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method

.method public stopEis25()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "eis25-mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mCameraDevice:Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    invoke-interface {v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopEis25]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized updatePreviewSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
