.class public final Lcom/freeme/camera/common/gles/egl/EglCore;
.super Ljava/lang/Object;
.source "EglCore.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final CONSTRUCTOR_FLAG_RECORDABLE:I = 0x1

.field public static final CONSTRUCTOR_FLAG_TRY_GLES3:I = 0x2

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mEGLConfig:Landroid/opengl/EGLConfig;

.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mGlVersion:I

.field private mOutputPixelFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/gles/egl/EglCore;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/gles/egl/EglCore;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    const/4 v1, -0x1

    iput v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mGlVersion:I

    iput v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mOutputPixelFormat:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Lcom/freeme/camera/common/gles/egl/EglCore;->init(Landroid/opengl/EGLContext;I[I)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    const/4 v1, -0x1

    iput v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mGlVersion:I

    iput v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mOutputPixelFormat:I

    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/camera/common/gles/egl/EglCore;->init(Landroid/opengl/EGLContext;I[I)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mGlVersion:I

    iput v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mOutputPixelFormat:I

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/common/gles/egl/EglCore;->init(Landroid/opengl/EGLContext;I[I)V

    return-void
.end method

.method private init(Landroid/opengl/EGLContext;I[I)V
    .locals 6

    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglCore;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_8

    if-nez p1, :cond_0

    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_7

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    new-instance v2, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;

    invoke-direct {v2}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {v2, p3}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->setSupportedFormats([I)V

    :cond_1
    iget-object p3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    invoke-virtual {v2, p3, v4}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->chooseConfigEGL14(Landroid/opengl/EGLDisplay;Z)Landroid/opengl/EGLConfig;

    move-result-object p3

    iput-object p3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-virtual {v2}, Lcom/freeme/camera/common/gles/egl/EglConfigSelector;->getSelectedPixelFormat()I

    move-result p3

    iput p3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mOutputPixelFormat:I

    iput-object v3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    and-int/2addr p2, v1

    const/4 p3, 0x3

    if-eqz p2, :cond_3

    iput p3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mGlVersion:I

    new-array p2, p3, [I

    fill-array-data p2, :array_0

    iget-object v2, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v2, v4, p1, p2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    const/16 v2, 0x3000

    if-eq p2, v2, :cond_3

    sget-object p2, Lcom/freeme/camera/common/gles/egl/EglCore;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[init] GLES 3.x not available"

    invoke-static {p2, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    :cond_3
    iget-object p2, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    if-nez p2, :cond_4

    iput v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mGlVersion:I

    new-array p2, p3, [I

    fill-array-data p2, :array_1

    iget-object p3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {p3, v1, p1, p2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    :cond_4
    const-string p1, "[init] eglCreateContext"

    invoke-static {p1}, Lcom/freeme/camera/common/gles/egl/EglUtil;->checkEglError(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/freeme/camera/common/gles/egl/EglCore;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]-"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[init] null context"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    iput-object v3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[init] unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[init] unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[init] EGL already set up"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public static logCurrent(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    const/16 v2, 0x3059

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v2

    sget-object v3, Lcom/freeme/camera/common/gles/egl/EglCore;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current EGL ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "): display="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", context="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", surface="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)Landroid/opengl/EGLSurface;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3057

    aput v2, v0, v1

    const/4 v2, 0x1

    aput p1, v0, v2

    const/4 p1, 0x2

    const/16 v2, 0x3056

    aput v2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    const/16 p2, 0x3038

    aput p2, v0, p1

    iget-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object p2, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string p2, "[createOffscreenSurface] eglCreatePbufferSurface"

    invoke-static {p2}, Lcom/freeme/camera/common/gles/egl/EglUtil;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[createOffscreenSurface] surface was null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
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

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string v0, "[createWindowSurface] eglCreateWindowSurface"

    invoke-static {v0}, Lcom/freeme/camera/common/gles/egl/EglUtil;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "[createWindowSurface] surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglCore;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "EglCore was not explicitly released -- state my be leaked!!!"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/common/gles/egl/EglCore;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getGlVersion()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mGlVersion:I

    return v0
.end method

.method public getOutPutPixelFormat()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mOutputPixelFormat:I

    return v0
.end method

.method public isCurrent(Landroid/opengl/EGLSurface;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/opengl/EGLContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3059

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglCore;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[makeCurrent] NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "[makeCurrent] eglMakeCurrent failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeCurrent(Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglCore;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[makeCurrent] NOTE: makeCurrent w/o display"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[makeCurrent] eglMakeCurrent failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeNothingCurrent()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public querySurface(Landroid/opengl/EGLSurface;I)I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget p1, v0, v2

    return p1
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLConfig:Landroid/opengl/EGLConfig;

    return-void
.end method

.method public releaseEglSurface(Landroid/opengl/EGLSurface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    :cond_0
    return-void
.end method

.method public setPresentationTime(Landroid/opengl/EGLSurface;J)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public swapBuffers(Landroid/opengl/EGLSurface;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglCore;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method
