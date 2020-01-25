.class Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getBrushSizePixel()I

    move-result p1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->b(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p1, v3}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :cond_2
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->b(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->b(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, p1, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {p1, v3}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->b(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {v2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->a(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v2, v1

    new-instance v3, Landroid/graphics/PointF;

    aget v4, v2, v0

    aget v5, v2, v1

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object p1

    aget v0, v2, v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object p1

    aget v0, v2, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p2, v3}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;Landroid/graphics/PointF;)V

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->b(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object p2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->drawBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->getCanvasImage()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->d(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-static {p2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->c(Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, v0, v3, v2, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->onSmudgeChanged(Landroid/graphics/PointF;Landroid/graphics/PointF;II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->saveCurrentAsHistory()V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->sendSmudgeActionChangeNotify()V

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView$1;->a:Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->onSmudgeEnd()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->touchBegan()V

    :goto_1
    return v1

    :cond_4
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
