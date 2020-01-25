.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.source "TiledDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v15, v0

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v7, v0

    div-float v0, p4, v15

    float-to-int v14, v0

    div-float v0, p5, v7

    float-to-int v8, v0

    int-to-float v0, v14

    mul-float/2addr v0, v15

    sub-float v9, p4, v0

    int-to-float v0, v8

    mul-float/2addr v0, v7

    sub-float v26, p5, v0

    const/4 v10, 0x0

    move/from16 v12, p2

    move/from16 v0, p3

    move v11, v10

    :goto_0
    if-ge v11, v14, :cond_1

    move/from16 v16, p3

    move v13, v10

    :goto_1
    if-ge v13, v8, :cond_0

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v12

    move/from16 v3, v16

    move v4, v15

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    add-float v16, v16, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-float/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v16

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v2

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v9, v4

    if-lez v5, :cond_4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v9, v0

    add-float/2addr v0, v2

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v5

    move/from16 v13, p3

    move v11, v10

    :goto_2
    if-ge v11, v8, :cond_2

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v9

    move/from16 v21, v7

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v0

    move/from16 v25, v5

    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float/2addr v13, v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    cmpl-float v5, v26, v4

    if-lez v5, :cond_3

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v26, v5

    sub-float v25, v3, v5

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v9

    move/from16 v21, v26

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v0

    invoke-interface/range {v16 .. v25}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    :cond_3
    move v0, v13

    :cond_4
    cmpl-float v4, v26, v4

    if-lez v4, :cond_5

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v4

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v26, v5

    sub-float v5, v3, v5

    move/from16 v17, p2

    move v6, v10

    :goto_3
    if-ge v6, v14, :cond_5

    move-object/from16 v7, p1

    move-object v8, v1

    move/from16 v9, v17

    move v10, v0

    move v11, v15

    move/from16 v12, v26

    move v13, v2

    move/from16 v18, v14

    move v14, v3

    move/from16 v19, v15

    move v15, v4

    move/from16 v16, v5

    invoke-interface/range {v7 .. v16}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v17, v17, v19

    add-int/lit8 v6, v6, 0x1

    move/from16 v14, v18

    move/from16 v15, v19

    goto :goto_3

    :cond_5
    return-void
.end method
