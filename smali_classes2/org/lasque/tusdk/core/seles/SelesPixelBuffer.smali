.class public Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/opengl/GLSurfaceView$Renderer;

.field private b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private c:Landroid/graphics/Rect;

.field private d:Ljavax/microedition/khronos/egl/EGL10;

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:[Ljavax/microedition/khronos/egl/EGLConfig;

.field private g:Ljavax/microedition/khronos/egl/EGLConfig;

.field private h:Ljavax/microedition/khronos/egl/EGLContext;

.field private i:Ljavax/microedition/khronos/egl/EGLSurface;

.field private j:Ljavax/microedition/khronos/opengles/GL10;

.field private k:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private l:Ljava/nio/IntBuffer;

.field private m:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v2

    if-ge v2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v2, v1, v1, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array v2, p1, [I

    const/4 v3, 0x5

    new-array v3, v3, [I

    const/16 v4, 0x3057

    aput v4, v3, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    aput v1, v3, v0

    const/16 v0, 0x3056

    aput v0, v3, p1

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    aput v1, v3, v0

    const/4 v0, 0x4

    const/16 v1, 0x3038

    aput v1, v3, v0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->a()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;

    invoke-direct {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;-><init>(ILjavax/microedition/khronos/egl/EGLContext;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->k:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->k:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, p2, v0, v1}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->h:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, p2, v0, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, v0, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object p1

    check-cast p1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->j:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->m:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    const-string p2, "SelesPixelBuffer: Passed image must not be empty - it should be at least 1px tall and wide : %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v7, 0x1

    new-array v8, v7, [I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v9, 0x0

    aget v1, v8, v9

    if-lez v1, :cond_0

    aget v1, v8, v9

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    new-array v1, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->f:[Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->f:[Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v3, v0

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->f:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, v9

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3025
        0x0
        0x3026
        0x0
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x0
        0x3040
        0x4
        0x3038
    .end array-data
.end method

.method private b()Ljava/nio/IntBuffer;
    .locals 10

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->l:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->l:Ljava/nio/IntBuffer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->l:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->j:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    iget-object v9, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->l:Ljava/nio/IntBuffer;

    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->l:Ljava/nio/IntBuffer;

    return-object v0
.end method

.method public static create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;-><init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object v0
.end method

.method public static create(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljavax/microedition/khronos/egl/EGLContext;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;-><init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v0, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->k:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->d:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->getImageBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v1
.end method

.method public getImageBuffer()Ljava/nio/IntBuffer;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "getBitmap: This thread does not own the OpenGL context."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->j:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b()Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public setOutputRect(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-gt v0, v1, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->c:Landroid/graphics/Rect;

    :cond_1
    :goto_0
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "setRenderer: This thread does not own the OpenGL context."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->j:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->g:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->a:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->j:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-interface {p1, v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method
