.class public Lorg/lasque/tusdk/core/struct/TuSdkSizeF;
.super Ljava/lang/Object;


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    iput p2, p0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    return-void
.end method

.method public static create(FF)Lorg/lasque/tusdk/core/struct/TuSdkSizeF;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public toSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    float-to-int v1, v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public toSizeCeil()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method

.method public toSizeFloor()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    iget v0, p0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->width:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lorg/lasque/tusdk/core/struct/TuSdkSizeF;->height:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    return-object v0
.end method
