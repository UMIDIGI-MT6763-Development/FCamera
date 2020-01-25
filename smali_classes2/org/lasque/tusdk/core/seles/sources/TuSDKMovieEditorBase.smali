.class public abstract Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieCreatorInterface;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:[F

.field private static final d:[F

.field private static final e:[F


# instance fields
.field private A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

.field private B:Z

.field private C:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

.field private D:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field private E:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

.field private F:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private G:Landroid/graphics/Bitmap;

.field private H:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

.field private I:F

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:J

.field private N:J

.field private O:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

.field private f:Landroid/content/Context;

.field private final g:Landroid/widget/RelativeLayout;

.field private h:Ljavax/microedition/khronos/egl/EGLContext;

.field private i:Landroid/graphics/SurfaceTexture;

.field private j:Landroid/view/Surface;

.field private k:I

.field private l:Z

.field private m:Z

.field protected mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field protected mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field protected mOutputRegion:Landroid/graphics/RectF;

.field protected mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field protected mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

.field private n:Ljava/nio/FloatBuffer;

.field private o:Ljava/nio/FloatBuffer;

.field private p:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private final u:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:Z

.field private x:F

.field private y:Z

.field private z:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->b:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->c:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->d:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->e:[F

    return-void

    :array_0
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

    :array_1
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
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_4
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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->y:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->B:Z

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->I:F

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$5;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->O:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->f:Landroid/content/Context;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->g:Landroid/widget/RelativeLayout;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->u:Ljava/util/Queue;

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->initEditor()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;F)F
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->x:F

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->q:I

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->i:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->j:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Lorg/lasque/tusdk/core/seles/SelesGLProgram;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->p:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    const-string v2, "smoothing"

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->equalsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->isEnableBeauty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->I:F

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->submitFilterParameter()V

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->updateFilterStickerData()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a()V

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$7;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$7;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/utils/TuSdkDate;)V
    .locals 6

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->K:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->N:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->N:J

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->N:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->diffOfMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->M:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->M:J

    const-string p1, "Average frame time: %s ms"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->averageFrameDurationDuringCapture()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1, v3}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "Current frame time: %s ms"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {p1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->m:Z

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->r:I

    return p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->p:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    return-object p0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->p:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$2;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->l:Z

    return p1
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->q:I

    return p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->s:I

    return p1
.end method

.method private c()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->n:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a:[F

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->n:Ljava/nio/FloatBuffer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->n:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->r:I

    return p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;I)I
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->k:I

    return p1
.end method

.method private d()Ljava/nio/FloatBuffer;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->o:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-ne v0, v1, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->b:[F

    :goto_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->o:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Right:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->c:[F

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Down:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-ne v0, v1, :cond_3

    sget-object v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->d:[F

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Left:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    if-ne v0, v1, :cond_4

    sget-object v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->e:[F

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->o:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)I
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->f()I

    move-result p0

    return p0
.end method

.method private e()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$3;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method private f()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2601

    const/16 v4, 0x2801

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v0, 0x812f

    const/16 v4, 0x2802

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget v0, v1, v2

    return v0
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)I
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->k:I

    return p0
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->i:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method private g()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;
    .locals 3

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->sharedFramebufferCache()Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/SelesFramebufferCache;->fetchFramebuffer(Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->disableReferenceCounting()V

    return-object v0
.end method

.method private h()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->j:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->i()V

    return-void
.end method

.method private i()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->L:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Fail to get video info"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->p:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    invoke-direct/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->k()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    const v1, 0x84c2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->k:I

    const v3, 0x8d65

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->s:I

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v5, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->q:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->c()Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v11, v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->r:I

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->d()Ljava/nio/FloatBuffer;

    move-result-object v16

    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v1, 0x5

    const/4 v4, 0x4

    invoke-static {v1, v2, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method static synthetic i(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->l:Z

    return p0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesView;->requestRender()V

    return-void
.end method

.method static synthetic j(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->m()V

    return-void
.end method

.method static synthetic k(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Landroid/view/Surface;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->h()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method private k()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->g()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->m:Z

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->activateFramebuffer()V

    return-void
.end method

.method static synthetic l(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    return-object p0
.end method

.method private l()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->L:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->L:Z

    return-void
.end method

.method private m()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onMovieEditProcessingComplete()V

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->C:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;-><init>(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->O:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->setDelegate(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->B:Z

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->setLooping(Z)V

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$8;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->runOnDraw(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->j()V

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->setDelegate(Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder$TuSDKMovieDataDecoderDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    :cond_0
    return-void
.end method


# virtual methods
.method public addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    :cond_0
    return-void
.end method

.method protected applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->bindWithCameraView(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V

    return-void
.end method

.method public averageFrameDurationDuringCapture()F
    .locals 5

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->M:J

    long-to-float v0, v0

    iget-wide v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->N:J

    const-wide/16 v3, 0x0

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected buildSelesView()Lorg/lasque/tusdk/core/seles/output/SelesView;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Can not find holderView"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/lasque/tusdk/core/seles/output/SelesView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/seles/output/SelesView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->g:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    invoke-virtual {v2, v3, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    return-object v0
.end method

.method public getBeautyLevel()F
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->isEnableBeauty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->I:F

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->f:Landroid/content/Context;

    return-object v0
.end method

.method protected getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->h:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getMovieProgress()F
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getVideoActualDuration()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getProgress()F

    move-result v0

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getOutputRegion()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mOutputRegion:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected final getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->videoOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->height:I

    iget v2, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->width:I

    goto :goto_0

    :cond_1
    iget v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->width:I

    iget v2, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->height:I

    :goto_0
    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->F:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->F:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->getRatioFloat()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getOutputRegion()Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->F:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->F:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput v1, v0, Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;->height:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->F:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getOutputRegion()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getOutputRegion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getOutputRegion()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public getPlaygroundTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->E:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0
.end method

.method protected getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->i:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->D:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-object v0
.end method

.method public getVideoActualDuration()F
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoDurationTimeUS()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoDataSource()Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->C:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    return-object v0
.end method

.method public getVideoDuration()F
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->duration()F

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getVideoActualDuration()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getTimeRange()Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->duration()F

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getVideoActualDuration()F

    move-result v0

    return v0
.end method

.method public final getVideoEncoderSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->z:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->z:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->z:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->z:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    return-object v0
.end method

.method public getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->getVideoInfo()Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWaterMarkImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->G:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWaterMarkPosition()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->H:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-object v0
.end method

.method protected initEditor()V
    .locals 3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->b()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->buildSelesView()Lorg/lasque/tusdk/core/seles/output/SelesView;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesView;->setRenderModeDirty()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getOutputRegion()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesView;->setDisplayRect(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v1, v2}, Lorg/lasque/tusdk/core/seles/output/SelesView;->setBackgroundColor(FFFF)V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->processImage()V

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->setEnableBeauty(Z)V

    return-void
.end method

.method public isEnableBeauty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->J:Z

    return v0
.end method

.method public isEnableDecodeingMovieAudio()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->y:Z

    return v0
.end method

.method public final isFilterChanging()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->t:Z

    return v0
.end method

.method public isLooping()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->B:Z

    return v0
.end method

.method protected isOnDrawTasksEmpty()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->u:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->u:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isProcessPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->w:Z

    return v0
.end method

.method public isProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->v:Z

    return v0
.end method

.method protected isVideoLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->l:Z

    return v0
.end method

.method public loadVideo()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->l:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->v:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->C:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->e()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->n()V

    return-void

    :cond_2
    :goto_0
    const-string v0, "Invalid movie source"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->onMovieEditLoadVideoFailed()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onAudioDecoderInfoReady(Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method protected onAudioFrameDataAvailable(JLjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->o()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->checkAppAuth()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/16 p1, 0x4100

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->isOnDrawTasksEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->runPendingOnDrawTasks()V

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->L:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->K:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v0

    :cond_1
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->updateTargetsForVideoCameraUsingCacheTexture(J)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Lorg/lasque/tusdk/core/utils/TuSdkDate;)V

    return-void
.end method

.method protected onFilterChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->t:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->isProcessing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->j()V

    :cond_0
    return-void
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->l()V

    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$4;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$4;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->runOnDraw(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onMovieEditLoadVideoFailed()V
    .locals 0

    return-void
.end method

.method protected onMovieEditLoaded()V
    .locals 0

    return-void
.end method

.method protected onMovieEditProcessingComplete()V
    .locals 0

    return-void
.end method

.method protected onMovieEditProgressChanged(JFF)V
    .locals 0

    return-void
.end method

.method protected onMovieInfoAvailable(Lorg/lasque/tusdk/core/decoder/TuSDKVideoInfo;)V
    .locals 0

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/16 p1, 0xb71

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {}, Lorg/lasque/tusdk/core/seles/SelesContext;->currentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->h:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method public pauseProcessing()V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->w:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->stop()V

    :cond_0
    return-void
.end method

.method public resetBenchmarkAverage()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->N:J

    iput-wide v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->M:J

    return-void
.end method

.method public resumeProcessing()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->w:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->n()V

    :cond_0
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->u:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->u:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->u:Ljava/util/Queue;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a(Ljava/util/Queue;)V

    return-void
.end method

.method public setBeautyLevel(F)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->isEnableBeauty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->I:F

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnableBeauty(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->J:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->J:Z

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->J:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->I:F

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$1;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnableDecodeingMovieAudio(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->y:Z

    return-void
.end method

.method public setEnableRenderer(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mPreviewView:Lorg/lasque/tusdk/core/seles/output/SelesView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesView;->setEnableRenderer(Z)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->B:Z

    return-void
.end method

.method public setMoviePath(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;->create(Ljava/lang/String;)Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->setVideoDataSource(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V

    return-void
.end method

.method public setOutputRegion(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mOutputRegion:Landroid/graphics/RectF;

    return-void
.end method

.method public setOutputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoEditorResolutionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "You are not allowed to change video editor resolution, please see http://tusdk.com"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->F:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method

.method public setPlaygroundTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->E:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->setPlaygroundTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V

    :cond_0
    return-void
.end method

.method public setTimeRange(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->D:Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    return-void
.end method

.method public setVideoDataSource(Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Please set \'moviePath\' before processing"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->C:Lorg/lasque/tusdk/video/mixer/TuSDKMediaDataSource;

    return-void
.end method

.method public final setVideoEncoderSetting(Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;)V
    .locals 3

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->z:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoEditorResolutionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "You are not allowed to change video editor resolution, please see http://tusdk.com"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iput-object v0, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoEditorBitrateEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v2

    iget-object v2, v2, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "You are not allowed to change video editor bitrate, please see http://tusdk.com"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->getDefaultRecordSetting()Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;

    move-result-object v0

    iget-object v0, v0, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    iput-object v0, p1, Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting;->videoQuality:Lorg/lasque/tusdk/core/encoder/video/TuSDKVideoEncoderSetting$VideoQuality;

    :cond_1
    return-void
.end method

.method public setWaterMarkImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->G:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setWaterMarkPosition(Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->H:Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption$WaterMarkPosition;

    return-void
.end method

.method protected startProcessing()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->l:Z

    if-nez v0, :cond_0

    const-string v0, "Please call loadVideo() before startProcessing()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->v:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->v:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->n()V

    return-void
.end method

.method protected stopProcessing()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->v:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->L:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->x:F

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->w:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->A:Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/decoder/TuSDKMovieDecoder;->stop()V

    :cond_0
    return-void
.end method

.method public final switchFilter(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->videoEditorFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "You are not allowed to user editro filter, please see http://tusdk.com"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->isFilterChanging()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->equalsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->t:Z

    new-instance v0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$6;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase$6;-><init>(Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected abstract updateFilterStickerData()V
.end method

.method protected updateOutputFilter()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mFilterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->applyFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateTargetsForVideoCameraUsingCacheTexture(J)V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v5

    if-eq v3, v5, :cond_1

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mInputTextureSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    invoke-interface {v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->wantsMonochromeInput()Z

    move-result v5

    invoke-interface {v3, v5}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setCurrentlyReceivingMonochromeInput(Z)V

    :cond_1
    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mOutputFramebuffer:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->getTargetToIgnoreForUpdates()Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    move-result-object v3

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/TuSDKMovieEditorBase;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->newFrameReady(JI)V

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
