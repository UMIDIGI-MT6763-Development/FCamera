.class public abstract Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuResultFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;
    }
.end annotation


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

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

.field private i:I

.field private j:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

.field private k:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->i:I

    new-instance v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$4;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$4;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->j:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    new-instance v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$5;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$5;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->k:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    return-void
.end method

.method private a()I
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getLimitSideSize()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getLimitSideSize()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->maxSide()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/secret/SdkValid;->maxImageSide()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getLastSteps()Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->j:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    iget-object v5, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->k:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->analysisWithThumb(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized appendHistory(Ljava/io/File;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->isDisableStepsSave()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->clearSteps(Ljava/util/List;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistoriesSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getLimitHistoryCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v1, v0, :cond_3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->clearSteps(Ljava/util/List;)V

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->clearSteps(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getBrushies()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->clearSteps(Ljava/util/List;)V

    :goto_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->refreshStepStates()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageFile:Ljava/io/File;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getWaterMarkOption()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->addWaterMarkToImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method protected asyncLoadImage(Landroid/widget/ImageView;Ljava/io/File;ZLorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V
    .locals 1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string p3, "lsq_edit_loading"

    invoke-static {p3}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubStatus(Ljava/lang/String;)V

    :cond_1
    new-instance p3, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$1;

    invoke-direct {p3, p0, p2, p1, p4}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;Ljava/io/File;Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V

    invoke-static {p3}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    :cond_2
    :goto_0
    return-void
.end method

.method protected asyncLoadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;ZLorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->asyncLoadImage(Landroid/widget/ImageView;Ljava/io/File;ZLorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V

    return-void

    :cond_1
    new-instance p3, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;

    invoke-direct {p3, p0, p2, p1, p4}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V

    invoke-static {p3}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method protected asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->notifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->asyncNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->isSaveToTemp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->saveToTemp(Lorg/lasque/tusdk/core/TuSdkResult;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->isSaveToAlbum()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->saveToAlbum(Lorg/lasque/tusdk/core/TuSdkResult;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->clearAllSteps()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->backUIThreadNotifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editPhotoAction:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method protected changedCount()I
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected clearAllSteps()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->clearAllSteps()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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

.method public getDraftImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->g:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->g:Ljava/util/List;

    return-object v0
.end method

.method public getImageDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getLastSteps()Ljava/io/File;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistoriesSize()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getLimitHistoryCount()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->f:I

    return v0
.end method

.method public final getLimitSideSize()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->a:I

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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/components/edit/TuEditActionType;->multipleActionTypes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->d:Ljava/util/List;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->d:Ljava/util/List;

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
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->d:Ljava/util/List;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->d:Ljava/util/List;

    return-object v0
.end method

.method public getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->h:Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    return-object v0
.end method

.method public getProcessingDraftIndex()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->i:I

    return v0
.end method

.method public abstract getRatioTypes()[I
.end method

.method protected handleAutoAdjust()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->reset()V

    :goto_0
    const-string v0, "lsq_edit_processing"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$3;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method protected handleCompleteButton()V
    .locals 5

    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->changedCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->prepareSave(II)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->notifyProcessing(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void

    :cond_2
    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$6;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$6;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected handleStepNextButton(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getBrushiesSize()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getBrushies()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->refreshStepStates()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->asyncLoadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;ZLorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V

    return-void
.end method

.method protected handleStepPrevButton(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistoriesSize()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getBrushies()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->refreshStepStates()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->asyncLoadImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;ZLorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$DraftImageLoadListener;)V

    return-void
.end method

.method public isDisableStepsSave()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->c:Z

    return v0
.end method

.method public final isLimitForScreen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->b:Z

    return v0
.end method

.method public isSaveToAlbum()Z
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->isSaveToAlbum()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->isSaveToTemp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected loadDraftImage(Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getRatioTypes()[I

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_3

    :cond_2
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    :cond_3
    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->firstRatio(I)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageCorp(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v3

    const-string v4, "captureImage_%s.tmp"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getOutputCompress()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getImageDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageResize(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editMultipleFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuResultFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->clearAllSteps()V

    return-void
.end method

.method protected abstract onRefreshStepStates(II)V
.end method

.method protected abstract prepareSave(II)Z
.end method

.method protected abstract prepareSaveDraftImage(Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;)Z
.end method

.method protected final refreshStepStates()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->onRefreshStepStates(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistoriesSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getProcessingDraftImageWrap()Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    move-result-object v1

    invoke-virtual {v1}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getBrushiesSize()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->onRefreshStepStates(II)V

    :goto_0
    return-void
.end method

.method protected saveToAlbum(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 6

    const-string v0, "lsq_save_saveToAlbum"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->showProgress(II)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->setImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->prepareSaveDraftImage(Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getOutputImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->canSaveFile()Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, v4}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getWaterMarkOption()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->addWaterMarkToImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/StringHelper;->isNotBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getSaveToAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/image/AlbumHelper;->getAlbumFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    :cond_4
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getOutputCompress()I

    move-result v5

    invoke-static {v4, v2, v5, v3}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->saveJpgToAblum(Landroid/content/Context;Landroid/graphics/Bitmap;ILjava/io/File;)Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->notifyRefreshAblum(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V

    iget-object v2, p1, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    const-string p1, "lsq_save_saveToTemp_completed"

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubSuccess(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method protected saveToTemp(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 9

    const-string v0, "lsq_save_saveToTemp"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p0, v0, v2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->showProgress(II)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getDraftImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->setImage(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->prepareSaveDraftImage(Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getOutputImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p1, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v3

    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->canSaveFile()Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1, v4}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getWaterMarkOption()Lorg/lasque/tusdk/core/utils/TuSdkWaterMarkOption;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->addWaterMarkToImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v5

    const-string v6, "captureImage_%s.tmp"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->getOutputCompress()I

    move-result v5

    invoke-static {v4, v3, v5}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-direct {v3}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    iget-object v4, p1, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object p1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->images:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    const-string p1, "lsq_save_saveToTemp_completed"

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubSuccess(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setDisableStepsSave(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->c:Z

    return-void
.end method

.method public setDraftImageList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->g:Ljava/util/List;

    return-void
.end method

.method public final setLimitForScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->b:Z

    return-void
.end method

.method protected setLimitHistoryCount(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->f:I

    return-void
.end method

.method public final setLimitSideSize(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->a:I

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

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->d:Ljava/util/List;

    return-void
.end method

.method public setProcessingDraftImageIndex(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->i:I

    return-void
.end method

.method protected setProcessingDraftImageWrap(Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->h:Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;

    return-void
.end method

.method protected showProgress(II)V
    .locals 3

    const-string v0, "lsq_edit_processing_index"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubStatus(Ljava/lang/String;)V

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
