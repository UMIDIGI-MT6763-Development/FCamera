.class public Lcom/freeme/camera/feature/setting/focus/FocusView;
.super Lcom/freeme/camera/common/widget/RotateLayout;
.source "FocusView.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/focus/IFocusView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/focus/FocusView$Disappear;,
        Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;,
        Lcom/freeme/camera/feature/setting/focus/FocusView$EndAction;
    }
.end annotation


# static fields
.field private static final DISAPPEAR_TIMEOUT:I = 0xc8

.field private static final SCALING_DOWN_STAY_TIME:I = 0x7d0

.field private static final SCALING_DOWN_TIME:I = 0xc8

.field private static final SCALING_UP_TIME:I = 0x3e8

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mDisappear:Ljava/lang/Runnable;

.field private mEndAction:Ljava/lang/Runnable;

.field private mExpandView:Landroid/widget/RelativeLayout;

.field private mFocusRing:Landroid/widget/ImageView;

.field private mFocusViewX:I

.field private mFocusViewY:I

.field private mIsExpandViewRightOfFocusRing:Z

.field private mPreviewRect:Landroid/graphics/RectF;

.field private mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/focus/FocusView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/widget/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/focus/FocusView$Disappear;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/setting/focus/FocusView$Disappear;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusView;Lcom/freeme/camera/feature/setting/focus/FocusView$1;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mDisappear:Ljava/lang/Runnable;

    new-instance p1, Lcom/freeme/camera/feature/setting/focus/FocusView$EndAction;

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/setting/focus/FocusView$EndAction;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusView;Lcom/freeme/camera/feature/setting/focus/FocusView$1;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mEndAction:Ljava/lang/Runnable;

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_IDLE:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mPreviewRect:Landroid/graphics/RectF;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mIsExpandViewRightOfFocusRing:Z

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/focus/FocusView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mDisappear:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/focus/FocusView;)Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    return-object p0
.end method

.method private isExpandViewOutOfDisplay()Z
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mPreviewRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mPreviewRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mPreviewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mPreviewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getOrientation()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    const/16 v1, 0x5a

    if-eq v4, v1, :cond_4

    const/16 v1, 0xb4

    if-eq v4, v1, :cond_2

    const/16 v0, 0x10e

    if-eq v4, v0, :cond_0

    return v6

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusViewY:I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    if-le v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    return v5

    :cond_2
    iget v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusViewX:I

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    return v5

    :cond_4
    iget v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusViewY:I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    if-ge v0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v5, v6

    :goto_2
    return v5

    :cond_6
    iget v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusViewX:I

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    if-le v0, v1, :cond_7

    goto :goto_3

    :cond_7
    move v5, v6

    :goto_3
    return v5
.end method


# virtual methods
.method public centerFocusLocation()V
    .locals 0

    return-void
.end method

.method protected clearFocusUi()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setVisibility(I)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_IDLE:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setFocusState(Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/widget/RotateLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected highlightFocusView()V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public isActiveFocusRunning()Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isActiveFocusRunning] mState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_ACTIVE_FOCUSING:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPassiveFocusRunning()Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isPassiveFocusRunning] mState =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_PASSIVE_FOCUSING:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected lowlightFocusView()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusView;Lcom/freeme/camera/feature/setting/focus/FocusView$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/freeme/camera/common/widget/RotateLayout;->onFinishInflate()V

    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    const v0, 0x7f0900b3

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/freeme/camera/common/widget/RotateLayout;->onLayout(ZIIII)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->isExpandViewOutOfDisplay()Z

    move-result p2

    const/16 p3, 0xf

    const p4, 0x7f0900ce

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mIsExpandViewRightOfFocusRing:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->postInvalidate()V

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mIsExpandViewRightOfFocusRing:Z

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[onLayout] set ExpandView to left"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mIsExpandViewRightOfFocusRing:Z

    if-nez p2, :cond_2

    sget-object p2, Lcom/freeme/camera/feature/setting/focus/FocusView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p5, "[onLayout] set ExpandView to right"

    invoke-static {p2, p5}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->postInvalidate()V

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mIsExpandViewRightOfFocusRing:Z

    return-void

    :cond_2
    return-void
.end method

.method public setFocusLocation(FF)V
    .locals 0

    float-to-int p1, p1

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusViewX:I

    float-to-int p1, p2

    iput p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusViewY:I

    return-void
.end method

.method protected setFocusState(Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    return-void
.end method

.method protected setPreviewRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mPreviewRect:Landroid/graphics/RectF;

    return-void
.end method

.method public startActiveFocus()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_IDLE:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "touch focus"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080206

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_ACTIVE_FOCUSING:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setFocusState(Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startActiveFocus] mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",getHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public startPassiveFocus()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_IDLE:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "continue focus"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mExpandView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_PASSIVE_FOCUSING:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->setFocusState(Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPassiveFocus] mState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",getHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopFocusAnimations()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->isPassiveFocusRunning()Z

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080170

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->isActiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_ACTIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusView;Lcom/freeme/camera/feature/setting/focus/FocusView$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stopFocusAnimationsByState(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->isPassiveFocusRunning()Z

    move-result v0

    const-wide/16 v1, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const v1, 0x7f080170

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->isActiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_ACTIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mState:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusView$ActiveFocusEndAction;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusView;Lcom/freeme/camera/feature/setting/focus/FocusView$1;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusView;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_FOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const v1, 0x7f080206

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusView;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_0
    return-void
.end method
