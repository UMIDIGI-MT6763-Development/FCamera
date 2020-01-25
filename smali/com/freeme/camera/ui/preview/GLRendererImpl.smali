.class Lcom/freeme/camera/ui/preview/GLRendererImpl;
.super Ljava/lang/Object;
.source "GLRendererImpl.java"

# interfaces
.implements Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mHeight:I

.field private mProgramObject:I

.field private mTexCoords:Ljava/nio/ShortBuffer;

.field private final mTexCoordsData:[S

.field private mVertices:Ljava/nio/FloatBuffer;

.field private final mVerticesData:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/preview/GLRendererImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xc

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mVerticesData:[F

    const/16 p1, 0x8

    new-array p1, p1, [S

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mTexCoordsData:[S

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mVerticesData:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mVertices:Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mVertices:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mVerticesData:[F

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mTexCoordsData:[S

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mTexCoords:Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mTexCoords:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mTexCoordsData:[S

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x0
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x1s
        0x1s
        0x0s
        0x0s
        0x1s
        0x0s
    .end array-data
.end method

.method private compileAndLinkProgram()V
    .locals 5

    const-string v0, "attribute vec4 a_position;    \nattribute vec2 a_texCoords; \nvarying vec2 v_texCoords; \nvoid main()                  \n{                            \n   gl_Position = a_position;  \n    v_texCoords = a_texCoords; \n}                            \n"

    const-string v1, "precision mediump float;                     \nuniform sampler2D u_Texture; \nvarying vec2 v_texCoords; \nvoid main()                                  \n{                                            \n  gl_FragColor = texture2D(u_Texture, v_texCoords) ;\n}                                            \n"

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x8b31

    invoke-direct {p0, v4, v0}, Lcom/freeme/camera/ui/preview/GLRendererImpl;->loadShader(ILjava/lang/String;)I

    move-result v0

    const v4, 0x8b30

    invoke-direct {p0, v4, v1}, Lcom/freeme/camera/ui/preview/GLRendererImpl;->loadShader(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v0, "a_position"

    const/4 v1, 0x0

    invoke-static {v4, v1, v0}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    const-string v0, "a_texCoords"

    invoke-static {v4, v2, v0}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v0, 0x8b82

    invoke-static {v4, v0, v3, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v3, v1

    if-nez v0, :cond_1

    sget-object v0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Error linking program:"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void

    :cond_1
    iput v4, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mProgramObject:I

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const p2, 0x8b81

    invoke-static {p1, p2, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, v0, v1

    if-nez p2, :cond_1

    sget-object p2, Lcom/freeme/camera/ui/preview/GLRendererImpl;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v1

    :cond_1
    return p1
.end method


# virtual methods
.method public drawFrame()V
    .locals 3

    iget v0, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mWidth:I

    iget v1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public initGL()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/ui/preview/GLRendererImpl;->compileAndLinkProgram()V

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method public setViewport(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mWidth:I

    iput p2, p0, Lcom/freeme/camera/ui/preview/GLRendererImpl;->mHeight:I

    return-void
.end method
