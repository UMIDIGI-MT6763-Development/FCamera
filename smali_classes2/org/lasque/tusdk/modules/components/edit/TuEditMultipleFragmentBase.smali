.class public abstract Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

.field private f:I

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

.field private j:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    new-instance v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$3;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->i:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    new-instance v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$4;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$4;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->j:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    return-void
.end method

.method private a()I
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getLimitSideSize()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getLimitSideSize()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    :goto_0
    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->maxImageSide()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v0

    const-string v1, "captureImage_%s.tmp"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getLastSteps()Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->i:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    iget-object v5, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->j:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->analysisWithThumb(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized appendHistory(Ljava/io/File;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->isDisableStepsSave()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->clearSteps(Ljava/util/List;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getLimitHistoryCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v1, v0, :cond_2

    iget-object v3, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->clearSteps(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->clearSteps(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->refreshStepStates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_4
    :goto_2
    monitor-exit p0

    return-void
.end method

.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getWaterMarkOption()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->addWaterMarkToImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method protected asyncLoadImage()Landroid/graphics/Bitmap;
    .locals 8

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->a()I

    move-result v0

    new-instance v1, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getTempFilePath()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v2, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v2

    invoke-static {v2, v4, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZI)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v2, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v2, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageLimit(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getRatioTypes()[I

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-nez v2, :cond_4

    :cond_3
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    :cond_4
    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->firstRatio(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_5

    iget-object v3, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v3, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_5
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v3

    const-string v5, "captureImage_%s.tmp"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    iget-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    iget-object v2, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getOutputCompress()I

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    iget-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getImageDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    iget-object v2, v1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, v1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected asyncLoadImageCompleted(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->asyncLoadImageCompleted(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->setDisplayImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected asyncLoadStepImage(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->asyncLoadStepImage(Ljava/io/File;Z)V

    return-void
.end method

.method protected asyncLoadStepImage(Ljava/io/File;Z)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "lsq_edit_loading"

    invoke-static {p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->hubStatus(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;

    invoke-direct {p2, p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;Ljava/io/File;)V

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    :cond_2
    :goto_0
    return-void
.end method

.method protected clearAllSteps()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->clearSteps(Ljava/util/List;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->clearSteps(Ljava/util/List;)V

    return-void
.end method

.method protected clearSteps(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "clearSteps (%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected getBrushies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    return-object v0
.end method

.method protected getHistories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getLastSteps()Ljava/io/File;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getLimitHistoryCount()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->f:I

    return v0
.end method

.method public final getLimitSideSize()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->a:I

    return v0
.end method

.method public getModules()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->multipleActionTypes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->d:Ljava/util/List;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;

    sget-object v3, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->TypeSmudge:Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;

    if-ne v2, v3, :cond_2

    sget-object v3, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/secret/SdkValid;->smudgeEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->TypeWipeFilter:Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;

    if-ne v2, v3, :cond_3

    sget-object v3, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/secret/SdkValid;->wipeFilterEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v3, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->TypeHDR:Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;

    if-ne v2, v3, :cond_4

    sget-object v3, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/secret/SdkValid;->hdrFilterEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->d:Ljava/util/List;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->d:Ljava/util/List;

    return-object v0
.end method

.method public abstract getRatioTypes()[I
.end method

.method protected handleAutoAdjust()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->reset()V

    :goto_0
    const-string v0, "lsq_edit_processing"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method protected handleCompleteButton()V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getLastSteps()Ljava/io/File;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    iget-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$5;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase$5;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleStepNextButton()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getLastSteps()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->refreshStepStates()V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->asyncLoadStepImage(Ljava/io/File;)V

    return-void
.end method

.method protected handleStepPrevButton()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->getLastSteps()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->refreshStepStates()V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->asyncLoadStepImage(Ljava/io/File;)V

    return-void
.end method

.method public isDisableStepsSave()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->c:Z

    return v0
.end method

.method public final isLimitForScreen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->b:Z

    return v0
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editMultipleFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->clearAllSteps()V

    return-void
.end method

.method protected abstract onRefreshStepStates(II)V
.end method

.method protected final refreshStepStates()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->onRefreshStepStates(II)V

    return-void
.end method

.method protected setBrushies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setDisableStepsSave(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->c:Z

    return-void
.end method

.method public abstract setDisplayImage(Landroid/graphics/Bitmap;)V
.end method

.method protected setHistories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final setLimitForScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->b:Z

    return-void
.end method

.method protected setLimitHistoryCount(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->f:I

    return-void
.end method

.method public final setLimitSideSize(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->a:I

    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultipleFragmentBase;->d:Ljava/util/List;

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
