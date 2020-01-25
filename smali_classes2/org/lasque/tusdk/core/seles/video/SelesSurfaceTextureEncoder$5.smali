.class Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setEnabled(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    sget-object v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;->Stopped:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->inputFramebufferUnlock()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;->drainEncoder(Z)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->c(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)V

    return-void
.end method
