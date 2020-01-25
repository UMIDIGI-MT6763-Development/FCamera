.class public abstract Lorg/lasque/tusdk/core/seles/output/SelesBaseView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;
.implements Lorg/lasque/tusdk/core/seles/output/SelesViewInterface;
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# static fields
.field private static final b:[F

.field private static final c:[F

.field private static final d:[F

.field private static final e:[F

.field private static final f:[F

.field private static final g:[F

.field private static final h:[F

.field private static final i:[F

.field private static final j:[F


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

.field private k:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

.field private m:I

.field protected mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

.field protected mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

.field protected mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field protected mVerticesBuffer:Ljava/nio/FloatBuffer;

.field private n:I

.field private o:I

.field private p:Ljava/nio/FloatBuffer;

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->b:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->c:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->d:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->e:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->f:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->g:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->h:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_7

    sput-object v1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->i:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    sput-object v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->j:[F

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

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->t:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->v:Ljava/lang/String;

    const-string v0, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->w:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->x:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->t:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->v:Ljava/lang/String;

    const-string v0, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->w:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->x:Z

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p3}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->t:F

    const/4 p3, 0x0

    iput p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    const-string p3, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->v:Ljava/lang/String;

    const-string p3, "varying highp vec2 textureCoordinate;uniform sampler2D inputImageTexture;void main(){     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);}"

    iput-object p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->w:Ljava/lang/String;

    const/4 p3, 0x1

    iput-boolean p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->x:Z

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->v:Ljava/lang/String;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->program(Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->initializeAttributes()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->link()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Program link log: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getProgramLog()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Fragment shader compile log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getFragmentShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Vertex link log: %s"

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->getVertexShaderLog()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v0, "Filter shader link failed: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->m:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->attributeIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->n:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputImageTexture"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->uniformIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->o:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->m:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/output/SelesBaseView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a()V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$2;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesBaseView;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->runOnDraw(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SelesView: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static textureCoordinates(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)[F
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$4;->a:[I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->b:[F

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->i:[F

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->h:[F

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->g:[F

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->f:[F

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->e:[F

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->c:[F

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->d:[F

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
    .locals 0

    return-void
.end method

.method public getInputRotation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-object v0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->getRenderMode()I

    move-result v0

    return v0
.end method

.method public getRendererFPS()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->getRendererFPS()I

    move-result v0

    return v0
.end method

.method public getSizeInPixels()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->maximumOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public imageFromCurrentlyProcessedOutput()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v3, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;

    invoke-direct {v3, p0, v0, v1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$3;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesBaseView;Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v3}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->runOnDraw(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->requestRender()V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "imageFromCurrentlyProcessedOutput"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method protected initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->k:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-direct {v0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setEGLContextClientVersion(I)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;

    invoke-direct {v0, p2}, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    sget-object p1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    sget-object p1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->j:[F

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    sget-object p1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->b:[F

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->buildBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->p:Ljava/nio/FloatBuffer;

    new-instance p1, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView$1;-><init>(Lorg/lasque/tusdk/core/seles/output/SelesBaseView;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected initializeAttributes()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "position"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    const-string v1, "inputTextureCoordinate"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesGLProgram;->addAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public isCreatedSurface()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->isCreated()Z

    move-result v0

    return v0
.end method

.method public isEnableRenderer()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->x:Z

    return v0
.end method

.method public isShouldIgnoreUpdatesToThisTarget()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadView()V
    .locals 0

    return-void
.end method

.method public maximumOutputSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public mountAtGLThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public newFrameReady(JI)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->isEnableRenderer()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->b()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->p:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->textureCoordinates(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mVerticesBuffer:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method public nextAvailableTextureIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onInitOnGLThread()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-static {p4, p5}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->onResume()V

    return-void
.end method

.method protected abstract recalculateViewGeometry()V
.end method

.method public renderToTexture(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mDisplayProgram:Lorg/lasque/tusdk/core/seles/SelesGLProgram;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/SelesContext;->setActiveShaderProgram(Lorg/lasque/tusdk/core/seles/SelesGLProgram;)V

    const/4 v1, 0x0

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v2, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v3, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mSizeInPixels:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-static {v1, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v2, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->q:F

    iget v3, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->r:F

    iget v4, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->s:F

    iget v5, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->t:F

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4100

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    const v2, 0x84c4

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->getTexture()I

    move-result v2

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->o:I

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v5, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->m:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v10, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->n:I

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v15, p2

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v2, 0x5

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    iget v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    if-lez v1, :cond_0

    iget-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->unlock()V

    iget v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->requestRender()V

    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->k:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->k:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setBackgroundColor(FFFF)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->q:F

    iput p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->r:F

    iput p3, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->s:F

    iput p4, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->t:F

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, v0, v2, v3, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->setBackgroundColor(FFFF)V

    return-void
.end method

.method public setCurrentlyReceivingMonochromeInput(Z)V
    .locals 0

    return-void
.end method

.method public setEnableFixedFrameRate(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setEnableFixedFrameRate(Z)V

    return-void
.end method

.method public setEnableRenderer(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->x:Z

    return-void
.end method

.method public setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    iput p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    :cond_1
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->l:Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesFramebuffer;->lock()V

    iget p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->u:I

    return-void
.end method

.method public setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    return-void
.end method

.method public setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->isSize()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->copy()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->isTransposed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iput v0, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iput p1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->mInputImageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->recalculateViewGeometry()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setRenderMode(I)V

    return-void
.end method

.method public setRenderModeContinuously()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->setRenderMode(I)V

    return-void
.end method

.method public setRenderModeDirty()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->setRenderModeDirty()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->requestRender()V

    return-void
.end method

.method public setRendererFPS(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setRendererFPS(I)V

    return-void
.end method

.method protected setShader(Ljava/lang/String;)V
    .locals 1

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;varying vec2 textureCoordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;}"

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->setShader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setShader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->v:Ljava/lang/String;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->w:Ljava/lang/String;

    return-void
.end method

.method public setZOrderMediaOverlay(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setZOrderMediaOverlay(Z)V

    :cond_0
    return-void
.end method

.method public setZOrderOnTop(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->a:Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/output/SelesSurfaceView;->setZOrderOnTop(Z)V

    :cond_0
    return-void
.end method

.method public viewDidLoad()V
    .locals 0

    return-void
.end method

.method public viewNeedRest()V
    .locals 0

    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/output/SelesBaseView;->setRenderModeDirty()V

    return-void
.end method

.method public wantsMonochromeInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
