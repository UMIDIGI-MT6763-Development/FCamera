.class public Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;
.super Ljava/lang/Object;
.source "IRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/recorder/IRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecorderSpec"
.end annotation


# instance fields
.field public audioSource:I

.field public camera:Landroid/hardware/Camera;

.field public captureRate:I

.field public errorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field public infoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field public isRecordAudio:Z

.field public location:Landroid/location/Location;

.field public maxDurationMs:I

.field public maxFileSizeBytes:J

.field public orientationHint:I

.field public outFileDes:Ljava/io/FileDescriptor;

.field public outFileName:Ljava/lang/String;

.field public outFilePath:Ljava/lang/String;

.field public profile:Landroid/media/CamcorderProfile;

.field public releaseListener:Landroid/media/MediaRecorder$OnInfoListener;

.field public videoFrameRate:I

.field public videoSource:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->isRecordAudio:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->audioSource:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->camera:Landroid/hardware/Camera;

    iput v0, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->videoSource:I

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->outFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->outFileDes:Ljava/io/FileDescriptor;

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->profile:Landroid/media/CamcorderProfile;

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->location:Landroid/location/Location;

    iput v0, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->maxDurationMs:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->maxFileSizeBytes:J

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->infoListener:Landroid/media/MediaRecorder$OnInfoListener;

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->errorListener:Landroid/media/MediaRecorder$OnErrorListener;

    iput-object v1, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->releaseListener:Landroid/media/MediaRecorder$OnInfoListener;

    iput v0, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->captureRate:I

    iput v0, p0, Lcom/freeme/camera/common/mode/video/recorder/IRecorder$RecorderSpec;->videoFrameRate:I

    return-void
.end method
