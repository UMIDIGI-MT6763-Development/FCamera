.class final Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->a(Ljava/util/List;Landroid/graphics/Point;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/camera2/params/Face;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$2;->a:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/camera2/params/Face;Landroid/hardware/camera2/params/Face;)I
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$2;->a:Landroid/graphics/Point;

    invoke-static {v0, p2}, Lorg/lasque/tusdk/core/utils/RectHelper;->computerPotintDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    iget-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$2;->a:Landroid/graphics/Point;

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
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/hardware/camera2/params/Face;

    check-cast p2, Landroid/hardware/camera2/params/Face;

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper$2;->compare(Landroid/hardware/camera2/params/Face;Landroid/hardware/camera2/params/Face;)I

    move-result p1

    return p1
.end method
