.class public Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;
.super Ljava/lang/Object;
.source "OrthoCachedTiledMapRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapRenderer;
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field protected static final NUM_VERTICES:I = 0x14

.field private static final tolerance:F = 1.0E-5f


# instance fields
.field protected blending:Z

.field protected final cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

.field protected cached:Z

.field protected canCacheMoreE:Z

.field protected canCacheMoreN:Z

.field protected canCacheMoreS:Z

.field protected canCacheMoreW:Z

.field protected count:I

.field protected final map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

.field protected maxTileHeight:F

.field protected maxTileWidth:F

.field protected overCache:F

.field protected final spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

.field protected unitScale:F

.field protected final vertices:[F

.field protected final viewBounds:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x7d0

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 1

    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/4 p2, 0x1

    invoke-direct {p1, p3, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->dispose()V

    return-void
.end method

.method public getSpriteCache()Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    return-object v0
.end method

.method public invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    return-void
.end method

.method public isCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    return v0
.end method

.method public render()V
    .locals 6

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v4, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v4, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    add-float/2addr v4, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/MapLayer;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    const/16 v2, 0xbe2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->getCount()I

    move-result v3

    :goto_2
    if-ge v1, v3, :cond_5

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_6
    return-void
.end method

.method public render([I)V
    .locals 7

    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->clear()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v4, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v4, v2

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v0, v5

    add-float/2addr v4, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v2, v5

    add-float/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/MapLayer;

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->endCache()I

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    const/16 v2, 0xbe2

    if-eqz v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {v0, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glBlendFunc(II)V

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->begin()V

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->map:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_5

    aget v4, p1, v1

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/MapLayer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->draw(I)V

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObjects(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->end()V

    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    :cond_6
    return-void
.end method

.method public renderImageLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;)V
    .locals 12

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;->getOpacity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

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

    iget v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    mul-float/2addr p1, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p1

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

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v1, v10, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

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

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->renderObject(Lcom/badlogic/gdx/maps/MapObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getOpacity()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getHeight()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v4

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v5

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v6

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    div-float/2addr v6, v4

    float-to-int v6, v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v8, v9

    add-float/2addr v8, v4

    div-float/2addr v8, v4

    float-to-int v8, v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->y:F

    div-float/2addr v9, v5

    float-to-int v9, v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v11, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v10, v11

    add-float/2addr v10, v5

    div-float/2addr v10, v5

    float-to-int v10, v10

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v3, :cond_0

    move v3, v11

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iput-boolean v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    if-ge v8, v2, :cond_1

    move v2, v11

    goto :goto_1

    :cond_1
    move v2, v7

    :goto_1
    iput-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    if-lez v6, :cond_2

    move v2, v11

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    iput-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    if-lez v9, :cond_3

    move v2, v11

    goto :goto_3

    :cond_3
    move v2, v7

    :goto_3
    iput-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->vertices:[F

    :goto_4
    if-lt v10, v9, :cond_a

    move v3, v6

    :goto_5
    if-ge v3, v8, :cond_9

    move-object/from16 v12, p1

    invoke-virtual {v12, v3, v10}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v13

    if-nez v13, :cond_4

    move/from16 v20, v4

    move/from16 v19, v5

    move/from16 v21, v6

    move v6, v7

    move/from16 v23, v8

    move/from16 v17, v11

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v14

    if-nez v14, :cond_5

    move/from16 v20, v4

    move/from16 v19, v5

    move/from16 v21, v6

    move v6, v7

    move/from16 v23, v8

    move/from16 v17, v11

    goto/16 :goto_7

    :cond_5
    iget v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    add-int/2addr v15, v11

    iput v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->count:I

    invoke-virtual {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v15

    invoke-virtual {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v16

    invoke-virtual {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v13

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v11

    int-to-float v7, v3

    mul-float/2addr v7, v4

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v19

    move/from16 v20, v4

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float v19, v19, v4

    add-float v7, v7, v19

    int-to-float v4, v10

    mul-float/2addr v4, v5

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v14

    move/from16 v19, v5

    iget v5, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v14, v5

    add-float/2addr v4, v14

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v5

    int-to-float v5, v5

    iget v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v5, v14

    add-float/2addr v5, v7

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v14

    int-to-float v14, v14

    move/from16 v21, v6

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v14, v6

    add-float/2addr v14, v4

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v22, 0x3f000000    # 0.5f

    div-float v6, v22, v6

    move/from16 v23, v8

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v22, v22, v8

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v8

    add-float/2addr v8, v6

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v24

    sub-float v24, v24, v22

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v25

    sub-float v25, v25, v6

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v6

    add-float v6, v6, v22

    const/16 v17, 0x0

    aput v7, v2, v17

    const/16 v17, 0x1

    aput v4, v2, v17

    const/16 v18, 0x2

    aput v1, v2, v18

    const/16 v18, 0x3

    aput v8, v2, v18

    const/16 v22, 0x4

    aput v24, v2, v22

    const/16 v26, 0x5

    aput v7, v2, v26

    const/4 v7, 0x6

    aput v14, v2, v7

    const/4 v7, 0x7

    aput v1, v2, v7

    const/16 v7, 0x8

    aput v8, v2, v7

    const/16 v8, 0x9

    aput v6, v2, v8

    const/16 v26, 0xa

    aput v5, v2, v26

    const/16 v26, 0xb

    aput v14, v2, v26

    const/16 v14, 0xc

    aput v1, v2, v14

    const/16 v14, 0xd

    aput v25, v2, v14

    const/16 v26, 0xe

    aput v6, v2, v26

    const/16 v6, 0xf

    aput v5, v2, v6

    const/16 v5, 0x10

    aput v4, v2, v5

    const/16 v4, 0x11

    aput v1, v2, v4

    const/16 v4, 0x12

    aput v25, v2, v4

    const/16 v5, 0x13

    aput v24, v2, v5

    if-eqz v15, :cond_6

    aget v6, v2, v18

    aget v15, v2, v14

    aput v15, v2, v18

    aput v6, v2, v14

    aget v6, v2, v7

    aget v15, v2, v4

    aput v15, v2, v7

    aput v6, v2, v4

    :cond_6
    if-eqz v16, :cond_7

    aget v6, v2, v22

    aget v15, v2, v26

    aput v15, v2, v22

    aput v6, v2, v26

    aget v6, v2, v8

    aget v15, v2, v5

    aput v15, v2, v8

    aput v6, v2, v5

    :cond_7
    if-eqz v13, :cond_8

    packed-switch v13, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    aget v6, v2, v22

    aget v13, v2, v5

    aput v13, v2, v22

    aget v13, v2, v26

    aput v13, v2, v5

    aget v5, v2, v8

    aput v5, v2, v26

    aput v6, v2, v8

    aget v5, v2, v18

    aget v6, v2, v4

    aput v6, v2, v18

    aget v6, v2, v14

    aput v6, v2, v4

    aget v4, v2, v7

    aput v4, v2, v14

    aput v5, v2, v7

    goto :goto_6

    :pswitch_1
    aget v6, v2, v18

    aget v13, v2, v14

    aput v13, v2, v18

    aput v6, v2, v14

    aget v6, v2, v7

    aget v13, v2, v4

    aput v13, v2, v7

    aput v6, v2, v4

    aget v4, v2, v22

    aget v6, v2, v26

    aput v6, v2, v22

    aput v4, v2, v26

    aget v4, v2, v8

    aget v6, v2, v5

    aput v6, v2, v8

    aput v4, v2, v5

    goto :goto_6

    :pswitch_2
    aget v6, v2, v22

    aget v13, v2, v8

    aput v13, v2, v22

    aget v13, v2, v26

    aput v13, v2, v8

    aget v8, v2, v5

    aput v8, v2, v26

    aput v6, v2, v5

    aget v5, v2, v18

    aget v6, v2, v7

    aput v6, v2, v18

    aget v6, v2, v14

    aput v6, v2, v7

    aget v6, v2, v4

    aput v6, v2, v14

    aput v5, v2, v4

    :cond_8
    :goto_6
    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, v11, v2, v6, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    move v7, v6

    move/from16 v11, v17

    move/from16 v5, v19

    move/from16 v4, v20

    move/from16 v6, v21

    move/from16 v8, v23

    goto/16 :goto_5

    :cond_9
    move-object/from16 v12, p1

    move/from16 v20, v4

    move/from16 v19, v5

    move/from16 v21, v6

    move v6, v7

    move/from16 v23, v8

    move/from16 v17, v11

    add-int/lit8 v10, v10, -0x1

    move/from16 v6, v21

    goto/16 :goto_4

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBlending(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->blending:Z

    return-void
.end method

.method public setMaxTileSize(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    return-void
.end method

.method public setOverCache(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->overCache:F

    return-void
.end method

.method public setView(Lcom/badlogic/gdx/graphics/OrthographicCamera;)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportWidth:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->viewportHeight:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->zoom:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float v5, v0, v2

    sub-float/2addr v4, v5

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->position:Lcom/badlogic/gdx/math/Vector3;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v1, v2

    sub-float/2addr p1, v2

    invoke-virtual {v3, v4, p1, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    const v0, 0x3727c5ac    # 1.0E-5f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_3

    :cond_0
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v1, v0

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_3

    :cond_1
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    add-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    :cond_4
    return-void
.end method

.method public setView(Lcom/badlogic/gdx/math/Matrix4;FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->spriteCache:Lcom/badlogic/gdx/graphics/g2d/SpriteCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    iget p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileWidth:F

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->unitScale:F

    mul-float v1, p1, v0

    sub-float/2addr p2, v1

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->maxTileHeight:F

    mul-float v2, v1, v0

    sub-float/2addr p3, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    mul-float/2addr p1, v0

    add-float/2addr p4, p1

    mul-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr p5, v1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreW:Z

    const p2, 0x3727c5ac    # 1.0E-5f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr p3, p2

    cmpg-float p1, p1, p3

    if-ltz p1, :cond_3

    :cond_0
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreS:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p3, p2

    cmpg-float p1, p1, p3

    if-ltz p1, :cond_3

    :cond_1
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreE:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr p1, p3

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr p3, p4

    add-float/2addr p3, p2

    cmpl-float p1, p1, p3

    if-gtz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->canCacheMoreN:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p1, p3

    iget-object p3, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p4, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cacheBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p3, p4

    add-float/2addr p3, p2

    cmpl-float p1, p1, p3

    if-lez p1, :cond_4

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/OrthoCachedTiledMapRenderer;->cached:Z

    :cond_4
    return-void
.end method
