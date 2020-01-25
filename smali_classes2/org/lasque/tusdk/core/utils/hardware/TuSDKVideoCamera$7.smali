.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;
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

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$7;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDetectedResult([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$7;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V

    return-void
.end method

.method public onOrientationChanged(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$7;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$7;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->d(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)V

    return-void
.end method
