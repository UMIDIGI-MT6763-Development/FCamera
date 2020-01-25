.class public Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;
.super Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/output/SelesScreenShot$SelesScreenShotDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/output/SelesScreenShot$SelesScreenShotDelegate;

.field private b:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->a:Lorg/lasque/tusdk/core/seles/output/SelesScreenShot$SelesScreenShotDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot$SelesScreenShotDelegate;->onFrameRendered(Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public renderedBuffer()Ljava/nio/IntBuffer;
    .locals 9

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->b:Ljava/nio/IntBuffer;

    if-nez v2, :cond_1

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->b:Ljava/nio/IntBuffer;

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->b:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v5, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    iget-object v8, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->b:Ljava/nio/IntBuffer;

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->b:Ljava/nio/IntBuffer;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/seles/output/SelesScreenShot$SelesScreenShotDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->a:Lorg/lasque/tusdk/core/seles/output/SelesScreenShot$SelesScreenShotDelegate;

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesCropFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesScreenShot;->b:Ljava/nio/IntBuffer;

    :cond_0
    return-void
.end method
