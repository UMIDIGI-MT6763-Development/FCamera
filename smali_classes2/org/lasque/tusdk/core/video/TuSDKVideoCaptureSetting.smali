.class public Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;,
        Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;
    }
.end annotation


# instance fields
.field public facing:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

.field public fps:I

.field public imageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

.field public videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

.field public videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;->Front:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    iput-object v0, p0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->facing:Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/16 v1, 0x140

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    sget-object v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->LIVE_MEDIUM3:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->getFps()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->fps:I

    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;->HW_CODEC:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    iput-object v0, p0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->videoAVCodecType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$AVCodecType;

    sget-object v0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;->NV21:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    iput-object v0, p0, Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting;->imageFormatType:Lorg/lasque/tusdk/core/video/TuSDKVideoCaptureSetting$ImageFormatType;

    return-void
.end method
