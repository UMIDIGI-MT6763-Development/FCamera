.class Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FilmstripLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBackgroundDrawable"
.end annotation


# instance fields
.field private mOffset:I

.field private mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/freeme/camera/FilmstripLayout;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/FilmstripLayout;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060034

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private setAlpha(F)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mOffset:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripLayout;->access$500(Lcom/freeme/camera/FilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mOffset:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripLayout;->access$000(Lcom/freeme/camera/FilmstripLayout;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->setAlpha(F)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->this$0:Lcom/freeme/camera/FilmstripLayout;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/FilmstripLayout$MyBackgroundDrawable;->mOffset:I

    return-void
.end method
