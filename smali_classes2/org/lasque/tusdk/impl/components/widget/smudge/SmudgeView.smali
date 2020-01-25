.class public Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;,
        Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;

.field private b:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/PointF;

.field private h:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

.field private i:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

.field private j:I

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field protected mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x5

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->j:I

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->j:I

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->j:I

    new-instance p1, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;-><init>(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->f:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getBrushSizePixel()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    const/4 v2, -0x1

    invoke-static {v0, v0, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->createOvalImage(III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->f:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic b(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->g:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->g:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->destroy()V

    :cond_0
    return-void
.end method

.method public getActionDelegate()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->b:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;

    return-object v0
.end method

.method public getBrushSize()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->i:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    return-object v0
.end method

.method public getBrushSizePixel()I
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getBrushSize()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->MediumBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->LargeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x48

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->CustomizeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->CustomizeBrush:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;->getCustomizeBrushValue()F

    move-result v0

    const/high16 v1, 0x42900000    # 72.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x18

    :goto_0
    return v0
.end method

.method public getCanvasImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getSmudgeImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDelegate()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;

    return-object v0
.end method

.method public getMaxUndoCount()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->j:I

    return v0
.end method

.method public getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getOriginalImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->smudgeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;

    invoke-direct {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeProcessor;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    return-object v0
.end method

.method protected getRedoCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getRedoCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSmudgeBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getCanvasImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUndoCount()I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getUndoCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadView()V
    .locals 3

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x18

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->a()V

    return-void
.end method

.method protected onSmudgeChanged(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getActionDelegate()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getActionDelegate()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;->onSmudgeChanged(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    :cond_0
    return-void
.end method

.method protected onSmudgeEnd()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getActionDelegate()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getActionDelegate()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;->onSmudgeEnd()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public redo()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getRedoCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getRedoData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->sendSmudgeActionChangeNotify()V

    return-void
.end method

.method protected scaleToFill(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    cmpl-float v0, p3, p2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p2

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    const/4 v0, 0x1

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected sendSmudgeActionChangeNotify()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getDelegate()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getDelegate()Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getUndoCount()I

    move-result v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getRedoCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;->onRefreshStepStatesWithHistories(II)V

    :cond_0
    return-void
.end method

.method public setActionDelegate(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->b:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeActionDelegate;

    return-void
.end method

.method public setBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->h:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->updateBrushSettings()V

    return-void
.end method

.method public setBrushSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->i:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->updateBrushSettings()V

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->a()V

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$SmudgeViewDelegate;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    if-ne v0, v1, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->smudgeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "You are not allowed to use the smudge feature, please see http://tusdk.com"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->scaleToFill(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v1

    iput-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getWidth()I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getMaxUndoCount()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->setMaxUndoCount(I)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getCanvasImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->updateBrushSettings()V

    return-void
.end method

.method public setMaxUndoCount(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->j:I

    return-void
.end method

.method public showOriginalImage(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public undo()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getUndoCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getUndoData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->sendSmudgeActionChangeNotify()V

    return-void
.end method

.method protected updateBrushSettings()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->h:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->getEeaserBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->h:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->h:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->loadBrushData(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->h:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->setBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->i:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->setBrushSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)V

    :cond_2
    return-void
.end method
