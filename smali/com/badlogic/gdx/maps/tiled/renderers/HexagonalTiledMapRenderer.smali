.class public Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "HexagonalTiledMapRenderer.java"


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
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

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

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v6, v4

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v5

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v9, v6

    div-float/2addr v9, v4

    float-to-int v6, v9

    const/4 v9, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v10, v11

    add-float/2addr v10, v4

    div-float/2addr v10, v4

    float-to-int v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    div-float/2addr v10, v8

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v11, v12

    add-float/2addr v11, v8

    div-float/2addr v11, v5

    float-to-int v8, v11

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->vertices:[F

    :goto_0
    if-ge v10, v3, :cond_8

    move v11, v6

    :goto_1
    if-ge v11, v2, :cond_7

    int-to-float v12, v11

    mul-float/2addr v12, v4

    rem-int/lit8 v13, v11, 0x2

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    const/4 v13, 0x0

    goto :goto_2

    :cond_0
    move v13, v7

    :goto_2
    int-to-float v15, v10

    mul-float/2addr v15, v5

    add-float/2addr v13, v15

    move-object/from16 v15, p1

    invoke-virtual {v15, v11, v10}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v16

    if-nez v16, :cond_1

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 v17, v5

    move v5, v9

    goto/16 :goto_3

    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v14

    if-eqz v14, :cond_6

    instance-of v9, v14, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    if-eqz v9, :cond_2

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 v17, v5

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v19

    move/from16 v20, v2

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v2

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v16

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v21

    move/from16 v22, v3

    iget v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float v21, v21, v3

    add-float v12, v12, v21

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v3

    iget v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v14

    add-float/2addr v13, v3

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    iget v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v14

    add-float/2addr v3, v12

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v14

    int-to-float v14, v14

    move/from16 v21, v4

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->unitScale:F

    mul-float/2addr v14, v4

    add-float/2addr v14, v13

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v23

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v24

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v25

    const/16 v18, 0x0

    aput v12, v8, v18

    const/16 v17, 0x1

    aput v13, v8, v17

    move/from16 v17, v5

    const/4 v5, 0x2

    aput v1, v8, v5

    const/16 v26, 0x3

    aput v4, v8, v26

    const/16 v27, 0x4

    aput v23, v8, v27

    const/16 v28, 0x5

    aput v12, v8, v28

    const/4 v12, 0x6

    aput v14, v8, v12

    const/4 v12, 0x7

    aput v1, v8, v12

    const/16 v12, 0x8

    aput v4, v8, v12

    const/16 v4, 0x9

    aput v25, v8, v4

    const/16 v28, 0xa

    aput v3, v8, v28

    const/16 v28, 0xb

    aput v14, v8, v28

    const/16 v14, 0xc

    aput v1, v8, v14

    const/16 v14, 0xd

    aput v24, v8, v14

    const/16 v28, 0xe

    aput v25, v8, v28

    const/16 v25, 0xf

    aput v3, v8, v25

    const/16 v3, 0x10

    aput v13, v8, v3

    const/16 v3, 0x11

    aput v1, v8, v3

    const/16 v3, 0x12

    aput v24, v8, v3

    const/16 v13, 0x13

    aput v23, v8, v13

    if-eqz v9, :cond_3

    aget v9, v8, v26

    aget v23, v8, v14

    aput v23, v8, v26

    aput v9, v8, v14

    aget v9, v8, v12

    aget v23, v8, v3

    aput v23, v8, v12

    aput v9, v8, v3

    :cond_3
    if-eqz v19, :cond_4

    aget v9, v8, v27

    aget v19, v8, v28

    aput v19, v8, v27

    aput v9, v8, v28

    aget v9, v8, v4

    aget v19, v8, v13

    aput v19, v8, v4

    aput v9, v8, v13

    :cond_4
    if-ne v2, v5, :cond_5

    aget v2, v8, v26

    aget v5, v8, v14

    aput v5, v8, v26

    aput v2, v8, v14

    aget v2, v8, v12

    aget v5, v8, v3

    aput v5, v8, v12

    aput v2, v8, v3

    aget v2, v8, v27

    aget v3, v8, v28

    aput v3, v8, v27

    aput v2, v8, v28

    aget v2, v8, v4

    aget v3, v8, v13

    aput v3, v8, v4

    aput v2, v8, v13

    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/HexagonalTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v2, v3, v8, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_3

    :cond_6
    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 v17, v5

    move v5, v9

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move v9, v5

    move/from16 v5, v17

    move/from16 v2, v20

    move/from16 v4, v21

    move/from16 v3, v22

    goto/16 :goto_1

    :cond_7
    move-object/from16 v15, p1

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 v17, v5

    move v5, v9

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v9, v5

    move/from16 v5, v17

    move/from16 v2, v20

    move/from16 v4, v21

    move/from16 v3, v22

    goto/16 :goto_0

    :cond_8
    return-void
.end method
