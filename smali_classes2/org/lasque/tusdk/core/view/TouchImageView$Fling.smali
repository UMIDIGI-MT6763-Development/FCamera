.class Lorg/lasque/tusdk/core/view/TouchImageView$Fling;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Fling"
.end annotation


# instance fields
.field a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

.field b:I

.field c:I

.field final synthetic d:Lorg/lasque/tusdk/core/view/TouchImageView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;II)V
    .locals 11

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->d:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/view/TouchImageView$State;->FLING:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    new-instance v0, Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->r(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;-><init>(Lorg/lasque/tusdk/core/view/TouchImageView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->m(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->s(Lorg/lasque/tusdk/core/view/TouchImageView;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->s(Lorg/lasque/tusdk/core/view/TouchImageView;)[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-int v0, v0

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->s(Lorg/lasque/tusdk/core/view/TouchImageView;)[F

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v10, v1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->j(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->i(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->i(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->j(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    move v6, v1

    move v7, v2

    goto :goto_0

    :cond_0
    move v6, v0

    move v7, v6

    :goto_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->l(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result v1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->k(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->k(Lorg/lasque/tusdk/core/view/TouchImageView;)I

    move-result v1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TouchImageView;->l(Lorg/lasque/tusdk/core/view/TouchImageView;)F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v1, p1

    move v8, v1

    move v9, v2

    goto :goto_1

    :cond_1
    move v8, v10

    move v9, v8

    :goto_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    move v2, v0

    move v3, v10

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v9}, Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;->fling(IIIIIIII)V

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->b:I

    iput v10, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->c:I

    return-void
.end method


# virtual methods
.method public cancelFling()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->d:Lorg/lasque/tusdk/core/view/TouchImageView;

    sget-object v1, Lorg/lasque/tusdk/core/view/TouchImageView$State;->NONE:Lorg/lasque/tusdk/core/view/TouchImageView$State;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->a(Lorg/lasque/tusdk/core/view/TouchImageView;Lorg/lasque/tusdk/core/view/TouchImageView$State;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;->forceFinished(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->d:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->d:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->p(Lorg/lasque/tusdk/core/view/TouchImageView;)Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/lasque/tusdk/core/view/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->a:Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/TouchImageView$CompatScroller;->getCurrY()I

    move-result v1

    iget v2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->b:I

    sub-int v2, v0, v2

    iget v3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->c:I

    sub-int v3, v1, v3

    iput v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->b:I

    iput v1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->c:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->d:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->m(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    int-to-float v1, v2

    int-to-float v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->d:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->n(Lorg/lasque/tusdk/core/view/TouchImageView;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->d:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TouchImageView;->m(Lorg/lasque/tusdk/core/view/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TouchImageView$Fling;->d:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/view/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
