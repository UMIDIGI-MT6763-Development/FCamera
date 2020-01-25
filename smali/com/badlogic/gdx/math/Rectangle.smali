.class public Lcom/badlogic/gdx/math/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# static fields
.field private static final serialVersionUID:J = 0x4f909a54ea199076L

.field public static final tmp:Lcom/badlogic/gdx/math/Rectangle;

.field public static final tmp2:Lcom/badlogic/gdx/math/Rectangle;


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Rectangle;->tmp2:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-void
.end method


# virtual methods
.method public area()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v1, v0, p1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v0, p1, p2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p1, v0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 6

    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p1, v2

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    iget v4, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v5, v3, v4

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    cmpl-float v0, v1, v3

    if-lez v0, :cond_0

    add-float/2addr v3, v4

    cmpg-float v0, v1, v3

    if-gez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpl-float v1, v2, v0

    if-lez v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v3, v0, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_0

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public fitInside(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v0, v1, v0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    :goto_0
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    return-object p0
.end method

.method public fitOutside(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Rectangle;->getAspectRatio()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v0, v1, v0

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->setSize(FF)Lcom/badlogic/gdx/math/Rectangle;

    :goto_0
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    return-object p0
.end method

.method public getAspectRatio()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v0, v1, v0

    :goto_0
    return v0
.end method

.method public getCenter(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p1
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return v0
.end method

.method public getPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public getSize(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public merge(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object p0
.end method

.method public merge(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object p0
.end method

.method public merge(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/math/Rectangle;->merge(FF)Lcom/badlogic/gdx/math/Rectangle;

    move-result-object p1

    return-object p1
.end method

.method public merge([Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v2

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    aget-object v5, p1, v4

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v3, v2

    iput v3, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object p0
.end method

.method public overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public perimeter()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput p3, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput p4, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget p1, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object p0
.end method

.method public setCenter(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    return-object p0
.end method

.method public setCenter(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/math/Rectangle;->setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;

    return-object p0
.end method

.method public setHeight(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object p0
.end method

.method public setPosition(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    return-object p0
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    return-object p0
.end method

.method public setSize(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object p0
.end method

.method public setSize(FF)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput p2, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return-object p0
.end method

.method public setWidth(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    return-object p0
.end method

.method public setX(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    return-object p0
.end method

.method public setY(F)Lcom/badlogic/gdx/math/Rectangle;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
