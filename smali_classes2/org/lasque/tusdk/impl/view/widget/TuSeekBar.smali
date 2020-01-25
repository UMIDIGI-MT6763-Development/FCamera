.class public Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:F

.field private f:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;

.field private g:I

.field private h:I

.field private i:F

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->i:F

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    const p2, 0x3f99999a    # 1.2f

    iput p2, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->i:F

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    const p2, 0x3f99999a    # 1.2f

    iput p2, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->i:F

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    return-void
.end method

.method private a()V
    .locals 7

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getDragView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/struct/ViewSize;->create(Landroid/view/View;)Lorg/lasque/tusdk/core/struct/ViewSize;

    move-result-object v0

    iget v0, v0, Lorg/lasque/tusdk/core/struct/ViewSize;->width:I

    iput v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->g:I

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->g:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float v0, v0

    iget v1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->i:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->h:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->h:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->j:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getBottomView()Landroid/view/View;

    move-result-object v2

    iget v5, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->h:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->setMargin(Landroid/view/View;IIII)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getTopView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->h:I

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->setMarginLeft(Landroid/view/View;I)V

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->e:F

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->setProgress(F)V

    return-void
.end method

.method private a(F)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->h:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->j:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->e:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->setProgress(F)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->f:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getProgress()F

    move-result v0

    invoke-interface {p1, p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;->onTuSeekBarChanged(Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;F)V

    :cond_1
    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_seekbar"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getBottomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->b:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_seekBottomView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->b:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->b:Landroid/view/View;

    return-object v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->f:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;

    return-object v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_seekDrag"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->d:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->d:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->e:F

    return v0
.end method

.method public getTopView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->c:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "lsq_seekTopView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->c:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->c:Landroid/view/View;

    return-object v0
.end method

.method protected onLayouted()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->onLayouted()V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getDragView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getDragView()Landroid/view/View;

    move-result-object p1

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a(F)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a(F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getDragView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->i:F

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getDragView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->i:F

    goto :goto_0

    :goto_1
    return v1
.end method

.method public setBottomViewBackgroundResourceId(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->f:Lorg/lasque/tusdk/impl/view/widget/TuSeekBar$TuSeekBarDelegate;

    return-void
.end method

.method public setDragViewBackgroundResourceId(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getDragView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getDragView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->a:Z

    return-void
.end method

.method public setProgress(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move p1, v2

    :cond_1
    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->e:F

    iget p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->j:I

    int-to-float p1, p1

    iget v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->e:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getDragView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->g:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iget v2, p0, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->h:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->setMarginLeft(Landroid/view/View;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->getTopView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuSeekBar;->setWidth(Landroid/view/View;I)V

    return-void
.end method
