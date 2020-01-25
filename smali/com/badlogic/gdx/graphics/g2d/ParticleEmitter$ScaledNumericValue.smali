.class public Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;
.source "ParticleEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaledNumericValue"
.end annotation


# instance fields
.field private highMax:F

.field private highMin:F

.field private relative:Z

.field private scaling:[F

.field timeline:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return v0
.end method

.method public getHighMin()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    return v0
.end method

.method public getScale(F)F
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v1, v0

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    cmpl-float v5, v5, p1

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_1
    if-ne v3, v4, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    sub-int/2addr v1, v2

    aget p1, p1, v1

    return p1

    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    add-int/lit8 v2, v3, -0x1

    aget v4, v1, v2

    aget v2, v0, v2

    aget v1, v1, v3

    sub-float/2addr v1, v4

    sub-float/2addr p1, v2

    aget v0, v0, v3

    sub-float/2addr v0, v2

    div-float/2addr p1, v0

    mul-float/2addr v1, p1

    add-float/2addr v4, v1

    return v4
.end method

.method public getScaling()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-object v0
.end method

.method public isRelative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;)V

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return-void
.end method

.method public load(Ljava/io/BufferedReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->load(Ljava/io/BufferedReader;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "highMin"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    const-string v0, "highMax"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    const-string v0, "relative"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readBoolean(Ljava/io/BufferedReader;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    const-string v0, "scalingCount"

    invoke-static {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scaling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "timelineCount"

    invoke-static {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readInt(Ljava/io/BufferedReader;Ljava/lang/String;)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v1

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->readFloat(Ljava/io/BufferedReader;Ljava/lang/String;)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public newHighValue()F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    sub-float/2addr v1, v0

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public save(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->save(Ljava/io/Writer;)V

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->active:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "highMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "highMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scalingCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timelineCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setHigh(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHigh(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHighMax(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMax:F

    return-void
.end method

.method public setHighMin(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->highMin:F

    return-void
.end method

.method public setRelative(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->relative:Z

    return-void
.end method

.method public setScaling([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->scaling:[F

    return-void
.end method

.method public setTimeline([F)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->timeline:[F

    return-void
.end method