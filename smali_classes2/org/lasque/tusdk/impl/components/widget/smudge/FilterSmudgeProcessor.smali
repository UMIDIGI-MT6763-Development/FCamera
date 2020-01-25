.class public final Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;
.super Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->b()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 4

    const-string v0, ""

    const-string v1, ""

    const-wide/16 v2, -0x1

    invoke-static {v2, v3, v0, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->create(JLjava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->setType(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->mCurrentBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    const/16 v0, 0x48

    const/high16 v1, -0x1000000

    invoke-static {v0, v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->createOvalImage(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private a(FFF)V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-ltz v3, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-ltz v0, :cond_0

    int-to-float v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, p3

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v2, v0, p1

    div-float/2addr v2, p3

    sub-float v3, v0, p2

    div-float/2addr v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->b:Landroid/graphics/Canvas;

    iget-object v4, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    sub-float/2addr p1, v0

    sub-float/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->smudgeCanvas:Landroid/graphics/Canvas;

    iget-object p3, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3, v1, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$2;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->lowPerformance()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
    .end array-data
.end method

.method static synthetic b(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->destroy()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected drawAtPoint(FFFFF)V
    .locals 0

    iget-object p3, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->c:Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    cmpl-float p5, p1, p3

    if-ltz p5, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->getImageWidth()I

    move-result p5

    int-to-float p5, p5

    cmpg-float p5, p1, p5

    if-gez p5, :cond_1

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->getImageHeight()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gez p3, :cond_1

    invoke-direct {p0, p1, p2, p4}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->a(FFF)V

    :cond_1
    return-void
.end method

.method protected getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-object v0
.end method

.method protected getMaxTemplateDistance(F)F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    return p1
.end method

.method protected init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->c:Landroid/graphics/Bitmap;

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->a()V

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method protected setBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 0

    return-void
.end method

.method protected setBrushSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize;->getBrushValue(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    int-to-float p1, p1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->mBrushScale:F

    return-void
.end method

.method protected final setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    return-void
.end method
