.class public Lorg/lasque/tusdk/core/utils/anim/RectFEvaluator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p3, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    iget v5, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, p2

    mul-float/2addr p3, p1

    add-float/2addr v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroid/graphics/RectF;

    check-cast p3, Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/utils/anim/RectFEvaluator;->evaluate(FLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method
