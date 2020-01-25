.class Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->pausdRecording()V
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

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$4;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$4;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$4;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$4;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    sget-object v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;->Paused:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$4;->a:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setEnabled(Z)V

    return-void
.end method
