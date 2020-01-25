.class public Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

# interfaces
.implements Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;
    }
.end annotation


# static fields
.field public static final FocusRangeScale:F = 0.6f


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private g:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->i:Landroid/os/Handler;

    new-instance p1, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->i:Landroid/os/Handler;

    new-instance p1, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->i:Landroid/os/Handler;

    new-instance p1, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$1;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->clear(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusCrosshair()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->c:I

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->setDisplayColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->showViewIn(Z)V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method private b(Landroid/graphics/PointF;)V
    .locals 6

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getMaxRangeSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget v5, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget v2, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v4, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    :cond_1
    :goto_0
    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget v4, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget p1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    :cond_3
    :goto_1
    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, v2}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->setMargin(IIII)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusOutView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->setSize(Landroid/view/View;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusCrosshair()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->setSize(Landroid/view/View;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_impl_component_camera_focus_range_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getFailedColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->e:I

    return v0
.end method

.method public getFocusCrosshair()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_crosshair"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->b:Landroid/view/View;

    return-object v0
.end method

.method public getFocusOutView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->a:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_range_wrap"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->a:Landroid/view/View;

    return-object v0
.end method

.method public getMaxRangeSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getMinCrosshairSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public getMinCrosshairSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusCrosshair()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public getMinRangeSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->g:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getMaxRangeSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-direct {v1, v2, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    iput-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->g:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->g:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0
.end method

.method public getNormalColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->c:I

    return v0
.end method

.method public getSucceedColor()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->d:I

    return v0
.end method

.method protected initView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->initView()V

    const-string v0, "lsq_focus_normal"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->c:I

    const-string v0, "lsq_focus_succeed"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->d:I

    const-string v0, "lsq_focus_failed"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->e:I

    return-void
.end method

.method public setDisplayColor(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusOutView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ColorUtils;->setBackgroudImageColor(Landroid/view/View;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusCrosshair()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ColorUtils;->setBackgroudImageColor(Landroid/view/View;I)V

    return-void
.end method

.method public setFailedColor(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->e:I

    return-void
.end method

.method public setFoucsState(Z)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->d:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->e:I

    :goto_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->setDisplayColor(I)V

    return-void
.end method

.method public setMaxRangeSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->f:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method

.method public setMinCrosshairSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->h:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method

.method public setMinRangeSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->g:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->c:I

    return-void
.end method

.method public setPosition(Landroid/graphics/PointF;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->a(Landroid/graphics/PointF;)V

    new-instance p1, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;-><init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setSucceedColor(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->d:I

    return-void
.end method
