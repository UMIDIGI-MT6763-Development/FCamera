.class public Lcom/freeme/camera/ui/preview/PreviewTextureView;
.super Landroid/view/TextureView;
.source "PreviewTextureView.java"


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.03


# instance fields
.field private mAspectRatio:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/freeme/camera/ui/preview/PreviewTextureView;->mAspectRatio:D

    return-void
.end method

.method private static findFullscreenRatio(Landroid/content/Context;)D
    .locals 5

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-le p0, v1, :cond_0

    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-double v1, p0

    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/graphics/Point;->y:I

    int-to-double v1, p0

    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    :goto_0
    return-wide v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-le p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    if-eqz v0, :cond_2

    move p1, p2

    :cond_2
    iget-wide v2, p0, Lcom/freeme/camera/ui/preview/PreviewTextureView;->mAspectRatio:D

    const-wide/16 v4, 0x0

    cmpl-double p2, v2, v4

    if-lez p2, :cond_6

    invoke-virtual {p0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->findFullscreenRatio(Landroid/content/Context;)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/freeme/camera/ui/preview/PreviewTextureView;->mAspectRatio:D

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    cmpg-double p2, v2, v4

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz p2, :cond_4

    int-to-double v3, v1

    int-to-double v5, p1

    iget-wide v7, p0, Lcom/freeme/camera/ui/preview/PreviewTextureView;->mAspectRatio:D

    mul-double v9, v5, v7

    cmpg-double p2, v3, v9

    if-gez p2, :cond_3

    mul-double/2addr v5, v7

    double-to-float p2, v5

    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 v1, p2, 0x2

    goto :goto_2

    :cond_3
    div-double/2addr v3, v7

    double-to-float p1, v3

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_4
    int-to-double v3, v1

    int-to-double v5, p1

    iget-wide v7, p0, Lcom/freeme/camera/ui/preview/PreviewTextureView;->mAspectRatio:D

    mul-double v9, v5, v7

    cmpl-double p2, v3, v9

    if-lez p2, :cond_5

    mul-double/2addr v5, v7

    double-to-float p2, v5

    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 v1, p2, 0x2

    goto :goto_2

    :cond_5
    div-double/2addr v3, v7

    double-to-float p1, v3

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    move v11, v1

    move v1, p1

    move p1, v11

    :cond_7
    invoke-virtual {p0, p1, v1}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAspectRatio(D)V
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/ui/preview/PreviewTextureView;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/freeme/camera/ui/preview/PreviewTextureView;->mAspectRatio:D

    invoke-virtual {p0}, Lcom/freeme/camera/ui/preview/PreviewTextureView;->requestLayout()V

    :cond_0
    return-void
.end method
