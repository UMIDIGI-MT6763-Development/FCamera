.class public abstract Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(I)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget v1, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->textResId:I

    if-eqz v1, :cond_2

    iget p1, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->textResId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->showView(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->showView(Landroid/view/View;Z)V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a(ZZ)V

    return-void
.end method

.method private c(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a(ZZ)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getImageSucceedResId()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a(I)V

    return-void
.end method

.method private d(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a(ZZ)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getImageFailedResId()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a(I)V

    return-void
.end method

.method private e(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a(ZZ)V

    iget p1, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->imageResId:I

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a(I)V

    return-void
.end method


# virtual methods
.method public abstract getHubView()Landroid/widget/LinearLayout;
.end method

.method public abstract getImageFailedResId()I
.end method

.method public abstract getImageSucceedResId()I
.end method

.method public abstract getImageView()Landroid/widget/ImageView;
.end method

.method public abstract getProgressBar()Landroid/widget/ProgressBar;
.end method

.method public abstract getTitleView()Landroid/widget/TextView;
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;->onDismissAnimEnded()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public runViewShowableAnim(Z)V
    .locals 1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a:Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getHubView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/16 v0, 0x104

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->scaleAlphaAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getHubView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setArgs(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    iget-object v0, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->showType:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->TypeDefault:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    iput-object v0, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->showType:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$1;->a:[I

    iget-object v1, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->showType:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->b(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->e(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->d(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->c(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;

    return-void
.end method

.method public viewWillDestory()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->viewWillDestory()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;

    return-void
.end method
