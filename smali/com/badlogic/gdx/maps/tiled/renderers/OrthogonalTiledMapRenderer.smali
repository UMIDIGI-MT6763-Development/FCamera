.class public Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "OrthogonalTiledMapRenderer.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v5

    mul-float/2addr v1, v5

    invoke-static {v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v4

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    div-float/2addr v6, v4

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v8, v9

    add-float/2addr v8, v4

    div-float/2addr v8, v4

    float-to-int v8, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    div-float/2addr v8, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v9, v10

    add-float/2addr v9, v5

    div-float/2addr v9, v5

    float-to-int v9, v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v9, v3

    mul-float/2addr v9, v5

    int-to-float v10, v6

    mul-float/2addr v10, v4

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->vertices:[F

    :goto_0
    if-lt v3, v8, :cond_6

    move v12, v6

    move v13, v10

    :goto_1
    if-ge v12, v2, :cond_5

    move-object/from16 v14, p1

    invoke-virtual {v14, v12, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v15

    if-nez v15, :cond_0

    add-float/2addr v13, v4

    move/from16 v16, v2

    move/from16 v22, v6

    move/from16 v23, v8

    move v8, v7

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v17

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v18

    invoke-virtual {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v15

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v19

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v20

    iget v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float v20, v20, v7

    add-float v20, v13, v20

    invoke-interface/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v7

    move/from16 v16, v2

    iget v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v7, v2

    add-float/2addr v7, v9

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    move/from16 v22, v6

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v2, v6

    add-float v2, v20, v2

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v6

    int-to-float v6, v6

    move/from16 v23, v8

    iget v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v8

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v24

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v25

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v26

    const/16 v21, 0x0

    aput v20, v11, v21

    const/16 v27, 0x1

    aput v7, v11, v27

    const/16 v27, 0x2

    aput v1, v11, v27

    const/16 v27, 0x3

    aput v8, v11, v27

    const/16 v28, 0x4

    aput v24, v11, v28

    const/16 v29, 0x5

    aput v20, v11, v29

    const/16 v20, 0x6

    aput v6, v11, v20

    const/16 v20, 0x7

    aput v1, v11, v20

    const/16 v20, 0x8

    aput v8, v11, v20

    const/16 v8, 0x9

    aput v26, v11, v8

    const/16 v29, 0xa

    aput v2, v11, v29

    const/16 v29, 0xb

    aput v6, v11, v29

    const/16 v6, 0xc

    aput v1, v11, v6

    const/16 v6, 0xd

    aput v25, v11, v6

    const/16 v29, 0xe

    aput v26, v11, v29

    const/16 v26, 0xf

    aput v2, v11, v26

    const/16 v2, 0x10

    aput v7, v11, v2

    const/16 v2, 0x11

    aput v1, v11, v2

    const/16 v2, 0x12

    aput v25, v11, v2

    const/16 v7, 0x13

    aput v24, v11, v7

    if-eqz v17, :cond_1

    aget v17, v11, v27

    aget v24, v11, v6

    aput v24, v11, v27

    aput v17, v11, v6

    aget v17, v11, v20

    aget v24, v11, v2

    aput v24, v11, v20

    aput v17, v11, v2

    :cond_1
    if-eqz v18, :cond_2

    aget v17, v11, v28

    aget v18, v11, v29

    aput v18, v11, v28

    aput v17, v11, v29

    aget v17, v11, v8

    aget v18, v11, v7

    aput v18, v11, v8

    aput v17, v11, v7

    :cond_2
    if-eqz v15, :cond_3

    packed-switch v15, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    aget v15, v11, v28

    aget v17, v11, v7

    aput v17, v11, v28

    aget v17, v11, v29

    aput v17, v11, v7

    aget v7, v11, v8

    aput v7, v11, v29

    aput v15, v11, v8

    aget v7, v11, v27

    aget v8, v11, v2

    aput v8, v11, v27

    aget v8, v11, v6

    aput v8, v11, v2

    aget v2, v11, v20

    aput v2, v11, v6

    aput v7, v11, v20

    goto :goto_2

    :pswitch_1
    aget v15, v11, v27

    aget v17, v11, v6

    aput v17, v11, v27

    aput v15, v11, v6

    aget v6, v11, v20

    aget v15, v11, v2

    aput v15, v11, v20

    aput v6, v11, v2

    aget v2, v11, v28

    aget v6, v11, v29

    aput v6, v11, v28

    aput v2, v11, v29

    aget v2, v11, v8

    aget v6, v11, v7

    aput v6, v11, v8

    aput v2, v11, v7

    goto :goto_2

    :pswitch_2
    aget v15, v11, v28

    aget v17, v11, v8

    aput v17, v11, v28

    aget v17, v11, v29

    aput v17, v11, v8

    aget v8, v11, v7

    aput v8, v11, v29

    aput v15, v11, v7

    aget v7, v11, v27

    aget v8, v11, v20

    aput v8, v11, v27

    aget v8, v11, v6

    aput v8, v11, v20

    aget v8, v11, v2

    aput v8, v11, v6

    aput v7, v11, v2

    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthogonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    const/16 v7, 0x14

    const/4 v8, 0x0

    invoke-interface {v2, v6, v11, v8, v7}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_3

    :cond_4
    move/from16 v16, v2

    move/from16 v22, v6

    move/from16 v23, v8

    move v8, v7

    :goto_3
    add-float/2addr v13, v4

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move v7, v8

    move/from16 v2, v16

    move/from16 v6, v22

    move/from16 v8, v23

    goto/16 :goto_1

    :cond_5
    move-object/from16 v14, p1

    move/from16 v16, v2

    move/from16 v22, v6

    move/from16 v23, v8

    move v8, v7

    sub-float/2addr v9, v5

    add-int/lit8 v3, v3, -0x1

    move/from16 v8, v23

    goto/16 :goto_0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
