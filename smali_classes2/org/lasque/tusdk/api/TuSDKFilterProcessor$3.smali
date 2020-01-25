.class Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->onFilterWrapChanged(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field final synthetic b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    iput-object p2, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->b(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->c(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->c(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-virtual {v1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->getOutputImageSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->setInputTextureSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-static {v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->c(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->getSelesRotateShotOutput()Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/api/TuSDKFilterProcessor$3;->b:Lorg/lasque/tusdk/api/TuSDKFilterProcessor;

    invoke-static {v1}, Lorg/lasque/tusdk/api/TuSDKFilterProcessor;->d(Lorg/lasque/tusdk/api/TuSDKFilterProcessor;)Lorg/lasque/tusdk/core/seles/output/SelesSurfaceTextureOutput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    return-void
.end method
