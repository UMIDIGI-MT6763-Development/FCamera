.class public abstract Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.super Ljava/lang/Object;
.source "BatchTiledMapRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapRenderer;
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field protected static final NUM_VERTICES:I = 0x14


# instance fields
.field protected batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field protected imageBounds:Lcom/badlogic/gdx/math/Rectangle;

.field protected map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected ownsBatch:Z

.field protected unitScale:F

.field protected vertices:[F

.field protected viewBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    new-instance p1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    new-instance p1, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iput-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method


# virtual methods
.method protected beginRender()V
    .locals 1

    invoke-static {}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->updateAnimationBaseTime()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->ownsBatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    :cond_0
    return-void
.end method

.method protected endRender()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    return-void
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getMap()Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method

.method public getUnitScale()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    return v0
.end method

.method public getViewBounds()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public render()V
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->beginRender()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/MapLayer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    :cond_1
    instance-of v2, v1, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->endRender()V

    return-void
.end method

.method public render([I)V
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->beginRender()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget v2, p1, v1

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->endRender()V

    return-void
.end method

.method public renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V
    .locals 12

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getOpacity()F

    move-result v4

    mul-float/2addr v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->vertices:[F

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getY()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    mul-float/2addr p1, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p1

    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v7, v4, v3

    sub-float v8, v5, p1

    invoke-virtual {v6, v3, p1, v7, v8}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Rectangle;->contains(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v7, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->imageBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v6

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v7

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v8

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v9

    const/4 v10, 0x0

    aput v3, v1, v10

    const/4 v11, 0x1

    aput p1, v1, v11

    const/4 v11, 0x2

    aput v0, v1, v11

    const/4 v11, 0x3

    aput v6, v1, v11

    const/4 v11, 0x4

    aput v7, v1, v11

    const/4 v11, 0x5

    aput v3, v1, v11

    const/4 v3, 0x6

    aput v5, v1, v3

    const/4 v3, 0x7

    aput v0, v1, v3

    const/16 v3, 0x8

    aput v6, v1, v3

    const/16 v3, 0x9

    aput v9, v1, v3

    const/16 v3, 0xa

    aput v4, v1, v3

    const/16 v3, 0xb

    aput v5, v1, v3

    const/16 v3, 0xc

    aput v0, v1, v3

    const/16 v3, 0xd

    aput v8, v1, v3

    const/16 v3, 0xe

    aput v9, v1, v3

    const/16 v3, 0xf

    aput v4, v1, v3

    const/16 v3, 0x10

    aput p1, v1, v3

    const/16 p1, 0x11

    aput v0, v1, p1

    const/16 p1, 0x12

    aput v8, v1, p1

    const/16 p1, 0x13

    aput v7, v1, p1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/16 v2, 0x14

    invoke-interface {p1, v0, v1, v10, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :cond_2
    return-void
.end method

.method public renderObject(Lcom/badlogic/gdx/maps/MapObject;)V
    .locals 0

    return-void
.end method

.method public renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapObjects;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/maps/MapObject;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->renderObject(Lcom/badlogic/gdx/maps/MapObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMap(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-void
.end method

.method public setView(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    sub-float/2addr v3, v5

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v4, v1, v4

    sub-float/2addr p1, v4

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public setView(Lcom/badlogic/gdx/math/Matrix4;FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method
