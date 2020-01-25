.class public Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;
    }
.end annotation


# static fields
.field public static final ROTATE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);void main(){     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);     mediump float luminance = dot(textureColor.rgb, luminanceWeighting);     gl_FragColor = vec4(vec3(luminance), textureColor.w);}"

.field public static final ROTATE_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 transformMatrix;\nvarying vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = transformMatrix * vec4(position.xyz, 1.0);\n    textureCoordinate = inputTextureCoordinate.xy;\n}\n"


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;

.field private b:Ljava/nio/IntBuffer;

.field private c:I

.field private d:F

.field private e:[F

.field private f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private final g:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 transformMatrix;\nvarying vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = transformMatrix * vec4(position.xyz, 1.0);\n    textureCoordinate = inputTextureCoordinate.xy;\n}\n"

    const-string v1, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);void main(){     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);     mediump float luminance = dot(textureColor.rgb, luminanceWeighting);     gl_FragColor = vec4(vec3(luminance), textureColor.w);}"

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->d:F

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->e:[F

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->e:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    sget-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->imageVertices:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->g:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/16 v0, 0x8

    new-array v0, v0, [F

    neg-float v3, v2

    aput v3, v0, v5

    neg-float v4, v1

    const/4 v6, 0x1

    aput v4, v0, v6

    const/4 v6, 0x2

    aput v2, v0, v6

    const/4 v6, 0x3

    aput v4, v0, v6

    const/4 v4, 0x4

    aput v3, v0, v4

    const/4 v3, 0x5

    aput v1, v0, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v2, 0x7

    aput v1, v0, v2

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->g:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private a([F)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->e:[F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->e:[F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->setMatrix4f([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->d:F

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "transformMatrix"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->e:[F

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->a([F)V

    return-void
.end method

.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->g:Ljava/nio/FloatBuffer;

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->a:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;->onFrameRendered(Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->setEnabled(Z)V

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

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->b:Ljava/nio/IntBuffer;

    if-nez v2, :cond_1

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->b:Ljava/nio/IntBuffer;

    :cond_1
    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->b:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v5, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    iget-object v8, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->b:Ljava/nio/IntBuffer;

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->b:Ljava/nio/IntBuffer;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAngle(F)V
    .locals 7

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->d:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->e:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->e:[F

    iget v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->d:F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->e:[F

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->c:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->setMatrix4f([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->a:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->b:Ljava/nio/IntBuffer;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p2

    if-eqz p2, :cond_2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->a()V

    :cond_2
    return-void
.end method
