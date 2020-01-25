.class public Lorg/lasque/tusdk/core/encoder/TuSDKBuffSizeCalculator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculator(III)I
    .locals 1

    const/16 v0, 0x11

    if-eq p2, v0, :cond_0

    const/16 v0, 0x13

    if-eq p2, v0, :cond_0

    const/16 v0, 0x15

    if-eq p2, v0, :cond_0

    const v0, 0x32315659

    if-eq p2, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x3

    div-int/lit8 p0, p0, 0x2

    return p0
.end method
