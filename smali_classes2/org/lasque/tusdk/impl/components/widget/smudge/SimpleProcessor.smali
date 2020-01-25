.class public Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Z

.field protected brushSnap:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/PointF;

.field protected currentSnap:Landroid/graphics/Bitmap;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Z

.field private j:Z

.field protected mBrushScale:F

.field protected mCurrentBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

.field protected originalImage:Landroid/graphics/Bitmap;

.field protected originalSnap:Landroid/graphics/Bitmap;

.field protected smudgeCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->b:Z

    const/4 v1, 0x5

    iput v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->f:I

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->i:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->j:Z

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->b:Z

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->c:Landroid/graphics/PointF;

    new-instance v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->g:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->j:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->i:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    invoke-virtual {v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->hasCached()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->i:Z

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->h:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->h:Ljava/util/concurrent/ExecutorService;

    :cond_4
    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$2;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor$2;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->i:Z

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->markAsCached()V

    :cond_1
    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a()V

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->destroy()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmapAsPNG(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getMaxUndoCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->destroy()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a(Ljava/util/List;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->smudgeCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a(Ljava/util/List;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a(Ljava/util/List;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->h:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->h:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method protected drawAtPoint(FFFFF)V
    .locals 0

    return-void
.end method

.method protected final drawBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v8, v1

    iget-boolean v1, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v5, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->c:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v5, v7, Landroid/graphics/PointF;->y:F

    iput-boolean v2, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->b:Z

    :goto_0
    move v9, v1

    move v10, v5

    iget v1, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mBrushScale:F

    iget-object v5, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v1, v5

    iget-object v5, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mCurrentBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-virtual {v5}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    move-result-object v5

    sget-object v11, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    if-eq v5, v11, :cond_1

    sget-object v11, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeEraser:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    if-ne v5, v11, :cond_2

    :cond_1
    float-to-double v11, v1

    mul-double/2addr v11, v3

    double-to-float v1, v11

    :cond_2
    move v11, v1

    iget v1, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mBrushScale:F

    invoke-virtual {v6, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getMaxTemplateDistance(F)F

    move-result v1

    div-float v1, v8, v1

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v1, v12

    float-to-int v13, v1

    iget v14, v0, Landroid/graphics/PointF;->x:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    iget v0, v7, Landroid/graphics/PointF;->x:F

    iget v1, v7, Landroid/graphics/PointF;->y:F

    move v5, v2

    :goto_1
    if-gt v5, v13, :cond_3

    int-to-float v2, v5

    int-to-float v3, v13

    div-float/2addr v2, v3

    sub-float v3, v12, v2

    mul-float/2addr v3, v2

    sub-float v4, v14, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, v0

    sub-float v16, v0, v9

    mul-float v16, v16, v3

    add-float v16, v4, v16

    sub-float v4, v15, v1

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    sub-float v2, v1, v10

    mul-float/2addr v3, v2

    add-float v17, v4, v3

    sub-float v0, v16, v0

    float-to-double v2, v0

    sub-float v0, v17, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v18, v0, v1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move v3, v8

    move v4, v11

    move/from16 v19, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->drawAtPoint(FFFFF)V

    add-int/lit8 v5, v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto :goto_1

    :cond_3
    iget-object v0, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->c:Landroid/graphics/PointF;

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, v6, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->c:Landroid/graphics/PointF;

    iget v1, v7, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected getBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mCurrentBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    return-object v0
.end method

.method protected getCanvasImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getImageHeight()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->originalSnap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getImageWidth()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->originalSnap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getMaxTemplateDistance(F)F
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, v0

    return p1
.end method

.method protected getMaxUndoCount()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->f:I

    return v0
.end method

.method protected getOriginalImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->originalSnap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getRedoCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getRedoData()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    invoke-virtual {v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->c()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getCanvasImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSmudgeImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7

    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v4, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method

.method protected getUndoCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getUndoData()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    iget-object v3, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getImageWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getImageHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->c()V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getCanvasImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->originalImage:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->originalSnap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->smudgeCanvas:Landroid/graphics/Canvas;

    iput p3, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a:I

    return-void
.end method

.method protected saveCurrentAsHistory()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->currentSnap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    :cond_1
    new-instance v1, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeLog;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->b()V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a()V

    return-void
.end method

.method protected setBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mCurrentBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->brushSnap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->recycled(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mCurrentBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    move-result-object p1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeMosaic:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mCurrentBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mCurrentBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->brushSnap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected setBrushSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize;->getBrushValue(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)D

    move-result-wide v0

    iget p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->a:I

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    int-to-float p1, p1

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->mBrushScale:F

    return-void
.end method

.method protected setMaxUndoCount(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->f:I

    return-void
.end method

.method protected touchBegan()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->b:Z

    return-void
.end method
