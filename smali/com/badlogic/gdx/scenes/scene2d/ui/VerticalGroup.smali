.class public Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "VerticalGroup.java"


# instance fields
.field private align:I

.field private fill:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private prefHeight:F

.field private prefWidth:F

.field private reverse:Z

.field private round:Z

.field private sizeInvalid:Z

.field private spacing:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-void
.end method

.method private computeSize()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    iget v2, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->spacing:F

    add-int/lit8 v5, v2, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v4, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v3

    add-float/2addr v4, v3

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    add-float/2addr v4, v3

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    :cond_2
    return-void
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return-object p0
.end method

.method public fill(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return-object p0
.end method

.method public getAlign()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return v0
.end method

.method public getFill()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    return v0
.end method

.method public getPadLeft()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    return v0
.end method

.method public getPadRight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return v0
.end method

.method public getPadTop()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    return v0
.end method

.method public getReverse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    return v0
.end method

.method public getSpace()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->spacing:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    return-void
.end method

.method public layout()V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->spacing:F

    iget v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    iget-boolean v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    iget-boolean v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v6

    sub-float/2addr v6, v2

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    sub-float/2addr v6, v7

    if-eqz v4, :cond_0

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v7

    iget v8, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    sub-float/2addr v7, v8

    add-float/2addr v7, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v8

    const/4 v9, 0x0

    iget v10, v8, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_1
    if-ge v9, v10, :cond_a

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v12, v11, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    move-object v12, v11

    check-cast v12, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    cmpl-float v15, v14, v13

    if-lez v15, :cond_1

    mul-float/2addr v14, v6

    goto :goto_2

    :cond_1
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v14

    invoke-static {v14, v6}, Ljava/lang/Math;->min(FF)F

    move-result v14

    :goto_2
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v15

    cmpl-float v13, v15, v13

    if-lez v13, :cond_2

    cmpl-float v13, v14, v15

    if-lez v13, :cond_2

    goto :goto_3

    :cond_2
    move v15, v14

    :goto_3
    invoke-interface {v12}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v12

    goto :goto_4

    :cond_3
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v15

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v12

    iget v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    cmpl-float v13, v14, v13

    if-lez v13, :cond_4

    mul-float/2addr v15, v14

    :cond_4
    :goto_4
    and-int/lit8 v13, v3, 0x10

    if-eqz v13, :cond_5

    sub-float v13, v6, v15

    add-float/2addr v13, v2

    goto :goto_5

    :cond_5
    and-int/lit8 v13, v3, 0x8

    if-nez v13, :cond_6

    sub-float v13, v6, v15

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v13, v2

    goto :goto_5

    :cond_6
    move v13, v2

    :goto_5
    if-nez v4, :cond_7

    add-float v14, v12, v1

    sub-float/2addr v7, v14

    :cond_7
    if-eqz v5, :cond_8

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v11, v13, v14, v15, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_6

    :cond_8
    invoke-virtual {v11, v13, v7, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    :goto_6
    if-eqz v4, :cond_9

    add-float/2addr v12, v1

    add-float/2addr v7, v12

    :cond_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    return-object p0
.end method

.method public reverse()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;

    return-object p0
.end method

.method public reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    return-object p0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return-object p0
.end method

.method public setRound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    return-void
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->spacing:F

    return-object p0
.end method
