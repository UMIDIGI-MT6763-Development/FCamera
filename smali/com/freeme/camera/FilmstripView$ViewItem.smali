.class Lcom/freeme/camera/FilmstripView$ViewItem;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewItem"
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mData:Lcom/freeme/camera/filmstrip/ImageData;

.field private mDataId:I

.field private mLeftPosition:I

.field private mMaximumBitmapRequested:Z

.field private mTranslationXAnimator:Landroid/animation/ValueAnimator;

.field private mTranslationYAnimator:Landroid/animation/ValueAnimator;

.field private final mView:Landroid/view/View;

.field private final mViewArea:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/freeme/camera/FilmstripView;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/FilmstripView;ILandroid/view/View;Lcom/freeme/camera/filmstrip/ImageData;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setPivotY(F)V

    iput p2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mDataId:I

    iput-object p4, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mData:Lcom/freeme/camera/filmstrip/ImageData;

    iput-object p3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mMaximumBitmapRequested:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mLeftPosition:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/FilmstripView$ViewItem;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    return-object v0
.end method

.method private layoutAt(II)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V
    .locals 1

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p4, 0x2

    new-array p4, p4, [F

    const/4 p5, 0x0

    aput p2, p4, p5

    const/4 p2, 0x1

    aput p3, p4, p2

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public addViewToHierarchy()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/FilmstripView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mData:Lcom/freeme/camera/filmstrip/ImageData;

    invoke-interface {v0}, Lcom/freeme/camera/filmstrip/ImageData;->prepare()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/FilmstripView;->addView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationY(F)V

    return-void
.end method

.method public animateAlpha(FJLandroid/animation/TimeInterpolator;)V
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/freeme/camera/FilmstripView$ViewItem$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/FilmstripView$ViewItem$3;-><init>(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getAlpha()F

    move-result v4

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/freeme/camera/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public animateTranslationX(FJLandroid/animation/TimeInterpolator;)V
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/freeme/camera/FilmstripView$ViewItem$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/FilmstripView$ViewItem$1;-><init>(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationX()F

    move-result v4

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/freeme/camera/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public animateTranslationY(FJLandroid/animation/TimeInterpolator;)V
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/freeme/camera/FilmstripView$ViewItem$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/FilmstripView$ViewItem$2;-><init>(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationY()F

    move-result v4

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/freeme/camera/FilmstripView$ViewItem;->runAnimation(Landroid/animation/ValueAnimator;FFJLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public areaContains(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public bringViewToFront()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/FilmstripView;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public copyAttributes(Lcom/freeme/camera/FilmstripView$ViewItem;)V
    .locals 2

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setLeftPosition(I)V

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    iget-object v0, p1, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/freeme/camera/FilmstripView$ViewItem$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/FilmstripView$ViewItem$4;-><init>(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationY(F)V

    iget-object v0, p1, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationYAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/freeme/camera/FilmstripView$ViewItem$5;

    invoke-direct {v1, p0}, Lcom/freeme/camera/FilmstripView$ViewItem$5;-><init>(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->getAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setAlpha(F)V

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/freeme/camera/FilmstripView$ViewItem$6;

    invoke-direct {v0, p0}, Lcom/freeme/camera/FilmstripView$ViewItem$6;-><init>(Lcom/freeme/camera/FilmstripView$ViewItem;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getCenterX()I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mLeftPosition:I

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDrawAreaLeft()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mDataId:I

    return v0
.end method

.method public getLeftPosition()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mLeftPosition:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTranslationY()F
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getViewRect()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public isMaximumBitmapRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mMaximumBitmapRequested:Z

    return v0
.end method

.method public layoutWithTranslationX(Landroid/graphics/Rect;IF)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mTranslationXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mLeftPosition:I

    sub-int/2addr v2, p2

    int-to-float p2, v2

    add-float/2addr p2, v0

    mul-float/2addr p2, p3

    add-float/2addr v1, p2

    float-to-int p2, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p2, p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->layoutAt(II)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public measure(II)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method postScale(FFFII)V
    .locals 10

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getX()F

    move-result v2

    sub-float/2addr p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, p3, v2

    mul-float/2addr p1, v2

    sub-float v4, v0, p1

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    mul-float/2addr p2, v2

    sub-float v5, v1, p2

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p1

    mul-float v6, p1, p3

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float v7, p1, p3

    move-object v3, p0

    move v8, p4

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/freeme/camera/FilmstripView$ViewItem;->updateTransform(FFFFII)V

    return-void
.end method

.method public removeViewFromHierarchy(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mData:Lcom/freeme/camera/filmstrip/ImageData;

    invoke-interface {p1}, Lcom/freeme/camera/filmstrip/ImageData;->getViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/freeme/camera/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/FilmstripView;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mData:Lcom/freeme/camera/filmstrip/ImageData;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/freeme/camera/filmstrip/ImageData;->recycle(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    iget v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mDataId:I

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/FilmstripView;->access$200(Lcom/freeme/camera/FilmstripView;Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method resetTransform()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public resizeView(Landroid/content/Context;II)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$100(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/DataAdapter;

    move-result-object v1

    iget v3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mDataId:I

    iget-object v4, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/freeme/camera/filmstrip/DataAdapter;->resizeView(Landroid/content/Context;ILandroid/view/View;II)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mDataId:I

    return-void
.end method

.method public setLeftPosition(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mLeftPosition:I

    return-void
.end method

.method public setMaximumBitmapRequested()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mMaximumBitmapRequested:Z

    return-void
.end method

.method public setTranslationX(F)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mDataId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\t left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mLeftPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\t viewArea = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mViewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n\t centerX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\t view MeasuredSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t view Size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\t view scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translateXScaledBy(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/freeme/camera/FilmstripView$ViewItem;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/freeme/camera/FilmstripView$ViewItem;->setTranslationX(F)V

    return-void
.end method

.method updateTransform(FFFFII)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    add-float/2addr v2, p2

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, p5, p6}, Lcom/freeme/camera/ui/ZoomView;->adjustToFitInBounds(Landroid/graphics/RectF;II)Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p2, p4}, Landroid/view/View;->setScaleY(F)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-object p3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$ViewItem;->mView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
