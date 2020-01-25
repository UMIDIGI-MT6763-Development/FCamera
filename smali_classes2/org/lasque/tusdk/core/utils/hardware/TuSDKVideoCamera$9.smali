.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$9;
.super Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->getHardVideoDataEncoder()Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$9;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected prepareEncoder(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->initCodec(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$9;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    :cond_0
    return-void
.end method
