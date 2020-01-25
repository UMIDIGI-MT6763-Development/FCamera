.class Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraFocusAnimation"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;

.field private b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field private c:Lorg/lasque/tusdk/core/struct/TuSdkSize;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;)V
    .locals 5

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getMaxRangeSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getMinRangeSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getMinCrosshairSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p1

    new-instance v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v4, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget v1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr v3, v1

    iput v3, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v3, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v0, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p1, p1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    sub-int/2addr v0, p1

    iput v0, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    iget-object p2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusCrosshair()Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object p2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;

    invoke-virtual {p2}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getMaxRangeSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iget v1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iget v2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v3, v3, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float p2, p2

    iget-object v2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->c:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget v2, v2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusOutView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->setSize(Landroid/view/View;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView$CameraFocusAnimation;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->getFocusCrosshair()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusRangeView;->setSize(Landroid/view/View;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
