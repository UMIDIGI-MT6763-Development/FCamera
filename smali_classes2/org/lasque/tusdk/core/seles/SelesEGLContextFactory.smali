.class public Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;-><init>(ILjavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method public constructor <init>(ILjavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;->a:I

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;->c:Ljavax/microedition/khronos/egl/EGLContext;

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;->b:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;->c:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_0
    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v2

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;->c:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->createEGLContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object p1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 5

    invoke-static {p3}, Lorg/lasque/tusdk/core/seles/SelesContext;->destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SelesEGLContextFactory - tid: %s | display: %s | context: %s | eglDestroyContex: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    aput-object p3, v1, p2

    const/4 p2, 0x3

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
