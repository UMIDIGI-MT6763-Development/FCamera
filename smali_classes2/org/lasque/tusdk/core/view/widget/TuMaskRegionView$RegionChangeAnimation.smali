.class Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegionChangeAnimation"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

.field private b:Landroid/graphics/Rect;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;F)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;F)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    sub-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;Landroid/graphics/Rect;)V

    return-void
.end method

.method public startTo(Landroid/graphics/Rect;)V
    .locals 5

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$RegionChangeAnimation;->d:Landroid/graphics/Rect;

    return-void
.end method
