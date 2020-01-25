.class public abstract Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

.field private b:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

.field private c:[Landroid/graphics/PointF;

.field private d:I

.field private e:F

.field private f:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->f:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->f:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

    return-object p0
.end method

.method private a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "f8a6ed3ec939d6941c94a272aff1791b"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->internalTextures:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;)Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    return-object p1
.end method

.method private a(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;)[Landroid/graphics/PointF;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/PointF;

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;->items:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;

    iget-object v2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object v2, v2, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->eye_left:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v2, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget v2, v2, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v0, v1

    iget-object v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->eye_right:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iget-object v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->nose:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iget-object v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->mouth_left:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->mouth_right:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p1, 0x4

    aput-object v1, v0, p1

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;)[Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;)[Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;[Landroid/graphics/PointF;)[Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->c:[Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic b(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->c:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic d(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->b:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    return-object p0
.end method

.method static synthetic e(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->requestRender()V

    return-void
.end method


# virtual methods
.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 5

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitScale()F

    move-result v0

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->filterWrap:Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/lasque/tusdk/core/face/FaceAligment;

    invoke-direct {v2}, Lorg/lasque/tusdk/core/face/FaceAligment;-><init>()V

    iget-object v3, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->c:[Landroid/graphics/PointF;

    iput-object v3, v2, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/lasque/tusdk/core/face/FaceAligment;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    :cond_0
    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method protected asyncLoadImageCompleted(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->asyncLoadImageCompleted(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->startImageMarkFaceAnalysis(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected abstract buildActionButton(Ljava/lang/String;I)Landroid/view/View;
.end method

.method protected buildActionButtons()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->buildActionButton(Ljava/lang/String;I)Landroid/view/View;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public getCurrentAction()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    return v0
.end method

.method protected handleAction(Ljava/lang/Integer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->getConfigView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;

    iget v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->readParameterValue(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)F

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->e:F

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->getConfigView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    if-gt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgKeys()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->getConfigView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;->setParams(Ljava/util/List;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->setConfigViewShowState(Z)V

    return-void
.end method

.method protected handleConfigCancel()V
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->getFilterArg(I)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->e:F

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->requestRender()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->setConfigViewShowState(Z)V

    return-void
.end method

.method protected handleConfigCompeleteButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->setConfigViewShowState(Z)V

    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editSkinFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->loadView(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->buildActionButtons()V

    return-void
.end method

.method protected abstract onFaceDetectionResult(Z)V
.end method

.method public onParameterConfigDataChanged(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;IF)V
    .locals 0

    iget p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->onParameterConfigDataChanged(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;IF)V

    return-void
.end method

.method public onParameterConfigRest(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)V
    .locals 0

    iget p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->onParameterConfigRest(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)V

    return-void
.end method

.method public readParameterValue(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)F
    .locals 0

    iget p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d:I

    invoke-super {p0, p1, p2}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->readParameterValue(Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;I)F

    move-result p1

    return p1
.end method

.method protected abstract setConfigViewShowState(Z)V
.end method

.method protected startImageMarkFaceAnalysis(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->reset()V

    :goto_0
    const-string v0, "lsq_edit_processing"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$2;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$2;-><init>(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method
