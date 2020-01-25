.class public Lorg/lasque/tusdk/core/seles/filters/SelesFilter;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;
    }
.end annotation


# static fields
.field public static final SELES_PASSTHROUGH_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

.field public static final SELES_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

.field public static final STICKER_VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;uniform mat4 uTexMatrix;attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nvarying vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = uMVPMatrix * position;\n    textureCoordinate = (uTexMatrix * inputTextureCoordinate).xy;\n}\n"

.field private static f:Ljava/nio/FloatBuffer;

.field private static g:Ljava/nio/FloatBuffer;

.field protected static final horizontalFlipTextureCoordinates:[F

.field protected static final imageVertices:[F

.field protected static final noRotationTextureCoordinates:[F

.field protected static final rotate180TextureCoordinates:[F

.field protected static final rotateLeftTextureCoordinates:[F

.field protected static final rotateRightHorizontalFlipTextureCoordinates:[F

.field protected static final rotateRightTextureCoordinates:[F

.field protected static final rotateRightVerticalFlipTextureCoordinates:[F

.field protected static final verticalFlipTextureCoordinates:[F


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field private final b:Ljava/nio/FloatBuffer;

.field private c:Z

.field private d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

.field private e:I

.field private h:Z

.field private i:Z

.field private j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field private k:I

.field private l:I

.field private m:I

.field protected mBackgroundColorAlpha:F

.field protected mBackgroundColorBlue:F

.field protected mBackgroundColorGreen:F

.field protected mBackgroundColorRed:F

.field protected mCurrentFilterSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mCurrentlyReceivingMonochromeInput:Z

.field protected mDeviceAngle:F

.field protected mFaces:[Lorg/lasque/tusdk/core/face/FaceAligment;

.field protected mFilterInputTextureUniform:I

.field protected mFilterPositionAttribute:I

.field protected mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field protected mFilterTextureCoordinateAttribute:I

.field protected mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

.field protected mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field protected mIsEndProcessing:Z

.field private n:I

.field private o:I

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/graphics/RectF;

.field private r:F

.field private s:I

.field private t:[F

.field private u:[F

.field private v:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->noRotationTextureCoordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotateLeftTextureCoordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotateRightTextureCoordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->verticalFlipTextureCoordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->horizontalFlipTextureCoordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotateRightVerticalFlipTextureCoordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotateRightHorizontalFlipTextureCoordinates:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_7

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotate180TextureCoordinates:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    sput-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->imageVertices:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    const-string v1, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorAlpha:F

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mCurrentFilterSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/4 v1, 0x0

    iput v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->h:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->i:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mDeviceAngle:F

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->v:F

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->imageVertices:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a:Ljava/nio/FloatBuffer;

    sget-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->noRotationTextureCoordinates:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->b:Ljava/nio/FloatBuffer;

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$1;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;)I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$18;->c:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x1b

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    return v0

    :pswitch_1
    const/16 p1, 0x1e

    return p1

    :pswitch_2
    const/16 p1, 0x42

    return p1

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a([I[Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    aget-object v3, p2, v3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v3

    iput v4, v0, Landroid/graphics/PointF;->y:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p2, v1

    div-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget p1, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, p2

    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private a(I)Lorg/lasque/tusdk/core/face/FaceAligment;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->b()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFaces:[Lorg/lasque/tusdk/core/face/FaceAligment;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    aget-object p1, v1, p1

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "uniform mat4 uMVPMatrix;uniform mat4 uTexMatrix;attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nvarying vec2 textureCoordinate;\nvoid main()\n{\n    gl_Position = uMVPMatrix * position;\n    textureCoordinate = (uTexMatrix * inputTextureCoordinate).xy;\n}\n"

    const-string v1, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->program(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->link()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Sticker program link log: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getProgramLog()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Sticker fragment shader compile log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getFragmentShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Sticker vertex link log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getVertexShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v0, "Sticker shader link failed: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->k:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->l:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputImageTexture"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->m:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->l:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "uTexMatrix"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->n:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "uMVPMatrix"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->o:I

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->t:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->u:[F

    sget-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->f:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->f:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->g:Ljava/nio/FloatBuffer;

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/seles/SelesContext;->program(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->initializeAttributes()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->link()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Program link log: %s"

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getProgramLog()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Fragment shader compile log: %s"

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getFragmentShaderLog()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Vertex link log: %s"

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getVertexShaderLog()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string p1, "Filter shader link failed: %s"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string p2, "position"

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterPositionAttribute:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string p2, "inputTextureCoordinate"

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterTextureCoordinateAttribute:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string p2, "inputImageTexture"

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterInputTextureUniform:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterPositionAttribute:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterTextureCoordinateAttribute:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->getSticker()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    invoke-virtual/range {p1 .. p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->getCurrentTextureID()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getPosType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->getValue()I

    move-result v3

    sget-object v4, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosFullScreen:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->getValue()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->b()I

    move-result v3

    if-gtz v3, :cond_2

    return-void

    :cond_2
    const v3, 0x84c2

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v3, 0xde1

    invoke-virtual/range {p1 .. p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->getCurrentTextureID()I

    move-result v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v3, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->m:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual/range {p1 .. p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->getTextureSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->o:I

    iget-object v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->u:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->n:I

    iget-object v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->t:[F

    invoke-static {v1, v3, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v5, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->k:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->g:Ljava/nio/FloatBuffer;

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v11, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->l:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->f:Ljava/nio/FloatBuffer;

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->s:I

    invoke-direct {v0, v3}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(I)Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object v3

    iget-object v4, v3, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getPosType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;Z)[I

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a([I[Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getPosType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;Z)[I

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a([I[Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iput v7, v5, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->y:F

    iget v8, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iput v7, v5, Landroid/graphics/PointF;->y:F

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->y:F

    iget v8, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p1 .. p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getPosType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;)I

    move-result v7

    aget-object v4, v4, v7

    new-instance v7, Landroid/graphics/PointF;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v9, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v9, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v9, v9

    mul-float/2addr v4, v9

    invoke-direct {v7, v8, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v5, v6}, Lorg/lasque/tusdk/core/utils/RectHelper;->getDistanceOfTwoPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v8, v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->offsetX:F

    mul-float/2addr v8, v4

    iget v9, v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->offsetY:F

    mul-float/2addr v9, v4

    iget v10, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mDeviceAngle:F

    float-to-double v10, v10

    iget v3, v3, Lorg/lasque/tusdk/core/face/FaceAligment;->roll:F

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    const-wide v16, 0x4066800000000000L    # 180.0

    div-double v12, v12, v16

    sub-double/2addr v10, v12

    double-to-float v3, v10

    new-instance v10, Landroid/graphics/PointF;

    const/4 v11, 0x0

    invoke-direct {v10, v11, v11}, Landroid/graphics/PointF;-><init>(FF)V

    iget v11, v7, Landroid/graphics/PointF;->x:F

    float-to-double v11, v11

    float-to-double v14, v8

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v18, v18, v14

    add-double v11, v11, v18

    float-to-double v8, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v18, v18, v8

    add-double v11, v11, v18

    double-to-float v11, v11

    iput v11, v10, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-double v11, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v14, v14, v18

    sub-double/2addr v11, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v8, v2

    add-double/2addr v11, v8

    double-to-float v2, v11

    iput v2, v10, Landroid/graphics/PointF;->y:F

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->scale:F

    mul-float/2addr v3, v4

    iget v7, v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->scale:F

    mul-float/2addr v4, v7

    iget v1, v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->ratio:F

    div-float/2addr v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, v6, Landroid/graphics/PointF;->y:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    iget v1, v6, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v1, v3

    float-to-double v3, v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v1, v3

    move-object/from16 v3, p2

    invoke-direct {v0, v3, v2, v10, v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 11

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getPosType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->getValue()I

    move-result v0

    sget-object v1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->StickerPosFullScreen:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->q:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    iget v7, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v7, v7

    iget v8, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_2
    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->r:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    invoke-static {p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v8, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v8, v8

    iget v9, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->r:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v10, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-direct {v8, v2, v2, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v8}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v8, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    iget v8, v0, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    iget v9, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, v0, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v10, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v10, v10

    div-float/2addr v0, v10

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v2, v8, v9, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v10

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3, v3, v7, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_4
    :goto_1
    iget v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->r:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget v8, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    iget v8, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->r:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_5

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    iget v8, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->r:F

    mul-float/2addr v2, v8

    iput v2, v6, Landroid/graphics/PointF;->x:F

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    goto :goto_2

    :cond_5
    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iput v2, v6, Landroid/graphics/PointF;->x:F

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget v8, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->r:F

    div-float/2addr v2, v8

    goto :goto_2

    :cond_6
    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget v9, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v9

    mul-float/2addr v2, v8

    iput v2, v6, Landroid/graphics/PointF;->x:F

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v9

    mul-float/2addr v2, v8

    :goto_2
    iput v2, v6, Landroid/graphics/PointF;->y:F

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget v8, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v8

    iput v2, v5, Landroid/graphics/PointF;->x:F

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v0

    iput v2, v5, Landroid/graphics/PointF;->y:F

    iget v0, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->rotation:F

    iget v2, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget v8, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->scale:F

    mul-float/2addr v2, v8

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget p3, p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p3, p3

    iget v2, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->scale:F

    mul-float/2addr p3, v2

    iget v2, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->ratio:F

    div-float/2addr p3, v2

    iput p3, v1, Landroid/graphics/PointF;->y:F

    iget p3, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getDesignScreenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    div-float/2addr p3, v2

    iget v2, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getDesignScreenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v8

    iget v8, v8, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v8, v8

    div-float/2addr v2, v8

    cmpl-float v8, p3, v7

    if-eqz v8, :cond_7

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_7

    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, p3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    :cond_7
    sget-object p3, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$18;->c:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getPosType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->ordinal()I

    move-result v2

    aget p3, p3, v2

    const/high16 v2, 0x40000000    # 2.0f

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget p3, v6, Landroid/graphics/PointF;->x:F

    goto :goto_5

    :pswitch_1
    iget p3, v6, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v2

    sub-float/2addr p3, v3

    goto :goto_4

    :pswitch_2
    iget p3, v1, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :pswitch_3
    iget p3, v6, Landroid/graphics/PointF;->x:F

    goto :goto_7

    :pswitch_4
    iget p3, v6, Landroid/graphics/PointF;->x:F

    :goto_3
    div-float/2addr p3, v2

    :goto_4
    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v7, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->offsetX:F

    mul-float/2addr v3, v7

    add-float/2addr p3, v3

    iget v3, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr p3, v3

    iput p3, v4, Landroid/graphics/PointF;->x:F

    iget p3, v6, Landroid/graphics/PointF;->y:F

    goto :goto_9

    :pswitch_5
    iget p3, v6, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v2

    sub-float/2addr p3, v3

    goto :goto_6

    :pswitch_6
    iget p3, v1, Landroid/graphics/PointF;->x:F

    :goto_5
    div-float/2addr p3, v2

    :goto_6
    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v7, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->offsetX:F

    mul-float/2addr v3, v7

    add-float/2addr p3, v3

    iget v3, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr p3, v3

    iput p3, v4, Landroid/graphics/PointF;->x:F

    iget p3, v6, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v3, v2

    sub-float/2addr p3, v3

    goto :goto_a

    :pswitch_7
    iget p3, v6, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v2

    sub-float/2addr p3, v3

    goto :goto_8

    :pswitch_8
    iget p3, v1, Landroid/graphics/PointF;->x:F

    :goto_7
    div-float/2addr p3, v2

    :goto_8
    iget v3, v6, Landroid/graphics/PointF;->x:F

    iget v7, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->offsetX:F

    mul-float/2addr v3, v7

    add-float/2addr p3, v3

    iget v3, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr p3, v3

    iput p3, v4, Landroid/graphics/PointF;->x:F

    iget p3, v1, Landroid/graphics/PointF;->y:F

    :goto_9
    div-float/2addr p3, v2

    :goto_a
    iget v2, v6, Landroid/graphics/PointF;->y:F

    iget p1, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->offsetY:F

    mul-float/2addr v2, p1

    add-float/2addr p3, v2

    iget p1, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr p3, p1

    iput p3, v4, Landroid/graphics/PointF;->y:F

    goto :goto_b

    :pswitch_9
    iget p1, v6, Landroid/graphics/PointF;->x:F

    iput p1, v1, Landroid/graphics/PointF;->x:F

    iget p1, v6, Landroid/graphics/PointF;->y:F

    iput p1, v1, Landroid/graphics/PointF;->y:F

    iget p1, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, v2

    iget p3, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p3

    iput p1, v4, Landroid/graphics/PointF;->x:F

    iget p1, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr p1, v2

    iget p3, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p3

    iput p1, v4, Landroid/graphics/PointF;->y:F

    move v0, v3

    :goto_b
    invoke-direct {p0, p2, v1, v4, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 11

    const/16 v0, 0x10

    new-array v9, v0, [F

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->t:[F

    const/4 v10, 0x0

    invoke-static {v1, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v0, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v4, v1

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v6, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, v9

    invoke-static/range {v1 .. v8}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    iget p1, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    invoke-static {v0, v10, p1, p3, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    cmpl-float p1, p4, v1

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v0

    move v3, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {v0, v10, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->u:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;Z)[I
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$18;->c:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerPositionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xd

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    :pswitch_0
    if-eqz p2, :cond_2

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x5

    if-eqz p2, :cond_0

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    goto :goto_1

    :cond_0
    new-array p1, p1, [I

    fill-array-data p1, :array_1

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x3

    if-eqz p2, :cond_1

    new-array p1, p1, [I

    fill-array-data p1, :array_2

    goto :goto_1

    :cond_1
    new-array p1, p1, [I

    fill-array-data p1, :array_3

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_2

    :goto_0
    new-array p1, v0, [I

    fill-array-data p1, :array_4

    goto :goto_1

    :cond_2
    new-array p1, v0, [I

    fill-array-data p1, :array_5

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x2
        0x1d
        0x1e
        0x1f
        0x20
    .end array-data

    :array_1
    .array-data 4
        0xe
        0x1d
        0x1e
        0x22
        0x23
    .end array-data

    :array_2
    .array-data 4
        0x30
        0x31
        0x3b
    .end array-data

    :array_3
    .array-data 4
        0x35
        0x36
        0x37
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x11
        0x12
        0x13
        0x14
        0x15
        0x1b
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
    .end array-data

    :array_5
    .array-data 4
        0x10
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
    .end array-data
.end method

.method private b()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFaces:[Lorg/lasque/tusdk/core/face/FaceAligment;

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static buildBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static textureCoordinates(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)[F
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$18;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->noRotationTextureCoordinates:[F

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotate180TextureCoordinates:[F

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotateRightHorizontalFlipTextureCoordinates:[F

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotateRightVerticalFlipTextureCoordinates:[F

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->horizontalFlipTextureCoordinates:[F

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->verticalFlipTextureCoordinates:[F

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotateRightTextureCoordinates:[F

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotateLeftTextureCoordinates:[F

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public endProcessing()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mIsEndProcessing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mIsEndProcessing:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->endProcessing()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mOverrideInputSize:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->scale(F)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mOverrideInputSize:Z

    :goto_0
    return-void
.end method

.method public forceProcessingAtSizeRespectingAspectRatio(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mOverrideInputSize:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->scale(F)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mOverrideInputSize:Z

    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method

.method public getFrameProcessingDelegate()Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    return-object v0
.end method

.method public getScale()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->v:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->v:F

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->v:F

    return v0
.end method

.method protected getStickerCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getStickerImageByData(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mUsingNextFrameForImageCapture:Z

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->imageFromFramebufferContents()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    return-object v1
.end method

.method protected informTargetsAboutNewFrame(J)V
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getFrameProcessingDelegate()Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getFrameProcessingDelegate()Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;->onFrameCompletion(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;J)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v4

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setInputFramebufferForTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->outputFrameSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mUsingNextFrameForImageCapture:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->removeOutputFramebuffer()V

    :cond_4
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v3

    if-eq v2, v3, :cond_6

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->newFrameReady(JI)V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected initializeAttributes()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    return-void
.end method

.method protected inputFramebufferBindTexture()V
    .locals 2

    const v0, 0x84c2

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result v0

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterInputTextureUniform:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method protected inputFramebufferUnlock()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-void
.end method

.method public isCurrentlyReceivingMonochromeInput()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mCurrentlyReceivingMonochromeInput:Z

    return v0
.end method

.method protected isLiveStickerSupported()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->h:Z

    return v0
.end method

.method public isPreventRendering()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->c:Z

    return v0
.end method

.method public maximumOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    return-object v0
.end method

.method public newFrameReady(JI)V
    .locals 1

    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->b:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->textureCoordinates(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)[F

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p3, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->informTargetsAboutNewFrame(J)V

    return-void
.end method

.method public nextAvailableTextureIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method protected onInitOnGLThread()V
    .locals 0

    return-void
.end method

.method public outputFrameSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method protected renderStickers()V
    .locals 8

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getStickerCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->j:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->getSticker()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v5

    iget-object v5, v5, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    sget-object v6, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$18;->b:[I

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->getRenderType()Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo$StickerRenderType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/16 v6, 0x303

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    invoke-static {v7, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_1

    :pswitch_0
    const/16 v5, 0x307

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x306

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    :goto_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->b()I

    move-result v5

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->getSticker()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v6

    invoke-virtual {v6}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->requireFaceFeature()Z

    move-result v6

    if-eqz v6, :cond_4

    iput v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->s:I

    if-lez v5, :cond_5

    :goto_2
    iget v6, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->s:I

    if-ge v6, v5, :cond_5

    invoke-direct {p0, v4}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)V

    iget v6, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->s:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->s:I

    goto :goto_2

    :cond_4
    invoke-direct {p0, v4}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->isPreventRendering()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->inputFramebufferUnlock()V

    return-void

    :cond_0
    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getOutputTextureOptions()Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Lorg/lasque/tusdk/core/seles/SelesFramebuffer$SelesTextureOptions;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->activateFramebuffer()V

    iget-boolean v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mUsingNextFrameForImageCapture:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    :cond_1
    invoke-virtual {v0, v4}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setUniformsForProgramAtIndex(I)V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorRed:F

    iget v2, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorGreen:F

    iget v3, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorBlue:F

    iget v5, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorAlpha:F

    invoke-static {v1, v2, v3, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->inputFramebufferBindTexture()V

    iget v5, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterPositionAttribute:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v10, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFilterTextureCoordinateAttribute:I

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v15, p2

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v4, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->inputFramebufferUnlock()V

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->isLiveStickerSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->i:Z

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->renderStickers()V

    :cond_2
    const/16 v1, 0xde1

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-boolean v1, v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mUsingNextFrameForImageCapture:Z

    return-void
.end method

.method public rotatedPoint(Landroid/graphics/PointF;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sget-object v1, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$18;->a:[I

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    return-object p1

    :pswitch_1
    iget p2, p1, Landroid/graphics/PointF;->x:F

    sub-float p2, v1, p2

    goto :goto_0

    :pswitch_2
    iget p2, p1, Landroid/graphics/PointF;->y:F

    sub-float p2, v1, p2

    goto :goto_1

    :pswitch_3
    iget p2, p1, Landroid/graphics/PointF;->y:F

    iput p2, v0, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :pswitch_4
    iget p2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :pswitch_5
    iget p2, p1, Landroid/graphics/PointF;->x:F

    :goto_0
    iput p2, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    goto :goto_2

    :pswitch_6
    iget p2, p1, Landroid/graphics/PointF;->y:F

    :goto_1
    iput p2, v0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    :goto_2
    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_5

    :pswitch_7
    iget p2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    :goto_3
    iget p1, p1, Landroid/graphics/PointF;->x:F

    :goto_4
    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public rotatedSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput v0, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput p1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object p2
.end method

.method public seekStickerToFrameTime(J)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v1, p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->seekStickerToFrameTime(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorRed:F

    iput p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorGreen:F

    iput p3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorBlue:F

    iput p4, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mBackgroundColorAlpha:F

    return-void
.end method

.method public setBenchmarkTime(J)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v1, p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->setBenchmarkTime(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentlyReceivingMonochromeInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mCurrentlyReceivingMonochromeInput:Z

    return-void
.end method

.method public setDisplayRect(Landroid/graphics/RectF;F)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->q:Landroid/graphics/RectF;

    iput p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->r:F

    return-void
.end method

.method public setEnableAutoplayMode(Z)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->setEnableAutoplayMode(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnableLiveSticker(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->h:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->a()V

    :cond_0
    return-void
.end method

.method public setFloat(FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$11;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;IF)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFloat(FLjava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$3;

    invoke-direct {v0, p0, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$3;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFloatArray([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$16;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$16;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;I[F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFloatArray([FLjava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$8;

    invoke-direct {v0, p0, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$8;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;[F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFloatVec3([FLjava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$6;

    invoke-direct {v0, p0, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$6;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;[F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFloatVec4([FLjava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$7;

    invoke-direct {v0, p0, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$7;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;[F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFrameProcessingDelegate(Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->d:Lorg/lasque/tusdk/core/seles/filters/SelesFilter$FrameProcessingDelegate;

    return-void
.end method

.method public setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->e:I

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->isPreventRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->getScale()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->scale(F)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    :cond_1
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mOverrideInputSize:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v0

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mForcedMaximumSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/RectHelper;->makeRectWithAspectRatioInsideRect(Lorg/lasque/tusdk/core/struct/TuSdkSize;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Rect;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->rotatedSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result p2

    if-ge p2, v1, :cond_5

    :goto_2
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2
.end method

.method public setInteger(IILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$17;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;II)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setInteger(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$2;

    invoke-direct {v0, p0, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$2;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMatrix3f([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$9;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;I[F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMatrix4f([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$10;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$10;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;I[F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPoint(Landroid/graphics/PointF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$12;

    invoke-direct {p3, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$12;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPoint(Landroid/graphics/PointF;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$5;

    invoke-direct {v0, p0, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$5;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;Landroid/graphics/PointF;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPreventRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->c:Z

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->v:F

    return-void
.end method

.method public setSize(Lorg/lasque/tusdk/core/struct/TuSdkSizeF;ILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p3, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;

    invoke-direct {p3, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$13;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;I)V

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSize(Lorg/lasque/tusdk/core/struct/TuSdkSizeF;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;

    invoke-direct {v0, p0, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$4;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Ljava/lang/String;Lorg/lasque/tusdk/core/struct/TuSdkSizeF;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setStickerVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->i:Z

    return-void
.end method

.method public setUniformsForProgramAtIndex(I)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runPendingOnDrawTasks()V

    return-void
.end method

.method public setVec3([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$14;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$14;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;I[F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVec4([FILorg/lasque/tusdk/core/seles/SelesGLProgram;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$15;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter$15;-><init>(Lorg/lasque/tusdk/core/seles/filters/SelesFilter;Lorg/lasque/tusdk/core/seles/SelesGLProgram;I[F)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setupFilterForSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    return-void
.end method

.method public sizeOfFBO()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->maximumOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V
    .locals 2

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mFaces:[Lorg/lasque/tusdk/core/face/FaceAligment;

    float-to-double p1, p2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mDeviceAngle:F

    return-void
.end method

.method public updateStickers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->p:Ljava/util/List;

    return-void
.end method

.method public useNextFrameForImageCapture()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->mUsingNextFrameForImageCapture:Z

    return-void
.end method

.method public wantsMonochromeInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
