.class public Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->a:F

    iput p2, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->b:F

    iput p3, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->c:F

    iput p4, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->d:F

    iput p5, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->e:F

    iput-boolean p6, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->f:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    iget v0, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->a:F

    iget v1, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->c:F

    iget v2, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->d:F

    iget-object v3, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->g:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget-boolean v4, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->f:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->e:F

    mul-float/2addr v4, p1

    goto :goto_0

    :cond_0
    iget v4, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->e:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v4, v6

    :goto_0
    invoke-virtual {v3, v5, v5, v4}, Landroid/graphics/Camera;->translate(FFF)V

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    invoke-virtual {v3, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float p1, v1

    neg-float v0, v2

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/anim/Rotate3dAnimation;->g:Landroid/graphics/Camera;

    return-void
.end method
