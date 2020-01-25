.class public Lcom/badlogic/gdx/math/Matrix3;
.super Ljava/lang/Object;
.source "Matrix3.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final M00:I = 0x0

.field public static final M01:I = 0x3

.field public static final M02:I = 0x6

.field public static final M10:I = 0x1

.field public static final M11:I = 0x4

.field public static final M12:I = 0x7

.field public static final M20:I = 0x2

.field public static final M21:I = 0x5

.field public static final M22:I = 0x8

.field private static final serialVersionUID:J = 0x6dbd5498495b94acL


# instance fields
.field private tmp:[F

.field public val:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->idt()Lcom/badlogic/gdx/math/Matrix3;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Matrix3;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->set([F)Lcom/badlogic/gdx/math/Matrix3;

    return-void
.end method

.method private static mul([F[F)V
    .locals 20

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x3

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    const/4 v3, 0x6

    aget v5, p0, v3

    const/4 v6, 0x2

    aget v7, p1, v6

    mul-float/2addr v5, v7

    add-float/2addr v1, v5

    aget v5, p0, v0

    aget v7, p1, v2

    mul-float/2addr v5, v7

    aget v7, p0, v2

    const/4 v8, 0x4

    aget v9, p1, v8

    mul-float/2addr v7, v9

    add-float/2addr v5, v7

    aget v7, p0, v3

    const/4 v9, 0x5

    aget v10, p1, v9

    mul-float/2addr v7, v10

    add-float/2addr v5, v7

    aget v7, p0, v0

    aget v10, p1, v3

    mul-float/2addr v7, v10

    aget v10, p0, v2

    const/4 v11, 0x7

    aget v12, p1, v11

    mul-float/2addr v10, v12

    add-float/2addr v7, v10

    aget v10, p0, v3

    const/16 v12, 0x8

    aget v13, p1, v12

    mul-float/2addr v10, v13

    add-float/2addr v7, v10

    aget v10, p0, v4

    aget v13, p1, v0

    mul-float/2addr v10, v13

    aget v13, p0, v8

    aget v14, p1, v4

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    aget v13, p0, v11

    aget v14, p1, v6

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    aget v13, p0, v4

    aget v14, p1, v2

    mul-float/2addr v13, v14

    aget v14, p0, v8

    aget v15, p1, v8

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    aget v14, p0, v11

    aget v15, p1, v9

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    aget v14, p0, v4

    aget v15, p1, v3

    mul-float/2addr v14, v15

    aget v15, p0, v8

    aget v16, p1, v11

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aget v15, p0, v11

    aget v16, p1, v12

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    aget v15, p0, v6

    aget v16, p1, v0

    mul-float v15, v15, v16

    aget v16, p0, v9

    aget v17, p1, v4

    mul-float v16, v16, v17

    add-float v15, v15, v16

    aget v16, p0, v12

    aget v17, p1, v6

    mul-float v16, v16, v17

    add-float v15, v15, v16

    aget v16, p0, v6

    aget v17, p1, v2

    mul-float v16, v16, v17

    aget v17, p0, v9

    aget v18, p1, v8

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, p0, v12

    aget v18, p1, v9

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, p0, v6

    aget v18, p1, v3

    mul-float v17, v17, v18

    aget v18, p0, v9

    aget v19, p1, v11

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, p0, v12

    aget v19, p1, v12

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aput v1, p0, v0

    aput v10, p0, v4

    aput v15, p0, v6

    aput v5, p0, v2

    aput v13, p0, v8

    aput v16, p0, v9

    aput v7, p0, v3

    aput v14, p0, v11

    aput v17, p0, v12

    return-void
.end method


# virtual methods
.method public det()F
    .locals 13

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x4

    aget v4, v0, v3

    mul-float/2addr v2, v4

    const/16 v4, 0x8

    aget v5, v0, v4

    mul-float/2addr v2, v5

    const/4 v5, 0x3

    aget v6, v0, v5

    const/4 v7, 0x7

    aget v8, v0, v7

    mul-float/2addr v6, v8

    const/4 v8, 0x2

    aget v9, v0, v8

    mul-float/2addr v6, v9

    add-float/2addr v2, v6

    const/4 v6, 0x6

    aget v9, v0, v6

    const/4 v10, 0x1

    aget v11, v0, v10

    mul-float/2addr v9, v11

    const/4 v11, 0x5

    aget v12, v0, v11

    mul-float/2addr v9, v12

    add-float/2addr v2, v9

    aget v1, v0, v1

    aget v7, v0, v7

    mul-float/2addr v1, v7

    aget v7, v0, v11

    mul-float/2addr v1, v7

    sub-float/2addr v2, v1

    aget v1, v0, v5

    aget v5, v0, v10

    mul-float/2addr v1, v5

    aget v4, v0, v4

    mul-float/2addr v1, v4

    sub-float/2addr v2, v1

    aget v1, v0, v6

    aget v3, v0, v3

    mul-float/2addr v1, v3

    aget v0, v0, v8

    mul-float/2addr v1, v0

    sub-float/2addr v2, v1

    return v2
.end method

.method public getRotation()F
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-double v1, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRotationRad()F
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-double v1, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getScale(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    aget v1, v0, v1

    mul-float/2addr v2, v1

    const/4 v1, 0x3

    aget v3, v0, v1

    aget v1, v0, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x1

    aget v2, v0, v1

    aget v1, v0, v1

    mul-float/2addr v2, v1

    const/4 v1, 0x4

    aget v3, v0, v1

    aget v0, v0, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p1
.end method

.method public getTranslation(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v1, v0, v1

    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p1
.end method

.method public getValues()[F
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    return-object v0
.end method

.method public idt()Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v3, 0x7

    aput v2, v0, v3

    const/16 v2, 0x8

    aput v1, v0, v2

    return-object p0
.end method

.method public inv()Lcom/badlogic/gdx/math/Matrix3;
    .locals 15

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix3;->det()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x4

    aget v4, v2, v3

    const/16 v5, 0x8

    aget v6, v2, v5

    mul-float/2addr v4, v6

    const/4 v6, 0x5

    aget v7, v2, v6

    const/4 v8, 0x7

    aget v9, v2, v8

    mul-float/2addr v7, v9

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    aput v4, v0, v7

    const/4 v4, 0x2

    aget v9, v2, v4

    aget v10, v2, v8

    mul-float/2addr v9, v10

    const/4 v10, 0x1

    aget v11, v2, v10

    aget v12, v2, v5

    mul-float/2addr v11, v12

    sub-float/2addr v9, v11

    aput v9, v0, v10

    aget v9, v2, v10

    aget v11, v2, v6

    mul-float/2addr v9, v11

    aget v11, v2, v4

    aget v12, v2, v3

    mul-float/2addr v11, v12

    sub-float/2addr v9, v11

    aput v9, v0, v4

    aget v9, v2, v6

    const/4 v11, 0x6

    aget v12, v2, v11

    mul-float/2addr v9, v12

    const/4 v12, 0x3

    aget v13, v2, v12

    aget v14, v2, v5

    mul-float/2addr v13, v14

    sub-float/2addr v9, v13

    aput v9, v0, v12

    aget v9, v2, v7

    aget v13, v2, v5

    mul-float/2addr v9, v13

    aget v13, v2, v4

    aget v14, v2, v11

    mul-float/2addr v13, v14

    sub-float/2addr v9, v13

    aput v9, v0, v3

    aget v9, v2, v4

    aget v13, v2, v12

    mul-float/2addr v9, v13

    aget v13, v2, v7

    aget v14, v2, v6

    mul-float/2addr v13, v14

    sub-float/2addr v9, v13

    aput v9, v0, v6

    aget v9, v2, v12

    aget v13, v2, v8

    mul-float/2addr v9, v13

    aget v13, v2, v3

    aget v14, v2, v11

    mul-float/2addr v13, v14

    sub-float/2addr v9, v13

    aput v9, v0, v11

    aget v9, v2, v10

    aget v13, v2, v11

    mul-float/2addr v9, v13

    aget v13, v2, v7

    aget v14, v2, v8

    mul-float/2addr v13, v14

    sub-float/2addr v9, v13

    aput v9, v0, v8

    aget v9, v2, v7

    aget v13, v2, v3

    mul-float/2addr v9, v13

    aget v13, v2, v10

    aget v14, v2, v12

    mul-float/2addr v13, v14

    sub-float/2addr v9, v13

    aput v9, v0, v5

    aget v9, v0, v7

    mul-float/2addr v9, v1

    aput v9, v2, v7

    aget v7, v0, v10

    mul-float/2addr v7, v1

    aput v7, v2, v10

    aget v7, v0, v4

    mul-float/2addr v7, v1

    aput v7, v2, v4

    aget v4, v0, v12

    mul-float/2addr v4, v1

    aput v4, v2, v12

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v2, v3

    aget v3, v0, v6

    mul-float/2addr v3, v1

    aput v3, v2, v6

    aget v3, v0, v11

    mul-float/2addr v3, v1

    aput v3, v2, v11

    aget v3, v0, v8

    mul-float/2addr v3, v1

    aput v3, v2, v8

    aget v0, v0, v5

    mul-float/2addr v1, v0

    aput v1, v2, v5

    return-object p0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Can\'t invert a singular matrix"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    move-object/from16 v4, p1

    iget-object v4, v4, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    aget v5, v4, v2

    mul-float/2addr v3, v5

    const/4 v5, 0x3

    aget v6, v1, v5

    const/4 v7, 0x1

    aget v8, v4, v7

    mul-float/2addr v6, v8

    add-float/2addr v3, v6

    const/4 v6, 0x6

    aget v8, v1, v6

    const/4 v9, 0x2

    aget v10, v4, v9

    mul-float/2addr v8, v10

    add-float/2addr v3, v8

    aget v8, v1, v2

    aget v10, v4, v5

    mul-float/2addr v8, v10

    aget v10, v1, v5

    const/4 v11, 0x4

    aget v12, v4, v11

    mul-float/2addr v10, v12

    add-float/2addr v8, v10

    aget v10, v1, v6

    const/4 v12, 0x5

    aget v13, v4, v12

    mul-float/2addr v10, v13

    add-float/2addr v8, v10

    aget v10, v1, v2

    aget v13, v4, v6

    mul-float/2addr v10, v13

    aget v13, v1, v5

    const/4 v14, 0x7

    aget v15, v4, v14

    mul-float/2addr v13, v15

    add-float/2addr v10, v13

    aget v13, v1, v6

    const/16 v15, 0x8

    aget v16, v4, v15

    mul-float v13, v13, v16

    add-float/2addr v10, v13

    aget v13, v1, v7

    aget v16, v4, v2

    mul-float v13, v13, v16

    aget v16, v1, v11

    aget v17, v4, v7

    mul-float v16, v16, v17

    add-float v13, v13, v16

    aget v16, v1, v14

    aget v17, v4, v9

    mul-float v16, v16, v17

    add-float v13, v13, v16

    aget v16, v1, v7

    aget v17, v4, v5

    mul-float v16, v16, v17

    aget v17, v1, v11

    aget v18, v4, v11

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, v1, v14

    aget v18, v4, v12

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, v1, v7

    aget v18, v4, v6

    mul-float v17, v17, v18

    aget v18, v1, v11

    aget v19, v4, v14

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, v1, v14

    aget v19, v4, v15

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, v1, v9

    aget v19, v4, v2

    mul-float v18, v18, v19

    aget v19, v1, v12

    aget v20, v4, v7

    mul-float v19, v19, v20

    add-float v18, v18, v19

    aget v19, v1, v15

    aget v20, v4, v9

    mul-float v19, v19, v20

    add-float v18, v18, v19

    aget v19, v1, v9

    aget v20, v4, v5

    mul-float v19, v19, v20

    aget v20, v1, v12

    aget v21, v4, v11

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aget v20, v1, v15

    aget v21, v4, v12

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aget v20, v1, v9

    aget v21, v4, v6

    mul-float v20, v20, v21

    aget v21, v1, v12

    aget v22, v4, v14

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aget v21, v1, v15

    aget v4, v4, v15

    mul-float v21, v21, v4

    add-float v20, v20, v21

    aput v3, v1, v2

    aput v13, v1, v7

    aput v18, v1, v9

    aput v8, v1, v5

    aput v16, v1, v11

    aput v19, v1, v12

    aput v10, v1, v6

    aput v17, v1, v14

    aput v20, v1, v15

    return-object v0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    move-object/from16 v2, p1

    iget-object v2, v2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    aget v5, v1, v3

    mul-float/2addr v4, v5

    const/4 v5, 0x3

    aget v6, v2, v5

    const/4 v7, 0x1

    aget v8, v1, v7

    mul-float/2addr v6, v8

    add-float/2addr v4, v6

    const/4 v6, 0x6

    aget v8, v2, v6

    const/4 v9, 0x2

    aget v10, v1, v9

    mul-float/2addr v8, v10

    add-float/2addr v4, v8

    aget v8, v2, v3

    aget v10, v1, v5

    mul-float/2addr v8, v10

    aget v10, v2, v5

    const/4 v11, 0x4

    aget v12, v1, v11

    mul-float/2addr v10, v12

    add-float/2addr v8, v10

    aget v10, v2, v6

    const/4 v12, 0x5

    aget v13, v1, v12

    mul-float/2addr v10, v13

    add-float/2addr v8, v10

    aget v10, v2, v3

    aget v13, v1, v6

    mul-float/2addr v10, v13

    aget v13, v2, v5

    const/4 v14, 0x7

    aget v15, v1, v14

    mul-float/2addr v13, v15

    add-float/2addr v10, v13

    aget v13, v2, v6

    const/16 v15, 0x8

    aget v16, v1, v15

    mul-float v13, v13, v16

    add-float/2addr v10, v13

    aget v13, v2, v7

    aget v16, v1, v3

    mul-float v13, v13, v16

    aget v16, v2, v11

    aget v17, v1, v7

    mul-float v16, v16, v17

    add-float v13, v13, v16

    aget v16, v2, v14

    aget v17, v1, v9

    mul-float v16, v16, v17

    add-float v13, v13, v16

    aget v16, v2, v7

    aget v17, v1, v5

    mul-float v16, v16, v17

    aget v17, v2, v11

    aget v18, v1, v11

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, v2, v14

    aget v18, v1, v12

    mul-float v17, v17, v18

    add-float v16, v16, v17

    aget v17, v2, v7

    aget v18, v1, v6

    mul-float v17, v17, v18

    aget v18, v2, v11

    aget v19, v1, v14

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, v2, v14

    aget v19, v1, v15

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aget v18, v2, v9

    aget v19, v1, v3

    mul-float v18, v18, v19

    aget v19, v2, v12

    aget v20, v1, v7

    mul-float v19, v19, v20

    add-float v18, v18, v19

    aget v19, v2, v15

    aget v20, v1, v9

    mul-float v19, v19, v20

    add-float v18, v18, v19

    aget v19, v2, v9

    aget v20, v1, v5

    mul-float v19, v19, v20

    aget v20, v2, v12

    aget v21, v1, v11

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aget v20, v2, v15

    aget v21, v1, v12

    mul-float v20, v20, v21

    add-float v19, v19, v20

    aget v20, v2, v9

    aget v21, v1, v6

    mul-float v20, v20, v21

    aget v21, v2, v12

    aget v22, v1, v14

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aget v2, v2, v15

    aget v21, v1, v15

    mul-float v2, v2, v21

    add-float v20, v20, v2

    aput v4, v1, v3

    aput v13, v1, v7

    aput v18, v1, v9

    aput v8, v1, v5

    aput v16, v1, v11

    aput v19, v1, v12

    aput v10, v1, v6

    aput v17, v1, v14

    aput v20, v1, v15

    return-object v0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->rotateRad(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    return-object p1
.end method

.method public rotateRad(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    const/4 v3, 0x3

    neg-float v1, v1

    aput v1, v2, v3

    const/4 v1, 0x4

    aput p1, v2, v1

    const/4 p1, 0x5

    aput v0, v2, p1

    const/4 p1, 0x6

    aput v0, v2, p1

    const/4 p1, 0x7

    aput v0, v2, p1

    const/16 p1, 0x8

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, p1

    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p1, v2}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    return-object p0
.end method

.method public scale(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 p2, 0x5

    aput p1, v0, p2

    const/4 p2, 0x6

    aput p1, v0, p2

    const/4 p2, 0x7

    aput p1, v0, p2

    const/16 p1, 0x8

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v0, p1

    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    return-object p0
.end method

.method public scale(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x4

    aput p1, v0, v2

    const/4 p1, 0x5

    aput v1, v0, p1

    const/4 p1, 0x6

    aput v1, v0, p1

    const/4 p1, 0x7

    aput v1, v0, p1

    const/16 p1, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    const/4 v3, 0x3

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    const/4 v3, 0x4

    aput v2, v0, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    const/4 v2, 0x6

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    const/4 v1, 0x7

    aput p1, v0, v1

    const/16 p1, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    const/4 v3, 0x3

    aput v1, v0, v3

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v1, v1, v3

    aput v1, v0, v2

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    aput v1, v0, v3

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0x8

    aget v1, v1, v3

    aput v1, v0, v2

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    iget-object p1, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget p1, p1, v1

    aput p1, v0, v3

    return-object p0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public setToRotation(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Matrix3;->setToRotationRad(F)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    return-object p1
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 1

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v0

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/math/Matrix3;->setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;

    move-result-object p1

    return-object p1
.end method

.method public setToRotation(Lcom/badlogic/gdx/math/Vector3;FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    const/4 v3, 0x4

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/4 p3, 0x7

    aput v2, v0, p3

    iget p3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    const/16 p1, 0x8

    aput v1, v0, p1

    return-object p0
.end method

.method public setToRotationRad(F)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v1, v3

    neg-float v0, v0

    const/4 v3, 0x3

    aput v0, v1, v3

    const/4 v0, 0x4

    aput p1, v1, v0

    const/4 p1, 0x5

    aput v2, v1, p1

    const/4 p1, 0x6

    aput v2, v1, p1

    const/4 p1, 0x7

    aput v2, v1, p1

    const/16 p1, 0x8

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v1, p1

    return-object p0
.end method

.method public setToScaling(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x0

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 p2, 0x5

    aput p1, v0, p2

    const/4 p2, 0x6

    aput p1, v0, p2

    const/4 p2, 0x7

    aput p1, v0, p2

    const/16 p1, 0x8

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v0, p1

    return-object p0
.end method

.method public setToScaling(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x4

    aput p1, v0, v2

    const/4 p1, 0x5

    aput v1, v0, p1

    const/4 p1, 0x6

    aput v1, v0, p1

    const/4 p1, 0x7

    aput v1, v0, p1

    const/16 p1, 0x8

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    return-object p0
.end method

.method public setToTranslation(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v2, 0x6

    aput p1, v0, v2

    const/4 p1, 0x7

    aput p2, v0, p1

    const/16 p1, 0x8

    aput v1, v0, p1

    return-object p0
.end method

.method public setToTranslation(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v3, 0x6

    aput v2, v0, v3

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v2, 0x7

    aput p1, v0, v2

    const/16 p1, 0x8

    aput v1, v0, p1

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v4, 0x2

    aput v3, v1, v4

    const/4 v4, 0x3

    aput v3, v1, v4

    const/4 v4, 0x4

    aput v2, v1, v4

    const/4 v4, 0x5

    aput v3, v1, v4

    const/4 v3, 0x6

    aput p1, v1, v3

    const/4 p1, 0x7

    aput p2, v1, p1

    const/16 p1, 0x8

    aput v2, v1, p1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    return-object p0
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v4, 0x2

    aput v3, v1, v4

    const/4 v4, 0x3

    aput v3, v1, v4

    const/4 v4, 0x4

    aput v2, v1, v4

    const/4 v4, 0x5

    aput v3, v1, v4

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v4, 0x6

    aput v3, v1, v4

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x7

    aput p1, v1, v3

    iget-object p1, p0, Lcom/badlogic/gdx/math/Matrix3;->tmp:[F

    const/16 v1, 0x8

    aput v2, p1, v1

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/Matrix3;->mul([F[F)V

    return-object p0
.end method

.method public transpose()Lcom/badlogic/gdx/math/Matrix3;
    .locals 13

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v4, v0, v3

    const/4 v5, 0x3

    aget v6, v0, v5

    const/4 v7, 0x5

    aget v8, v0, v7

    const/4 v9, 0x6

    aget v10, v0, v9

    const/4 v11, 0x7

    aget v12, v0, v11

    aput v2, v0, v5

    aput v4, v0, v9

    aput v6, v0, v1

    aput v8, v0, v11

    aput v10, v0, v3

    aput v12, v0, v7

    return-object p0
.end method

.method public trn(FF)Lcom/badlogic/gdx/math/Matrix3;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x7

    aget v1, v0, p1

    add-float/2addr v1, p2

    aput v1, v0, p1

    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method public trn(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix3;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v2, v0, v1

    iget p1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method
