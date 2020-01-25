.class public Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/video/SelesSurfaceEncoderInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;
    }
.end annotation


# static fields
.field private static final a:[F

.field private static final b:[F


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/nio/FloatBuffer;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/SurfaceTexture;

.field private i:Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

.field private j:Z

.field private final k:Landroid/os/HandlerThread;

.field private final l:Landroid/os/Handler;

.field private m:Landroid/graphics/RectF;

.field protected mCurrentlyReceivingMonochromeInput:Z

.field protected mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field protected mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

.field protected mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field protected mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mVerticesBuffer:Ljava/nio/FloatBuffer;

.field protected mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

.field private n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

.field private o:Landroid/graphics/Bitmap;

.field private p:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field private q:Ljava/nio/FloatBuffer;

.field private final r:Ljava/nio/FloatBuffer;

.field private s:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field private t:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

.field private u:I

.field private v:I

.field private w:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

.field private x:Z

.field private y:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->b:[F

    return-void

    nop

    :array_0
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

    :array_1
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
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomLeft:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->BottomRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->TopRight:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->s:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    sget-object v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;->UnKnow:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->y:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->r:Ljava/nio/FloatBuffer;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.tusdk.SelesAsyncEncoder"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->k:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setEnabled(Z)V

    return-void

    :array_0
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
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)Ljava/nio/FloatBuffer;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->f:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method private a()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->b:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->f:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private a(JI)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getTimestamp()J

    move-result-wide p1

    iget-object p3, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    new-instance v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$1;-><init>(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;J)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/opengl/EGLContext;)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;->Recording:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->f()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->prepareEncoder(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;->setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    invoke-direct {v0, p1, v1}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->i:Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->i:Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->attachSurface(Landroid/view/Surface;Z)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->i:Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->makeCurrent()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->b()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "SelesSurfaceTextureEncoder _startRecording failed"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->y:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;Landroid/opengl/EGLContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v1

    iget-object v1, v1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerOutSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->m:Landroid/graphics/RectF;

    if-eqz v2, :cond_1

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->m:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_1
    iget v2, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget v3, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->c()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->i:Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    return-object p0
.end method

.method private b()V
    .locals 5

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    const-string v1, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->initializeAttributes()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->link()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Program link log: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getProgramLog()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Fragment shader compile log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getFragmentShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Vertex link log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getVertexShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v0, "Filter shader link failed: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->d:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputImageTexture"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->e:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->c:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method private c()V
    .locals 14

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v6, 0x1

    aput v3, v4, v6

    const/4 v7, 0x2

    aput v2, v4, v7

    const/4 v8, 0x3

    aput v3, v4, v8

    const/4 v9, 0x4

    aput v0, v4, v9

    const/4 v10, 0x5

    aput v1, v4, v10

    const/4 v11, 0x6

    aput v2, v4, v11

    const/4 v12, 0x7

    aput v1, v4, v12

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isEnableHorizontallyFlip()Z

    move-result v13

    if-eqz v13, :cond_0

    aput v2, v4, v5

    aput v3, v4, v6

    aput v0, v4, v7

    aput v3, v4, v8

    aput v2, v4, v9

    aput v1, v4, v10

    aput v0, v4, v11

    aput v1, v4, v12

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
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
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->f()V

    return-void
.end method

.method private d()V
    .locals 15

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->q:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x304

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const v1, 0x84c2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->getCurrentTextureID()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->e:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v3, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->c:I

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->q:Ljava/nio/FloatBuffer;

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v9, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->d:I

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->r:Ljava/nio/FloatBuffer;

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method private e()V
    .locals 11

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->getTextureSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v4, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    iget v4, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    div-float v4, v5, v4

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    div-float/2addr v5, v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->getWaterMarkPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    move-result-object v1

    sget-object v6, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$6;->a:[I

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;->ordinal()I

    move-result v1

    aget v1, v6, v1

    const/high16 v6, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_0

    sub-float v1, v3, v2

    sub-float v4, v1, v4

    :pswitch_0
    sub-float v1, v3, v0

    :goto_0
    sub-float v5, v1, v5

    goto :goto_1

    :pswitch_1
    const/high16 v1, 0x3f000000    # 0.5f

    div-float v4, v2, v6

    sub-float v4, v1, v4

    div-float v5, v0, v6

    goto :goto_0

    :pswitch_2
    sub-float v1, v3, v2

    sub-float v4, v1, v4

    :goto_1
    :pswitch_3
    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    mul-float v7, v4, v6

    sub-float/2addr v7, v3

    const/4 v8, 0x0

    aput v7, v1, v8

    const/4 v9, 0x1

    mul-float v10, v5, v6

    sub-float/2addr v10, v3

    aput v10, v1, v9

    const/4 v9, 0x2

    add-float/2addr v4, v2

    mul-float/2addr v4, v6

    sub-float/2addr v4, v3

    aput v4, v1, v9

    const/4 v2, 0x3

    aput v10, v1, v2

    const/4 v2, 0x4

    aput v7, v1, v2

    const/4 v2, 0x5

    add-float/2addr v5, v0

    mul-float/2addr v5, v6

    sub-float/2addr v5, v3

    aput v5, v1, v2

    const/4 v0, 0x6

    aput v4, v1, v0

    const/4 v0, 0x7

    aput v5, v1, v0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->q:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_3

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->q:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->q:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :array_0
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
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->i:Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;->release()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->i:Lorg/lasque/tusdk/core/seles/video/SelesWindowsSurface;

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->removeSticker()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    :cond_0
    return-void
.end method

.method public endProcessing()V
    .locals 0

    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->w:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    return-object v0
.end method

.method protected getTimestamp()J
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->h:Landroid/graphics/SurfaceTexture;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gtz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    :cond_1
    return-wide v3
.end method

.method public getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->t:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->t:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->t:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    return-object v0
.end method

.method public getWaterMarkImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->o:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWaterMarkPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->p:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-object v0
.end method

.method protected initializeAttributes()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    return-void
.end method

.method protected inputFramebufferUnlock()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-void
.end method

.method public isCurrentlyReceivingMonochromeInput()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mCurrentlyReceivingMonochromeInput:Z

    return v0
.end method

.method public isEnableHorizontallyFlip()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->j:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->x:Z

    return v0
.end method

.method public isPaused()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->y:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    sget-object v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;->Paused:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecording()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->y:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    sget-object v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;->Recording:Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$VideoEncoderState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShouldIgnoreUpdatesToThisTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public maximumOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    return-object v0
.end method

.method public mountAtGLThread(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public newFrameReady(JI)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string p1, "No input fbo, skip one frame"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setEnabled(Z)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(JI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public nextAvailableTextureIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pausdRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$4;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$4;-><init>(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected prepareEncoder(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;-><init>()V

    iget v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->u:I

    iget v2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->v:I

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoder;->setDefaultVideoQuality(II)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    invoke-interface {v1, p1}, Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;->initCodec(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)Z

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    return-void
.end method

.method protected renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    const v1, 0x84c2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result v1

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->e:I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v4, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->c:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v9, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->d:I

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v14, p2

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget-object v3, v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->d()V

    :cond_0
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public rotatedSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

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

.method public setCurrentlyReceivingMonochromeInput(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mCurrentlyReceivingMonochromeInput:Z

    return-void
.end method

.method public setDefaultVideoQuality(II)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->u:I

    iput p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->v:I

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->w:Lorg/lasque/tusdk/core/encoder/TuSDKVideoDataEncoderDelegate;

    return-void
.end method

.method public setEnableHorizontallyFlip(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->j:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->c()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->x:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->x:Z

    return-void
.end method

.method public setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mFirstInputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->c()V

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->rotatedSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->a(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float p2, p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p2, p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->g:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_2
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->e()V

    return-void
.end method

.method public setOutputRegion(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->m:Landroid/graphics/RectF;

    return-void
.end method

.method public setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->t:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    return-void
.end method

.method public setWaterMarkImage(Landroid/graphics/Bitmap;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->o:Landroid/graphics/Bitmap;

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, ""

    invoke-static/range {v0 .. v8}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->create(JJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerType:I

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    if-nez p1, :cond_1

    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->n:Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->updateSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V

    return-void
.end method

.method public setWaterMarkPosition(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->p:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->e()V

    return-void
.end method

.method public startRecording(Landroid/opengl/EGLContext;Landroid/graphics/SurfaceTexture;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->mVideoEncoder:Lorg/lasque/tusdk/core/encoder/video/TuSDKHardVideoDataEncoderInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->h:Landroid/graphics/SurfaceTexture;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    new-instance p2, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$2;

    invoke-direct {p2, p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$2;-><init>(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->h:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    new-instance v0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$3;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$3;-><init>(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;Landroid/opengl/EGLContext;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->l:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder$5;-><init>(Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateWaterMark(Landroid/graphics/Bitmap;ILorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V
    .locals 3

    if-eqz p2, :cond_5

    const/16 v0, 0x168

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    sub-int/2addr v0, p2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->getValue(IZ)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setWaterMarkImage(Landroid/graphics/Bitmap;)V

    :cond_1
    if-nez p3, :cond_2

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->s:[Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    array-length v0, p1

    if-ge v1, v0, :cond_4

    aget-object v0, p1, v1

    if-ne p3, v0, :cond_3

    div-int/lit8 p2, p2, 0x5a

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setWaterMarkPosition(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setWaterMarkImage(Landroid/graphics/Bitmap;)V

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/core/seles/video/SelesSurfaceTextureEncoder;->setWaterMarkPosition(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V

    :cond_7
    return-void
.end method

.method public wantsMonochromeInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
