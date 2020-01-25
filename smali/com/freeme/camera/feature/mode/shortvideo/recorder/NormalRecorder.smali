.class public Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;
.super Ljava/lang/Object;
.source "NormalRecorder.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder;


# static fields
.field private static final ORIENTATION_0:I = 0x0

.field private static final ORIENTATION_180:I = 0xb4

.field private static final ORIENTATION_270:I = 0x10e

.field private static final ORIENTATION_90:I = 0x5a

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private file:Ljava/io/File;

.field protected mMediaRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->file:Ljava/io/File;

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method

.method private checkRecorderSpec(Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;)V
    .locals 3

    iget-object v0, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->orientationHint:I

    if-eqz v0, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientationHint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->orientationHint:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget v0, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->videoSource:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "videoSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->videoSource:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    return-void

    :cond_3
    sget-object v0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " outFileDes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " outFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFilePath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;Landroid/app/Activity;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->checkRecorderSpec(Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;)V

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->videoSource:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-boolean v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->isRecordAudio:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->audioSource:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->videoFrameRate:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->videoFrameRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v3, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_1
    iget v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->captureRate:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->captureRate:I

    int-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_3
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->maxDurationMs:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->location:Landroid/location/Location;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->location:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-wide v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->maxFileSizeBytes:J

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_2
    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_5

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  filePath = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileName:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->file:Ljava/io/File;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_6
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->file:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2, p2}, Lcom/freeme/camera/common/utils/DocumentsUtils;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)Landroid/support/v4/provider/DocumentFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_8

    :try_start_1
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {v1}, Landroid/support/v4/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "rw"

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFilePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :cond_8
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  filePath = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->outFilePath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->orientationHint:I

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->errorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->infoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  spec.captureRate = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->captureRate:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  spec.videoFrameRate = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->videoFrameRate:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  spec.orientationHint = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->orientationHint:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  spec.profile.videoFrameRate = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  spec.profile.videoFrameWidth = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  spec.profile.videoFrameHeight = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p1, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[init] "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public prepare()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/recorder/NormalRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    return-void
.end method
