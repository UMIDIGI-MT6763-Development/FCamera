.class public Lcom/badlogic/gdx/math/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"

# interfaces
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private dirty:Z

.field private localVertices:[F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private worldVertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "polygons must contain at least 3 points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public area()F
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/GeometryUtils;->polygonArea([FII)F

    move-result v0

    return v0
.end method

.method public contains(FF)Z
    .locals 10

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget v5, v0, v3

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    add-int/lit8 v7, v3, 0x2

    rem-int v8, v7, v1

    aget v8, v0, v8

    add-int/lit8 v3, v3, 0x3

    rem-int/2addr v3, v1

    aget v3, v0, v3

    cmpg-float v9, v6, p2

    if-gtz v9, :cond_0

    cmpg-float v9, p2, v3

    if-ltz v9, :cond_1

    :cond_0
    cmpg-float v9, v3, p2

    if-gtz v9, :cond_2

    cmpg-float v9, p2, v6

    if-gez v9, :cond_2

    :cond_1
    sub-float/2addr v8, v5

    sub-float/2addr v3, v6

    div-float/2addr v8, v3

    sub-float v3, p2, v6

    mul-float/2addr v8, v3

    add-float/2addr v8, v5

    cmpg-float v3, p1, v8

    if-gez v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    move v3, v7

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    and-int/lit8 p2, v4, 0x1

    if-ne p2, p1, :cond_4

    goto :goto_1

    :cond_4
    move p1, v2

    :goto_1
    return p1
.end method

.method public dirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 9

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v1, v0, v1

    aget v3, v0, v3

    array-length v5, v0

    const/4 v6, 0x2

    :goto_0
    if-ge v6, v5, :cond_4

    aget v7, v0, v6

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    aget v2, v0, v6

    :cond_0
    add-int/lit8 v7, v6, 0x1

    aget v8, v0, v7

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    aget v4, v0, v7

    :cond_1
    aget v8, v0, v6

    cmpg-float v8, v1, v8

    if-gez v8, :cond_2

    aget v1, v0, v6

    :cond_2
    aget v8, v0, v7

    cmpg-float v8, v3, v8

    if-gez v8, :cond_3

    aget v3, v0, v7

    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v0, :cond_5

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v4, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object v0
.end method

.method public getOriginX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    return v0
.end method

.method public getTransformedVertices()[F
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    return-object v1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    iget-object v2, v0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    iget-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    if-eqz v3, :cond_1

    array-length v3, v3

    array-length v4, v2

    if-eq v3, v4, :cond_2

    :cond_1
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    :cond_2
    iget-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    iget v4, v0, Lcom/badlogic/gdx/math/Polygon;->x:F

    iget v5, v0, Lcom/badlogic/gdx/math/Polygon;->y:F

    iget v6, v0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    iget v7, v0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    iget v8, v0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iget v9, v0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v10

    if-nez v11, :cond_4

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_3

    goto :goto_0

    :cond_3
    move v10, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v10, 0x1

    :goto_1
    iget v11, v0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v12

    invoke-static {v11}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v13

    array-length v14, v2

    :goto_2
    if-ge v1, v14, :cond_7

    aget v15, v2, v1

    sub-float/2addr v15, v6

    add-int/lit8 v16, v1, 0x1

    aget v17, v2, v16

    sub-float v17, v17, v7

    if-eqz v10, :cond_5

    mul-float/2addr v15, v8

    mul-float v17, v17, v9

    :cond_5
    const/16 v18, 0x0

    cmpl-float v18, v11, v18

    if-eqz v18, :cond_6

    mul-float v18, v12, v15

    mul-float v19, v13, v17

    sub-float v18, v18, v19

    mul-float/2addr v15, v13

    mul-float v17, v17, v12

    add-float v17, v15, v17

    move/from16 v15, v18

    :cond_6
    add-float/2addr v15, v4

    add-float/2addr v15, v6

    aput v15, v3, v1

    add-float v17, v5, v17

    add-float v17, v17, v7

    aput v17, v3, v16

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_7
    return-object v3
.end method

.method public getVertices()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public scale(F)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setOrigin(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setPosition(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setScale(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method

.method public setVertices([F)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "polygons must contain at least 3 points."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public translate(FF)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    iget p1, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    return-void
.end method
