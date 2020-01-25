.class final Lcom/badlogic/gdx/math/Interpolation$2;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 3

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x41700000    # 15.0f

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    return p1
.end method
