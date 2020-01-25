.class final Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/CameraHelper;->sortFaceWithCenterList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Face;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Face;Landroid/hardware/Camera$Face;)I
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    iget-object v2, p2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v2, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object p1, p1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Point;

    iget-object v2, p2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object p2, p2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    invoke-direct {p1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerPotintDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerPotintDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide p1

    cmpl-double p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    check-cast p1, Landroid/hardware/Camera$Face;

    check-cast p2, Landroid/hardware/Camera$Face;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/CameraHelper$2;->compare(Landroid/hardware/Camera$Face;Landroid/hardware/Camera$Face;)I

    move-result p1

    return p1
.end method
