.class public Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "IsometricStaggeredTiledMapRenderer.java"


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

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

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

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v4, v6

    mul-float/2addr v6, v5

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v8, v7

    div-float/2addr v8, v4

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v10, v11

    add-float/2addr v10, v4

    add-float/2addr v10, v7

    div-float/2addr v10, v4

    float-to-int v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v10, v5

    div-float/2addr v10, v5

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v11, v12

    add-float/2addr v11, v5

    div-float/2addr v11, v6

    float-to-int v5, v11

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_0
    if-lt v3, v10, :cond_7

    rem-int/lit8 v11, v3, 0x2

    if-ne v11, v5, :cond_0

    move v11, v7

    goto :goto_1

    :cond_0
    const/4 v11, 0x0

    :goto_1
    add-int/lit8 v12, v2, -0x1

    :goto_2
    if-lt v12, v8, :cond_6

    move-object/from16 v13, p1

    invoke-virtual {v13, v12, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v14

    if-nez v14, :cond_1

    move/from16 v20, v2

    move/from16 v22, v4

    move/from16 v19, v5

    move/from16 v26, v6

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v16

    invoke-virtual {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v17

    invoke-virtual {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v14

    invoke-interface {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v18

    int-to-float v5, v12

    mul-float/2addr v5, v4

    sub-float/2addr v5, v11

    invoke-interface {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v20

    iget v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float v20, v20, v9

    add-float v5, v5, v20

    int-to-float v9, v3

    mul-float/2addr v9, v6

    invoke-interface {v15}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v15

    move/from16 v20, v2

    iget v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v15, v2

    add-float/2addr v9, v15

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    iget v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v2, v15

    add-float/2addr v2, v5

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v15

    int-to-float v15, v15

    move/from16 v22, v4

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->unitScale:F

    mul-float/2addr v15, v4

    add-float/2addr v15, v9

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v23

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v24

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v25

    move/from16 v26, v6

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v21, 0x0

    aput v5, v6, v21

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v19, 0x1

    aput v9, v6, v19

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v27, 0x2

    aput v1, v6, v27

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v27, 0x3

    aput v4, v6, v27

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v28, 0x4

    aput v23, v6, v28

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v29, 0x5

    aput v5, v6, v29

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/4 v6, 0x6

    aput v15, v5, v6

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/4 v6, 0x7

    aput v1, v5, v6

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v6, 0x8

    aput v4, v5, v6

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v5, 0x9

    aput v25, v4, v5

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v29, 0xa

    aput v2, v4, v29

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v29, 0xb

    aput v15, v4, v29

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v15, 0xc

    aput v1, v4, v15

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v15, 0xd

    aput v24, v4, v15

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v29, 0xe

    aput v25, v4, v29

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v25, 0xf

    aput v2, v4, v25

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v4, 0x10

    aput v9, v2, v4

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v4, 0x11

    aput v1, v2, v4

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v4, 0x12

    aput v24, v2, v4

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v9, 0x13

    aput v23, v2, v9

    if-eqz v16, :cond_2

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v27

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v5, v5, v15

    aput v5, v9, v27

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v15

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v6

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v4

    aput v9, v5, v6

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v4

    :cond_2
    if-eqz v17, :cond_3

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v28

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v29

    aput v9, v5, v28

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v29

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v5, 0x9

    aget v2, v2, v5

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v16, 0x13

    aget v6, v6, v16

    aput v6, v9, v5

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v16

    goto :goto_3

    :cond_3
    const/16 v16, 0x13

    :goto_3
    if-eqz v14, :cond_4

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v28

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v6, v6, v16

    aput v6, v5, v28

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v6, v6, v29

    aput v6, v5, v16

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v9, 0x9

    aget v6, v6, v9

    aput v6, v5, v29

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v9

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v27

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v6, v6, v4

    aput v6, v5, v27

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v6, v6, v15

    aput v6, v5, v4

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    aput v5, v4, v15

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v4, v6

    goto/16 :goto_4

    :pswitch_1
    const/16 v6, 0x8

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v27

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v15

    aput v9, v5, v27

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v15

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v6

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v4

    aput v9, v5, v6

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v4

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v28

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v5, v5, v29

    aput v5, v4, v28

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v4, v29

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v5, 0x9

    aget v2, v2, v5

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v9, 0x13

    aget v6, v6, v9

    aput v6, v4, v5

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v4, v9

    goto :goto_4

    :pswitch_2
    const/16 v5, 0x9

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v28

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v5

    aput v9, v6, v28

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v9, v9, v29

    aput v9, v6, v5

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v9, 0x13

    aget v6, v6, v9

    aput v6, v5, v29

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v9

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v2, v2, v27

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v9, 0x8

    aget v6, v6, v9

    aput v6, v5, v27

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v6, v6, v15

    aput v6, v5, v9

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aget v6, v6, v4

    aput v6, v5, v15

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    aput v2, v5, v4

    :cond_4
    :goto_4
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v18 .. v18}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    iget-object v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricStaggeredTiledMapRenderer;->vertices:[F

    const/16 v6, 0x14

    const/4 v9, 0x0

    invoke-interface {v2, v4, v5, v9, v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_5

    :cond_5
    move/from16 v20, v2

    move/from16 v22, v4

    move/from16 v19, v5

    move/from16 v26, v6

    :goto_5
    add-int/lit8 v12, v12, -0x1

    move/from16 v5, v19

    move/from16 v2, v20

    move/from16 v4, v22

    move/from16 v6, v26

    goto/16 :goto_2

    :cond_6
    move-object/from16 v13, p1

    move/from16 v20, v2

    move/from16 v22, v4

    move/from16 v19, v5

    move/from16 v26, v6

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
