.class public Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;,
        Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

.field private b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

.field private c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private d:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

.field private j:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

.field private k:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->g:I

    iput p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->h:I

    new-instance p1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$2;-><init>(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->j:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

    new-instance p1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$3;-><init>(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->k:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;

    sget-object p1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->DetectIdle:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->d:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    new-instance p1, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    iget-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->j:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->setDelegate(Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDelegate;Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener$TuSdkOrientationDegreeDelegate;)V

    new-instance p1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$1;-><init>(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->i:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    return-object p0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/16 v1, 0xf0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    :goto_0
    if-le v0, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    invoke-static {v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->forceProcessingAtSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 8

    iget v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->h:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->g:I

    iget v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->g:I

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->g:I

    iget v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->g:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->getDeviceAngle()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v1

    iget v2, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    const-wide v4, 0x3f91df46a2529d39L    # 0.017453292519943295

    neg-float v6, v0

    float-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-float v4, v6

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->markFaceVideo(IID)[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis()J

    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V

    return-void
.end method

.method private a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->i:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-eqz v5, :cond_5

    iget-object v3, v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v3

    invoke-static/range {p2 .. p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Lorg/lasque/tusdk/core/struct/TuSdkSize;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-gez v6, :cond_2

    iget v7, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v3, v7

    iput v3, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    goto :goto_1

    :cond_2
    iget v7, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v3

    float-to-int v3, v7

    iput v3, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :goto_1
    array-length v3, v1

    move v7, v4

    :goto_2
    if-ge v7, v3, :cond_6

    aget-object v8, v1, v7

    iget-object v9, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iget-object v10, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget v11, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v12, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->left:F

    iget-object v9, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iget-object v10, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget v11, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v12, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->top:F

    iget-object v9, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iget-object v10, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget v11, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v12, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->right:F

    iget-object v9, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iget-object v10, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget v11, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    iget v11, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v12, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    array-length v9, v9

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_4

    iget-object v11, v8, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    aget-object v11, v11, v10

    if-gez v6, :cond_3

    iget v12, v11, Landroid/graphics/PointF;->x:F

    iget v13, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iget v13, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v14, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/PointF;->x:F

    goto :goto_4

    :cond_3
    iget v12, v11, Landroid/graphics/PointF;->y:F

    iget v13, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iget v13, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v14, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iget v13, v5, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/PointF;->y:F

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    iget v4, v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->h:I

    add-int/2addr v4, v3

    :cond_6
    iput v4, v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->h:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->getDelegate()Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->getDelegate()Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    move-result-object v3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-interface {v3, v1, v2, v4, v5}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;->onFrameDetectedResult([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;FZ)V

    :cond_7
    sget-object v1, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->DetectIdle:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    iput-object v1, v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->d:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    :cond_8
    :goto_5
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->f:Z

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->e:Z

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->i:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    sget-object v0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;->DetectIdle:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    iput-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->d:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$DetectStatus;

    return-void
.end method

.method public destroyOutput()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->setDelegate(Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    :cond_0
    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->i:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    return-object v0
.end method

.method public getDeviceAngle()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->getDeviceAngle()I

    move-result v0

    return v0
.end method

.method public getSelesRotateShotOutput()Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    iget-object v1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->k:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->setDelegate(Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput$SelesRotateShotOutputDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    return-object v0
.end method

.method public inited()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->f:Z

    return v0
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->i:Lorg/lasque/tusdk/core/detector/FrameDetectProcessor$FrameDetectProcessorDelegate;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->e:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->b:Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesRotateShotOutput;->setEnabled(Z)V

    :cond_0
    iget-boolean p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->enable()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a:Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/listener/TuSdkOrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method public setInputTextureSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public syncProcessFrameData([BLorg/lasque/tusdk/core/struct/TuSdkSize;IDZ)[Lorg/lasque/tusdk/core/face/FaceAligment;
    .locals 7

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/detector/FrameDetectProcessor;->inited()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v0, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    move v2, p3

    move-wide v3, p4

    move v5, p6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/lasque/tusdk/core/face/TuSdkFaceDetector;->markFaceGrayImage(IIIDZ[B)[Lorg/lasque/tusdk/core/face/FaceAligment;

    move-result-object p1

    return-object p1
.end method
