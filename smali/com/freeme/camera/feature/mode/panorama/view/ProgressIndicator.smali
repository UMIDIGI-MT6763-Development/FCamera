.class public Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;
.super Ljava/lang/Object;
.source "ProgressIndicator.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sIndicatorMarginLong:I

.field private static sIndicatorMarginShort:I


# instance fields
.field public mBlockNumber:I

.field private mBlockPadding:I

.field public mProgressBars:Landroid/widget/ImageView;

.field public mProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x0

    sput v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginLong:I

    sput v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginShort:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockPadding:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockNumber:I

    const v1, 0x7f09016c

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "mProgressView is null,return!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090169

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockPadding:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockNumber:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockPadding:I

    const v1, 0x7f09016c

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f090169

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    iput p2, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockNumber:I

    new-array v1, p2, [I

    invoke-static {p3, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockPadding:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockPadding:I

    :goto_0
    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockNumber:I

    if-ge v0, v2, :cond_0

    aget v2, p3, v0

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    new-instance p3, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mBlockPadding:I

    invoke-direct {p3, p1, p2, v1, v0}, Lcom/freeme/camera/feature/mode/panorama/view/ProgressBarDrawable;-><init>(Landroid/content/Context;Landroid/view/View;[II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->getIndicatorMargin()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->requestLayout()V

    return-void
.end method

.method private getIndicatorMargin()V
    .locals 3

    sget v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginLong:I

    if-nez v0, :cond_0

    sget v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginShort:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginLong:I

    const v1, 0x7f070125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginShort:I

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getIndicatorMargin]sIndicatorMarginLong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginLong:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sIndicatorMarginShort = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginShort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private requestLayout()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sget v5, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->sIndicatorMarginLong:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method public setProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressBars:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/view/ProgressIndicator;->mProgressView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
