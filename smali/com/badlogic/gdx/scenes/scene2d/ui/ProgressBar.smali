.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.source "ProgressBar.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Disableable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    }
.end annotation


# instance fields
.field private animateDuration:F

.field private animateFromValue:F

.field private animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

.field private animateTime:F

.field disabled:Z

.field private max:F

.field private min:F

.field position:F

.field shiftIgnoresSnap:Z

.field private snapValues:[F

.field private stepSize:F

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

.field private threshold:F

.field private value:F

.field final vertical:Z

.field private visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;


# direct methods
.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->linear:Lcom/badlogic/gdx/math/Interpolation;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    iput-boolean p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefWidth()F

    move-result p1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getPrefHeight()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setSize(FF)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "stepSize must be > 0: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "max must be > min. min,max: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v1, "vertical"

    goto :goto_0

    :cond_0
    const-string v1, "horizontal"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    return-void
.end method

.method public constructor <init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 6

    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p5, p6, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;-><init>(FFFZLcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V

    return-void
.end method

.method private snap(F)F
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget v1, v1, v0

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->threshold:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    aget p1, p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method


# virtual methods
.method public act(F)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->act(F)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_0
    return-void
.end method

.method protected clamp(F)F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_0
    move-object v4, v3

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    if-eqz v2, :cond_2

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_2

    :cond_2
    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobBefore:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_2
    move-object v11, v5

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_3

    :cond_3
    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knobAfter:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getX()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getY()F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getWidth()F

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getHeight()F

    move-result v15

    const/4 v10, 0x0

    if-nez v4, :cond_4

    move/from16 v16, v10

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    move/from16 v16, v5

    :goto_4
    if-nez v4, :cond_5

    move/from16 v17, v10

    goto :goto_5

    :cond_5
    invoke-interface {v4}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v5

    move/from16 v17, v5

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualPercent()F

    move-result v18

    iget v5, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v6, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v7, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v2, v2, p2

    move-object/from16 v9, p1

    invoke-interface {v9, v5, v6, v7, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    const/high16 v19, 0x3f000000    # 0.5f

    if-eqz v2, :cond_d

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    sub-float v2, v14, v2

    mul-float v2, v2, v19

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v7, v12, v2

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    move-object v5, v3

    move-object/from16 v6, p1

    move v8, v13

    move v9, v2

    move v2, v10

    move v10, v15

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v10

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v5

    add-float/2addr v5, v10

    neg-float v5, v5

    sub-float v5, v15, v5

    goto :goto_6

    :cond_6
    move v2, v10

    move v5, v15

    :goto_6
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_9

    if-nez v4, :cond_8

    if-nez v11, :cond_7

    move v6, v2

    goto :goto_7

    :cond_7
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    mul-float v6, v6, v19

    :goto_7
    sub-float/2addr v5, v6

    mul-float v7, v5, v18

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    goto :goto_8

    :cond_8
    mul-float v6, v16, v19

    sub-float v5, v5, v16

    mul-float v7, v5, v18

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v7

    add-float/2addr v5, v7

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    :goto_8
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    move v5, v6

    goto :goto_9

    :cond_9
    move v5, v2

    :goto_9
    if-eqz v11, :cond_b

    if-eqz v3, :cond_a

    move v2, v10

    :cond_a
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v3, v14, v3

    mul-float v3, v3, v19

    float-to-int v3, v3

    int-to-float v3, v3

    add-float v8, v12, v3

    add-float v9, v13, v2

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v10

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    move-object v6, v11

    move-object/from16 v7, p1

    move v11, v2

    invoke-interface/range {v6 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_b
    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    sub-float v2, v14, v2

    mul-float v2, v2, v19

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v7, v12, v2

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v8, v13, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v9

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v10, v15, v2

    move-object v5, v1

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_c
    if-eqz v4, :cond_15

    sub-float v14, v14, v17

    mul-float v14, v14, v19

    float-to-int v1, v14

    int-to-float v1, v1

    add-float v6, v12, v1

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v13, v1

    float-to-int v1, v13

    int-to-float v7, v1

    move-object/from16 v5, p1

    move/from16 v8, v17

    move/from16 v9, v16

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto/16 :goto_e

    :cond_d
    move v2, v10

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v5

    sub-float v5, v15, v5

    mul-float v5, v5, v19

    float-to-int v5, v5

    int-to-float v5, v5

    add-float v8, v13, v5

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v10

    move-object v5, v3

    move-object/from16 v6, p1

    move v7, v12

    move v9, v14

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v10

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v5

    add-float/2addr v5, v10

    sub-float v5, v14, v5

    goto :goto_a

    :cond_e
    move v10, v2

    move v5, v14

    :goto_a
    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_11

    if-nez v4, :cond_10

    if-nez v11, :cond_f

    move v6, v2

    goto :goto_b

    :cond_f
    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    mul-float v6, v6, v19

    :goto_b
    sub-float/2addr v5, v6

    mul-float v7, v5, v18

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    goto :goto_c

    :cond_10
    mul-float v6, v17, v19

    sub-float v5, v5, v17

    mul-float v7, v5, v18

    iput v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v5, v10

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    :goto_c
    iget v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    move v5, v6

    goto :goto_d

    :cond_11
    move v5, v2

    :goto_d
    if-eqz v11, :cond_13

    if-eqz v3, :cond_12

    move v2, v10

    :cond_12
    add-float v8, v12, v2

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    sub-float v2, v15, v2

    mul-float v2, v2, v19

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v9, v13, v2

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v10, v2

    invoke-interface {v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    move-object v6, v11

    move-object/from16 v7, p1

    move v11, v2

    invoke-interface/range {v6 .. v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_13
    if-eqz v1, :cond_14

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v7, v12, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    sub-float v2, v15, v2

    mul-float v2, v2, v19

    float-to-int v2, v2

    int-to-float v2, v2

    add-float v8, v13, v2

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float v9, v14, v2

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v10

    move-object v5, v1

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_14
    if-eqz v4, :cond_15

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    add-float/2addr v12, v1

    float-to-int v1, v12

    int-to-float v6, v1

    sub-float v15, v15, v16

    mul-float v15, v15, v19

    add-float/2addr v13, v15

    float-to-int v1, v13

    int-to-float v7, v1

    move-object/from16 v5, p1

    move/from16 v8, v17

    move/from16 v9, v16

    invoke-interface/range {v4 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_15
    :goto_e
    return-void
.end method

.method protected getKnobPosition()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->position:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    return v0
.end method

.method public getPercent()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    sub-float/2addr v2, v1

    div-float/2addr v0, v2

    return v0
.end method

.method public getPrefHeight()F
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x430c0000    # 140.0f

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    :goto_3
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getPrefWidth()F
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->vertical:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->knob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->disabledBackground:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    :goto_2
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_3
    const/high16 v0, 0x430c0000    # 140.0f

    return v0
.end method

.method public getStepSize()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public getVisualPercent()F
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    return v0
.end method

.method public getVisualValue()F
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    return v0
.end method

.method public setAnimateDuration(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    return-void
.end method

.method public setAnimateInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "animateInterpolation cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->disabled:Z

    return-void
.end method

.method public setRange(FF)V
    .locals 2

    cmpl-float v0, p1, p2

    if-gtz v0, :cond_2

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->min:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->max:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    goto :goto_0

    :cond_0
    cmpl-float p1, v0, p2

    if-lez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->setValue(F)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "min must be <= max"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSnapToValues([FF)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snapValues:[F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->threshold:F

    return-void
.end method

.method public setStepSize(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "steps must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar$ProgressBarStyle;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->invalidateHierarchy()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(F)Z
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->stepSize:F

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->clamp(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->shiftIgnoresSnap:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->snap(F)F

    move-result p1

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->getVisualValue()F

    move-result v1

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/utils/ChangeListener$ChangeEvent;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->value:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateDuration:F

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateFromValue:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->animateTime:F

    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    xor-int/lit8 p1, v2, 0x1

    return p1
.end method

.method public setVisualInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ProgressBar;->visualInterpolation:Lcom/badlogic/gdx/math/Interpolation;

    return-void
.end method
