.class public Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final FLAG_RECORDABLE:I = 0x1

.field public static final FLAG_TRY_GLES3:I = 0x2


# instance fields
.field private a:Landroid/opengl/EGLDisplay;

.field private b:Landroid/opengl/EGLContext;

.field private c:Landroid/opengl/EGLConfig;

.field private d:I

.field private e:Landroid/opengl/EGLSurface;

.field private f:Landroid/view/Surface;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->b:Landroid/opengl/EGLContext;

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->c:Landroid/opengl/EGLConfig;

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->d:I

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->e:Landroid/opengl/EGLSurface;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v4, v1}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a(II)Landroid/opengl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    invoke-static {v3, p2, p1, v2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    const-string v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->c:Landroid/opengl/EGLConfig;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->b:Landroid/opengl/EGLContext;

    iput v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->d:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private a(II)Landroid/opengl/EGLConfig;
    .locals 13

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-lt p2, v1, :cond_0

    const/16 v2, 0x44

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x11

    new-array v5, v3, [I

    const/16 v3, 0x3024

    const/4 v12, 0x0

    aput v3, v5, v12

    const/16 v3, 0x8

    const/4 v4, 0x1

    aput v3, v5, v4

    const/16 v6, 0x3023

    const/4 v7, 0x2

    aput v6, v5, v7

    aput v3, v5, v1

    const/16 v6, 0x3022

    aput v6, v5, v0

    const/4 v0, 0x5

    aput v3, v5, v0

    const/4 v0, 0x6

    const/16 v6, 0x3021

    aput v6, v5, v0

    const/4 v0, 0x7

    aput v3, v5, v0

    const/16 v0, 0x3025

    aput v0, v5, v3

    const/16 v0, 0x9

    aput v12, v5, v0

    const/16 v0, 0xa

    const/16 v3, 0x3026

    aput v3, v5, v0

    const/16 v0, 0xb

    aput v12, v5, v0

    const/16 v0, 0xc

    const/16 v3, 0x3040

    aput v3, v5, v0

    const/16 v0, 0xd

    aput v2, v5, v0

    const/16 v0, 0xe

    const/16 v2, 0x3038

    aput v2, v5, v0

    const/16 v0, 0xf

    aput v12, v5, v0

    const/16 v0, 0x10

    aput v2, v5, v0

    and-int/2addr p1, v4

    if-eqz p1, :cond_1

    array-length p1, v5

    sub-int/2addr p1, v1

    const/16 v0, 0x3142

    aput v0, v5, p1

    array-length p1, v5

    sub-int/2addr p1, v7

    aput v4, v5, p1

    :cond_1
    new-array p1, v4, [Landroid/opengl/EGLConfig;

    new-array v10, v4, [I

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, p1

    const/4 v11, 0x0

    move-object v7, p1

    invoke-static/range {v4 .. v11}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to find RGB8888 / "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " EGLConfig"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v12, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    aget-object p1, p1, v12

    return-object p1
.end method

.method private a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->c:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->e:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->e:Landroid/opengl/EGLSurface;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": EGL error: 0x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public attachSurface(Landroid/view/Surface;Z)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->e:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->e:Landroid/opengl/EGLSurface;

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->g:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "surface already created"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGlVersion()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->d:I

    return v0
.end method

.method public makeCurrent()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    const-string v0, "NOTE: makeCurrent w/o display"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->e:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->b:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->f:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->f:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->e:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers()Z
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->a:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->e:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "WARNING: swapBuffers() failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0
.end method
