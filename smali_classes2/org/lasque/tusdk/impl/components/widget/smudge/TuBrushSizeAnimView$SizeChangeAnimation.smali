.class Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SizeChangeAnimation"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    iget v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->b:I

    iget v1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;I)V

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->b(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->cancel()V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public start(II)V
    .locals 0

    iput p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->b:I

    sub-int/2addr p2, p1

    iput p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/TuBrushSizeAnimView$SizeChangeAnimation;->c:I

    return-void
.end method
