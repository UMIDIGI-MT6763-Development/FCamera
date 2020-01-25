.class public Lcom/badlogic/gdx/math/GridPoint2;
.super Ljava/lang/Object;
.source "GridPoint2.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/GridPoint2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget p1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/math/GridPoint2;

    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget v3, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iget p1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    const/16 v1, 0x35

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public set(II)Lcom/badlogic/gdx/math/GridPoint2;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iput p2, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/GridPoint2;)Lcom/badlogic/gdx/math/GridPoint2;
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iput v0, p0, Lcom/badlogic/gdx/math/GridPoint2;->x:I

    iget p1, p1, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    iput p1, p0, Lcom/badlogic/gdx/math/GridPoint2;->y:I

    return-object p0
.end method
