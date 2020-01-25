.class public Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field protected static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/gles/egl/EglCore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    iput v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    iput-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    return-void
.end method


# virtual methods
.method public createOffscreenSurface(II)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    invoke-virtual {v0, p1, p2}, Lcom/freeme/camera/common/gles/egl/EglCore;->createOffscreenSurface(II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    iput p1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    iput p2, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "surface already created"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/gles/egl/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "surface already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeight()I
    .locals 3

    iget v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/gles/egl/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0

    :cond_0
    return v0
.end method

.method public getWidth()I
    .locals 3

    iget v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/gles/egl/EglCore;->querySurface(Landroid/opengl/EGLSurface;I)I

    move-result v0

    return v0

    :cond_0
    return v0
.end method

.method public makeCurrent()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/gles/egl/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public makeNothingCurrent()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    invoke-virtual {v0}, Lcom/freeme/camera/common/gles/egl/EglCore;->makeNothingCurrent()V

    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/gles/egl/EglCore;->releaseEglSurface(Landroid/opengl/EGLSurface;)V

    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    iput v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    return-void
.end method

.method public saveFrame(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/gles/egl/EglCore;->isCurrent(Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    iget v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    iget v4, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    iget v2, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    mul-int/2addr v1, v2

    new-array v2, v1, [I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v3, v2, v0

    const v4, -0xff0100

    and-int/2addr v4, v3

    const/high16 v5, 0xff0000

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    iget v3, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5a

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    sget-object v0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frame as \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1
    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Expected EGL context/surface is not current"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPresentationTime(J)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/freeme/camera/common/gles/egl/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    iget-object v1, p0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/gles/egl/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result v0

    return v0
.end method
