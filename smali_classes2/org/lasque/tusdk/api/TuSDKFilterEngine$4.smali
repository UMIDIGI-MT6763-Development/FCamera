.class Lorg/lasque/tusdk/api/TuSDKFilterEngine$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/api/TuSDKFilterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$4;->a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameDetectedResult([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$4;->a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V

    return-void
.end method

.method public onOrientationChanged(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$4;->a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->a(Lorg/lasque/tusdk/api/TuSDKFilterEngine;Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;

    iget-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterEngine$4;->a:Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    invoke-static {p1}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->f(Lorg/lasque/tusdk/api/TuSDKFilterEngine;)V

    return-void
.end method
