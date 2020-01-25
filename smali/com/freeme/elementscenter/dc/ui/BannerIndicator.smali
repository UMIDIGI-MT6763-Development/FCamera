.class public Lcom/freeme/elementscenter/dc/ui/BannerIndicator;
.super Landroid/widget/LinearLayout;
.source "BannerIndicator.java"


# static fields
.field private static final VIEW_MARGIN:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/freeme/elementscenter/R$drawable;->ic_launcher_page_point_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/freeme/elementscenter/R$drawable;->ic_launcher_page_point_focused:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public generateIndicators()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->removeAllViews()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mCount:I

    if-ge v0, v1, :cond_1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget v3, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mCount:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onScrollFinish(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->updateIndicator(I)V

    return-void
.end method

.method public setCount(II)V
    .locals 0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mCount:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->generateIndicators()V

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->updateIndicator(I)V

    return-void
.end method

.method public updateIndicator(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mCount:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateIndicators(II)V
    .locals 1

    iget v0, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mCount:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->mCount:I

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->generateIndicators()V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/BannerIndicator;->updateIndicator(I)V

    return-void
.end method
