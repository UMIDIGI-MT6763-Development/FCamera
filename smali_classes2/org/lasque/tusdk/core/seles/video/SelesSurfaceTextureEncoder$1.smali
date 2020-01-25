.class Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;J)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    iput-wide p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;->drainEncoder(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->inputFramebufferUnlock()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->b(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    move-result-object v0

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->a:J

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->setPresentationTime(J)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->b(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->swapBuffers()Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setEnabled(Z)V

    :cond_1
    return-void
.end method
