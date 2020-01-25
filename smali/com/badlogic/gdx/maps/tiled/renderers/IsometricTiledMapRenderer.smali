.class public Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;
.super Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;
.source "IsometricTiledMapRenderer.java"


# instance fields
.field private bottomLeft:Lcom/badlogic/gdx/math/Vector2;

.field private bottomRight:Lcom/badlogic/gdx/math/Vector2;

.field private invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

.field private isoTransform:Lcom/badlogic/gdx/math/Matrix4;

.field private screenPos:Lcom/badlogic/gdx/math/Vector3;

.field private topLeft:Lcom/badlogic/gdx/math/Vector2;

.field private topRight:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;F)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;FLcom/badlogic/gdx/graphics/g2d/Batch;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/renderers/BatchTiledMapRenderer;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    new-instance p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->init()V

    return-void
.end method

.method private init()V
    .locals 6

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v4

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v1, 0x0

    const/high16 v3, -0x3dcc0000    # -45.0f

    invoke-virtual {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->isoTransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;-><init>(Lcom/badlogic/gdx/math/Matrix4;)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->inv()Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method private translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->invIsotransform:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->screenPos:Lcom/badlogic/gdx/math/Vector3;

    return-object p1
.end method


# virtual methods
.method public renderTileLayer(Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

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

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileWidth()F

    move-result v2

    iget v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getTileHeight()F

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v2, v4

    mul-float/2addr v3, v4

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->viewBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topLeft:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v4}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v4, v2

    float-to-int v4, v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    iget-object v7, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v7}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v7, v2

    float-to-int v7, v7

    add-int/2addr v7, v6

    iget-object v8, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->bottomLeft:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v8}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v8, v2

    float-to-int v8, v8

    sub-int/2addr v8, v6

    iget-object v9, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->topRight:Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v9}, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->translateScreenToIso(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v9, v2

    float-to-int v2, v9

    add-int/2addr v2, v6

    :goto_0
    if-lt v7, v4, :cond_6

    move v9, v8

    :goto_1
    if-gt v9, v2, :cond_5

    int-to-float v10, v9

    mul-float v11, v10, v5

    int-to-float v12, v7

    mul-float v13, v12, v5

    add-float/2addr v11, v13

    mul-float/2addr v12, v3

    mul-float/2addr v10, v3

    sub-float/2addr v12, v10

    move-object/from16 v10, p1

    invoke-virtual {v10, v9, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v13

    if-nez v13, :cond_0

    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v19, v6

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getTile()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipHorizontally()Z

    move-result v15

    invoke-virtual {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getFlipVertically()Z

    move-result v16

    invoke-virtual {v13}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->getRotation()I

    move-result v13

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v17

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v18

    iget v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float v18, v18, v6

    add-float v11, v11, v18

    invoke-interface {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v6

    iget v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v14

    add-float/2addr v12, v6

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v6

    int-to-float v6, v6

    iget v14, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v6, v14

    add-float/2addr v6, v11

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v14

    int-to-float v14, v14

    move/from16 v18, v2

    iget v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->unitScale:F

    mul-float/2addr v14, v2

    add-float/2addr v14, v12

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v2

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v20

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v21

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v22

    move/from16 v23, v3

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    move/from16 v24, v4

    const/4 v4, 0x0

    aput v11, v3, v4

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v25, 0x1

    aput v12, v3, v25

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v19, 0x2

    aput v1, v3, v19

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v25, 0x3

    aput v2, v3, v25

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v26, 0x4

    aput v20, v3, v26

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v27, 0x5

    aput v11, v3, v27

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/4 v11, 0x6

    aput v14, v3, v11

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/4 v11, 0x7

    aput v1, v3, v11

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v11, 0x8

    aput v2, v3, v11

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v3, 0x9

    aput v22, v2, v3

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v27, 0xa

    aput v6, v2, v27

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v27, 0xb

    aput v14, v2, v27

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v14, 0xc

    aput v1, v2, v14

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v14, 0xd

    aput v21, v2, v14

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v27, 0xe

    aput v22, v2, v27

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v22, 0xf

    aput v6, v2, v22

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v6, 0x10

    aput v12, v2, v6

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v6, 0x11

    aput v1, v2, v6

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v6, 0x12

    aput v21, v2, v6

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v12, 0x13

    aput v20, v2, v12

    if-eqz v15, :cond_1

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v25

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v4, v4, v14

    aput v4, v15, v25

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v4, v14

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v11

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v15, v15, v6

    aput v15, v4, v11

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v4, v6

    :cond_1
    if-eqz v16, :cond_2

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v26

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v15, v15, v27

    aput v15, v4, v26

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v4, v27

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v3

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v15, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v15, v15, v12

    aput v15, v4, v3

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v4, v12

    :cond_2
    if-eqz v13, :cond_3

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v26

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v13, v13, v12

    aput v13, v4, v26

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v13, v13, v27

    aput v13, v4, v12

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v12, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v12, v12, v3

    aput v12, v4, v27

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v4, v3

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v25

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v4, v4, v6

    aput v4, v3, v25

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v4, v4, v14

    aput v4, v3, v6

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v4, v4, v11

    aput v4, v3, v14

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v3, v11

    goto/16 :goto_2

    :pswitch_1
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v25

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v13, v13, v14

    aput v13, v4, v25

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v4, v14

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v11

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v13, v13, v6

    aput v13, v4, v11

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v4, v6

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v26

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v6, v6, v27

    aput v6, v4, v26

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v4, v27

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v3

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v6, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v6, v6, v12

    aput v6, v4, v3

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v3, v12

    goto :goto_2

    :pswitch_2
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v26

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v13, v13, v3

    aput v13, v4, v26

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v13, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v13, v13, v27

    aput v13, v4, v3

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v4, v4, v12

    aput v4, v3, v27

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v3, v12

    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v2, v2, v25

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v4, v4, v11

    aput v4, v3, v25

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v4, v4, v14

    aput v4, v3, v11

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aget v4, v4, v6

    aput v4, v3, v14

    iget-object v3, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    aput v2, v3, v6

    :cond_3
    :goto_2
    iget-object v2, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual/range {v17 .. v17}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    iget-object v4, v0, Lcom/badlogic/gdx/maps/tiled/renderers/IsometricTiledMapRenderer;->vertices:[F

    const/16 v6, 0x14

    const/4 v11, 0x0

    invoke-interface {v2, v3, v4, v11, v6}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_3

    :cond_4
    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v19, v6

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v18

    move/from16 v6, v19

    move/from16 v3, v23

    move/from16 v4, v24

    goto/16 :goto_1

    :cond_5
    move-object/from16 v10, p1

    move/from16 v18, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v19, v6

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
