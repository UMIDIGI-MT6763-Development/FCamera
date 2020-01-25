.class Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;


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

    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$3;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameRendered(Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;)Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$3;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->outputFrameSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$3;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->getDeviceAngle()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->setAngle(F)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$3;->a:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return v1
.end method
