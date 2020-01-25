.class public Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

.field private f:I

.field private g:Z

.field private h:J


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;-><init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->c:Z

    iput p2, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->f:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->h:J

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    invoke-direct {p2}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;-><init>()V

    :goto_0
    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b:I

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->c:Z

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->g:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getId()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->h:J

    iget-boolean p2, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->g:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->a()V

    iput p1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->a:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b()V

    :goto_1
    return-void
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->minFilter:I

    const/16 v4, 0x2801

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->magFilter:I

    const/16 v4, 0x2800

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->wrapS:I

    const/16 v4, 0x2802

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v0, v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->wrapT:I

    const/16 v4, 0x2803

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget v0, v1, v2

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->f:I

    return-void
.end method

.method private b()V
    .locals 14

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v0, v1, v2

    const v3, 0x8d40

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->a()V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->f:I

    const/16 v4, 0xde1

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v7, v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->internalFormat:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v8, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v9, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v11, v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->format:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    iget v12, v0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;->type:I

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->f:I

    const v5, 0x8ce0

    invoke-static {v3, v5, v4, v0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    aget v0, v1, v2

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->a:I

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method


# virtual methods
.method public activateFramebuffer()V
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->a:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public clearAllLocks()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b:I

    return-void
.end method

.method public destroy()V
    .locals 4

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v3, v1, [I

    aput v0, v3, v2

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput v2, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->a:I

    :cond_0
    new-array v0, v1, [I

    iget v3, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->f:I

    aput v3, v0, v2

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v2, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->f:I

    return-void
.end method

.method public disableReferenceCounting()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->c:Z

    return-void
.end method

.method public enableReferenceCounting()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->c:Z

    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public getTexture()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->f:I

    return v0
.end method

.method public getTextureOptions()Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->e:Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    return-object v0
.end method

.method public getThreadID()J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->h:J

    return-wide v0
.end method

.method public imageFromFramebufferContents()Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v4, v4, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v5, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->d:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMissingFramebuffer()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->g:Z

    return v0
.end method

.method public lock()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b:I

    return-void
.end method

.method public unlock()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b:I

    if-gtz v0, :cond_1

    const-string v0, "Tried to overrelease a framebuffer, did you forget to call useNextFrameForImageCapture before using imageFromCurrentFramebuffer?"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->b:I

    if-ge v0, v1, :cond_2

    invoke-static {p0}, Lorg/lasque/tusdk/core/seles/SelesContext;->returnFramebufferToCache(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;)V

    :cond_2
    return-void
.end method
