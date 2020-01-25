.class public Lcom/freeme/camera/ui/ZoomView;
.super Landroid/widget/ImageView;
.source "ZoomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;
    }
.end annotation


# instance fields
.field private mOrientation:I

.field private mPartialDecodingTask:Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mUri:Landroid/net/Uri;

.field private mViewportHeight:I

.field private mViewportWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/ui/ZoomView;->mViewportWidth:I

    iput p1, p0, Lcom/freeme/camera/ui/ZoomView;->mViewportHeight:I

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ZoomView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Lcom/freeme/camera/ui/ZoomView$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/ui/ZoomView$1;-><init>(Lcom/freeme/camera/ui/ZoomView;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ZoomView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/ZoomView;)Landroid/graphics/BitmapRegionDecoder;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/ZoomView;)Ljava/io/InputStream;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/ZoomView;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/ZoomView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/ZoomView;->mOrientation:I

    return p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/ZoomView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/ZoomView;->mViewportWidth:I

    return p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/ui/ZoomView;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/ui/ZoomView;->mViewportWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/ZoomView;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/ZoomView;->mViewportHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/ui/ZoomView;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/ui/ZoomView;->mViewportHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/ZoomView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/ZoomView;->getSampleFactor(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/ui/ZoomView;Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;)Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/ui/ZoomView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/ZoomView;->showPartiallyDecodedImage(Z)V

    return-void
.end method

.method public static adjustToFitInBounds(Landroid/graphics/RectF;II)Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p0

    int-to-float v1, p1

    cmpg-float p0, p0, v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-gez p0, :cond_0

    div-int/lit8 p1, p1, 0x2

    int-to-float p0, p1

    iget p1, v0, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, v1

    div-float/2addr p1, v2

    sub-float/2addr p0, p1

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_1

    iget p0, v0, Landroid/graphics/RectF;->left:F

    neg-float p0, p0

    goto :goto_0

    :cond_1
    iget p0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p0, v1

    if-gez p0, :cond_2

    iget p0, v0, Landroid/graphics/RectF;->right:F

    sub-float p0, v1, p0

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p1

    int-to-float v1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    iget p2, v0, Landroid/graphics/RectF;->top:F

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p2, v1

    div-float/2addr p2, v2

    sub-float/2addr p1, p2

    goto :goto_1

    :cond_3
    iget p1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    iget p1, v0, Landroid/graphics/RectF;->top:F

    neg-float p1, p1

    goto :goto_1

    :cond_4
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_5

    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float p1, v1, p1

    goto :goto_1

    :cond_5
    move p1, v3

    :goto_1
    cmpl-float p2, p0, v3

    if-nez p2, :cond_6

    cmpl-float p2, p1, v3

    if-eqz p2, :cond_7

    :cond_6
    invoke-virtual {v0, p0, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_7
    return-object v0
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/freeme/camera/ui/ZoomView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getSampleFactor(II)I
    .locals 3

    iget v0, p0, Lcom/freeme/camera/ui/ZoomView;->mViewportWidth:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iget p1, p0, Lcom/freeme/camera/ui/ZoomView;->mViewportHeight:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    float-to-int p1, p2

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    shl-int v2, p2, v1

    if-le v2, p1, :cond_1

    shl-int p1, p2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private showPartiallyDecodedImage(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ZoomView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/freeme/camera/ui/ZoomView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private startPartialDecodingTask(Landroid/graphics/RectF;)V
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    new-instance v0, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;-><init>(Lcom/freeme/camera/ui/ZoomView;Lcom/freeme/camera/ui/ZoomView$1;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cancelPartialDecodingTask()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;->cancel(Z)Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/freeme/camera/ui/ZoomView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public loadBitmap(Landroid/net/Uri;ILandroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/ui/ZoomView;->resetDecoder()V

    iput-object p1, p0, Lcom/freeme/camera/ui/ZoomView;->mUri:Landroid/net/Uri;

    iput p2, p0, Lcom/freeme/camera/ui/ZoomView;->mOrientation:I

    :cond_0
    invoke-direct {p0, p3}, Lcom/freeme/camera/ui/ZoomView;->startPartialDecodingTask(Landroid/graphics/RectF;)V

    return-void
.end method

.method public resetDecoder()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/ui/ZoomView;->cancelPartialDecodingTask()V

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mPartialDecodingTask:Lcom/freeme/camera/ui/ZoomView$DecodePartialBitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/ZoomView;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    :cond_1
    return-void
.end method
