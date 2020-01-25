.class Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$2;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$2;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$2;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;->onOrientationChanged(Lorg/lasque/tusdk/core/utils/hardware/InterfaceOrientation;)V

    :cond_0
    return-void
.end method
