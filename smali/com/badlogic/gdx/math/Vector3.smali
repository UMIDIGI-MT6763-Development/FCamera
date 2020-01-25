.class public Lcom/badlogic/gdx/math/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/badlogic/gdx/math/Vector<",
        "Lcom/badlogic/gdx/math/Vector3;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector3;

.field public static final Y:Lcom/badlogic/gdx/math/Vector3;

.field public static final Z:Lcom/badlogic/gdx/math/Vector3;

.field public static final Zero:Lcom/badlogic/gdx/math/Vector3;

.field private static final serialVersionUID:J = 0x354a9d4dc2f0cbeaL

.field private static final tmpMat:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Zero:Lcom/badlogic/gdx/math/Vector3;

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public static dot(FFFFFF)F
    .locals 0

    mul-float/2addr p0, p3

    mul-float/2addr p1, p4

    add-float/2addr p0, p1

    mul-float/2addr p2, p5

    add-float/2addr p0, p2

    return p0
.end method

.method public static dst(FFFFFF)F
    .locals 0

    sub-float/2addr p3, p0

    sub-float/2addr p4, p1

    sub-float/2addr p5, p2

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    mul-float/2addr p5, p5

    add-float/2addr p3, p5

    float-to-double p0, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static dst2(FFFFFF)F
    .locals 0

    sub-float/2addr p3, p0

    sub-float/2addr p4, p1

    sub-float/2addr p5, p2

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p3, p4

    mul-float/2addr p5, p5

    add-float/2addr p3, p5

    return p3
.end method

.method public static len(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static len2(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    return p0
.end method


# virtual methods
.method public add(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public add(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr p2, p3

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public clamp(FF)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    mul-float/2addr p2, p2

    cmpl-float v1, v0, p2

    if-lez v1, :cond_1

    div-float/2addr p2, v0

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1

    :cond_1
    mul-float/2addr p1, p1

    cmpg-float p2, v0, p1

    if-gez p2, :cond_2

    div-float/2addr p1, v0

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public bridge synthetic clamp(FF)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->clamp(FF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    return-object v0
.end method

.method public bridge synthetic cpy()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public crs(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 4

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v1, v0, p3

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v3, v2, p2

    sub-float/2addr v1, v3

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr p3, v3

    sub-float/2addr v2, p3

    mul-float/2addr v3, p2

    mul-float/2addr v0, p1

    sub-float/2addr v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, p1

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v5

    sub-float/2addr v3, v1

    mul-float/2addr v5, v4

    mul-float/2addr v0, p1

    sub-float/2addr v5, v0

    invoke-virtual {p0, v2, v3, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public dot(FFF)F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr p1, p3

    add-float/2addr v0, p1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic dot(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    return p1
.end method

.method public dst(FFF)F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p3, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public bridge synthetic dst(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    return p1
.end method

.method public dst2(FFF)F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p3, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    mul-float/2addr p3, p3

    add-float/2addr p1, p3

    return p1
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public bridge synthetic dst2(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    return p1
.end method

.method public epsilonEquals(FFFF)Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    const/4 v0, 0x0

    if-lez p1, :cond_0

    return v0

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1

    return v0

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p4

    if-lez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->epsilonEquals(Lcom/badlogic/gdx/math/Vector3;F)Z

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
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result p1

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasOppositeDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasSameDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public idt(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public interpolate(Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1, p2}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic interpolate(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->interpolate(Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isCollinear(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isCollinear(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, p1

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v5

    sub-float/2addr v3, v1

    mul-float/2addr v5, v4

    mul-float/2addr v0, p1

    sub-float/2addr v5, v0

    invoke-static {v2, v3, v5}, Lcom/badlogic/gdx/math/Vector3;->len2(FFF)F

    move-result p1

    const v0, 0x358637bd    # 1.0E-6f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, p1

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v5

    sub-float/2addr v3, v1

    mul-float/2addr v5, v4

    mul-float/2addr v0, p1

    sub-float/2addr v5, v0

    invoke-static {v2, v3, v5}, Lcom/badlogic/gdx/math/Vector3;->len2(FFF)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result p1

    return p1
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    invoke-static {p1, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isPerpendicular(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isPerpendicular(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isUnit()Z
    .locals 1

    const v0, 0x3089705f    # 1.0E-9f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->isUnit(F)Z

    move-result v0

    return v0
.end method

.method public isUnit(F)Z
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isZero()Z
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public len()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p1, v0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-object p0
.end method

.method public bridge synthetic lerp(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public limit(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 0

    mul-float/2addr p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->limit2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic limit(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->limit(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public limit2(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic limit2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->limit2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v4, 0xc

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0xd

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xe

    aget p1, p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Vector3;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->transform(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul4x3([F)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v4, 0x9

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xb

    aget p1, p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-object p0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->mulAdd(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    check-cast p2, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->mulAdd(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector3;
    .locals 4

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic nor()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x3

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0xb

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v4, 0xf

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v1, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    const/16 v5, 0xc

    aget v5, p1, v5

    add-float/2addr v1, v5

    mul-float/2addr v1, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    mul-float/2addr v5, v0

    const/4 v6, 0x5

    aget v6, p1, v6

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, p1, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, p1, v6

    add-float/2addr v5, v6

    mul-float/2addr v5, v4

    const/4 v6, 0x2

    aget v6, p1, v6

    mul-float/2addr v0, v6

    const/4 v6, 0x6

    aget v6, p1, v6

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xe

    aget p1, p1, v2

    add-float/2addr v0, p1

    mul-float/2addr v0, v4

    invoke-virtual {p0, v1, v5, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotate(FFFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    sget-object p1, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotateRad(FFFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToRotationRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public rotateRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToRotationRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    sget-object p1, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public scl(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr p2, p3

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scl(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scl(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public set(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput p2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput p3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public set([F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public setLength(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 0

    mul-float/2addr p1, p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->setLength2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLength(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->setLength(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public setLength2(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic setLength2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->setLength2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public setZero()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return-object p0
.end method

.method public bridge synthetic setZero()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->setZero()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 9

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    float-to-double v1, v0

    const-wide v3, 0x3feffbe76c8b4396L    # 0.9995

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_2

    const-wide v3, -0x401004189374bc6aL    # -0.9995

    cmpg-double v3, v1, v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v0

    sub-float/2addr p1, v5

    mul-float v0, v3, v3

    mul-float v5, v4, v4

    add-float/2addr v0, v5

    mul-float v5, p1, p1

    add-float/2addr v0, v5

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v5, v0, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v0, v7

    div-float/2addr v6, v0

    :goto_0
    mul-float/2addr p2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    mul-float/2addr v3, p2

    mul-float/2addr v4, p2

    mul-float/2addr p1, p2

    invoke-virtual {v0, v3, v4, p1}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sub(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sub(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr p2, p3

    invoke-virtual {p0, v0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traMul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public traMul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xb

    aget p1, p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public unrotate(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public untransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v1, 0xc

    aget v2, p1, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    aget v2, p1, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    aget v1, p1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x1

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x2

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/4 v4, 0x4

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x6

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0x8

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/16 v5, 0x9

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0xa

    aget p1, p1, v2

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method
