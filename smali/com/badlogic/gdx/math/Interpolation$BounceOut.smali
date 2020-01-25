.class public Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceOut"
.end annotation


# instance fields
.field final heights:[F

.field final widths:[F


# direct methods
.method public constructor <init>(I)V
    .locals 10

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    new-array v1, p1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    iget-object v1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    const v2, 0x3e19999a    # 0.15f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e4ccccd    # 0.2f

    const v7, 0x3ecccccd    # 0.4f

    const/4 v8, 0x3

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v4, 0x3e99999a    # 0.3f

    aput v4, p1, v3

    aput v4, p1, v9

    aput v6, p1, v0

    aput v5, p1, v8

    const/4 v6, 0x4

    aput v5, p1, v6

    const p1, 0x3ee66666    # 0.45f

    aput p1, v1, v9

    aput v4, v1, v0

    aput v2, v1, v8

    const p1, 0x3d75c28f    # 0.06f

    aput p1, v1, v6

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v4, 0x3eae147b    # 0.34f

    aput v4, p1, v3

    aput v4, p1, v9

    aput v6, p1, v0

    aput v2, p1, v8

    const p1, 0x3e851eb8    # 0.26f

    aput p1, v1, v9

    const p1, 0x3de147ae    # 0.11f

    aput p1, v1, v0

    const p1, 0x3cf5c28f    # 0.03f

    aput p1, v1, v8

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aput v7, p1, v3

    aput v7, p1, v9

    aput v6, p1, v0

    aput v4, v1, v9

    aput v5, v1, v0

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const v0, 0x3f19999a    # 0.6f

    aput v0, p1, v3

    aput v7, p1, v9

    aput v4, v1, v9

    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v0, p1, v3

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    aput v0, p1, v3

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bounces cannot be < 2 or > 5: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>([F[F)V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    iput-object p2, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must be the same number of widths and heights."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public apply(F)F
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr p1, v2

    array-length v0, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->widths:[F

    aget v3, v3, v1

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->heights:[F

    aget v2, v0, v1

    goto :goto_1

    :cond_0
    sub-float/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    div-float/2addr p1, v3

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr v0, v3

    mul-float/2addr v0, v2

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    sub-float/2addr v0, p1

    mul-float/2addr v0, v3

    sub-float/2addr v1, v0

    return v1
.end method
