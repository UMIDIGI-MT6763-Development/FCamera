.class public abstract Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;
    }
.end annotation


# static fields
.field public static final DROG_RESISTANCE:F = 0.3f

.field public static final FRESH_OFFSET_DISTANCE:F = 0.5f


# instance fields
.field private a:F

.field private b:I

.field private c:F

.field private d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

.field private e:Ljava/util/Calendar;


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

.method private a(F)I
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    float-to-int p1, p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a:F

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->countResistance(FF)F

    move-result v0

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getLastDate()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getLastDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setLastDate(Ljava/util/Calendar;)V

    return-void
.end method

.method private a(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    new-instance v0, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v1

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;-><init>(Landroid/view/View;F)V

    new-instance p1, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/utils/anim/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/anim/HeightAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(Z)V
    .locals 8

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getLoadIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x4f2

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static countResistance(FF)F
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    move p0, p1

    :cond_1
    sub-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public firstStart()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a(Z)V

    sget-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setState(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;)V

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->b:I

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setVisiableHeight(I)V

    return-void
.end method

.method public abstract getHeadWrap()Landroid/widget/RelativeLayout;
.end method

.method public getLastDate()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->e:Ljava/util/Calendar;

    return-object v0
.end method

.method public abstract getLoadIcon()Landroid/widget/ImageView;
.end method

.method public getState()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    return-object v0
.end method

.method public getVisiableHeight()I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public loadView()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/struct/ViewSize;->height:I

    iput v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->b:I

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->c:F

    return-void
.end method

.method public refreshEnded()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a(Z)V

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateHidden:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setState(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setLastDate(Ljava/util/Calendar;)V

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a(I)V

    return-void
.end method

.method public refreshStart()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a(Z)V

    sget-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setState(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;)V

    iget v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->b:I

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a(I)V

    return-void
.end method

.method public setLastDate(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->e:Ljava/util/Calendar;

    return-void
.end method

.method public setState(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    return-void
.end method

.method public setVisiableHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public submitState()Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getVisiableHeight()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    return-object v0

    :cond_1
    int-to-float v0, v0

    iget v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateVisible:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setState(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->refreshStart()V

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    return-object v0
.end method

.method public updateHeight(F)I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->d:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    sget-object v1, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateLoading:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getHeadWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a(F)I

    move-result p1

    int-to-float v0, p1

    iget v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateTriggered:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->StateVisible:Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setState(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setVisiableHeight(I)V

    return p1
.end method

.method public viewDidLoad()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->viewDidLoad()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->a:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setVisiableHeight(I)V

    return-void
.end method
