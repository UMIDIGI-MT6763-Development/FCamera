.class Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->startRecording(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/opengl/EGLContext;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;Landroid/opengl/EGLContext;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$3;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$3;->a:Landroid/opengl/EGLContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$3;->b:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$3;->a:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;Landroid/opengl/EGLContext;)V

    return-void
.end method
