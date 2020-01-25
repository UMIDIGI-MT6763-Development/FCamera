.class public abstract Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;

# interfaces
.implements Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->isShowResultPreview()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getCanvasImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method public abstract getSizeAnimView()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;
.end method

.method public abstract getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;
.end method

.method protected handleBackButton()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->navigatorBarBackAction(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    return-void
.end method

.method protected handleCompleteButton()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->handleBackButton()V

    return-void

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected handleOrigianlButtonDown()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->showOriginalImage(Z)V

    :cond_0
    return-void
.end method

.method protected handleOrigianlButtonUp()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->showOriginalImage(Z)V

    :cond_0
    return-void
.end method

.method protected handleRedoButton()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->redo()V

    :cond_0
    return-void
.end method

.method protected handleUndoButton()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->undo()V

    :cond_0
    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editSmudgeFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSizeAnimView()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSizeAnimView()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->showView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;->onDestroyView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->destroy()V

    :cond_0
    return-void
.end method

.method public onRefreshStepStatesWithHistories(II)V
    .locals 0

    return-void
.end method

.method public selectBrushCode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Eraser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getEeaserBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSmudgeView()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->setBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected startSizeAnimation(II)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSizeAnimView()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->changeRadius(II)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->getSizeAnimView()Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/modules/components/smudge/TuEditSmudgeFragmentBase;->showView(Landroid/view/View;Z)V

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
