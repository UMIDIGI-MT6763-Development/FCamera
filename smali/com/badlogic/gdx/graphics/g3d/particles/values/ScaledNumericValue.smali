.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
.source "ScaledNumericValue.java"


# instance fields
.field private highMax:F

.field private highMin:F

.field private relative:Z

.field private scaling:[F

.field public timeline:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    return v0
.end method

.method public getHighMin()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    return v0
.end method

.method public getScale(F)F
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v0, v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v4, v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    sub-int/2addr v0, v1

    aget p1, p1, v0

    return p1

    :cond_2
    add-int/lit8 v0, v2, -0x1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    aget v3, v1, v0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v0, v4, v0

    aget v1, v1, v2

    sub-float/2addr v1, v3

    sub-float/2addr p1, v0

    aget v2, v4, v2

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    mul-float/2addr v1, p1

    add-float/2addr v3, v1

    return v3
.end method

.method public getScaling()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    return-object v0
.end method

.method public isRelative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    return-void
.end method

.method public newHighValue()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    const-string v0, "highMin"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    const-string v0, "highMax"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    const-string v0, "relative"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    const-string v0, "scaling"

    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    const-string v0, "timeline"

    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    return-void
.end method

.method public setHigh(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHigh(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHighMax(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHighMin(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    return-void
.end method

.method public setRelative(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    return-void
.end method

.method public setScaling([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    return-void
.end method

.method public setTimeline([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    const-string v0, "highMin"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "highMax"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "relative"

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "scaling"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "timeline"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
