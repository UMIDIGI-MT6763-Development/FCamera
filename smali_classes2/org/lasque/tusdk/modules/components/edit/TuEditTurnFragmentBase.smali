.class public abstract Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuImageResultFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected asyncEditWithResult(Lorg/lasque/tusdk/core/TuSdkResult;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->loadOrginImage(Lorg/lasque/tusdk/core/TuSdkResult;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageRotaing(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p1, Lorg/lasque/tusdk/core/TuSdkResult;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->asyncProcessingIfNeedSave(Lorg/lasque/tusdk/core/TuSdkResult;)V

    return-void
.end method

.method protected changeImageAnimation(Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface$LsqImageChangeType;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->changeImageAnimation(Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface$LsqImageChangeType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getImageView()Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageWrapView()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setInvalidateTargetView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->a:Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getImageWrapView()Landroid/widget/RelativeLayout;
.end method

.method protected handleCompleteButton()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->isInAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/lasque/tusdk/core/TuSdkResult;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/TuSdkResult;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->getImageOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdkResult;->imageOrientation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const-string v1, "lsq_edit_processing"

    invoke-static {v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->hubStatus(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase$1;

    invoke-direct {v2, p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;Lorg/lasque/tusdk/core/TuSdkResult;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editEntryFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sget-object v0, Lorg/lasque/tusdk/modules/components/ComponentErrorType;->TypeInputImageEmpty:Lorg/lasque/tusdk/modules/components/ComponentErrorType;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->notifyError(Lorg/lasque/tusdk/core/TuSdkResult;Lorg/lasque/tusdk/modules/components/ComponentErrorType;)V

    const-string p1, "Can not find input image."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnFragmentBase;->getImageView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkTouchImageViewInterface;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
