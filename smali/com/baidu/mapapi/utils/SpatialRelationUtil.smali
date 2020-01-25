.class public Lcom/baidu/mapapi/utils/SpatialRelationUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z
    .locals 3

    invoke-static {p0, p1}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p0, p2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v1

    invoke-static {p1, p2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide p0

    add-double/2addr v1, p0

    double-to-int p0, v1

    if-ge v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .locals 10

    iget-wide v0, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v2, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v2, v4

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    iget-wide v4, p2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v4, v6

    iget-wide v6, p2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v0

    div-double/2addr v2, v0

    iget-wide v0, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    iget-wide v4, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide p1, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v6, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr p1, v6

    mul-double/2addr p1, v2

    add-double/2addr v4, p1

    new-instance p0, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    return-object p0
.end method

.method public static getNearestPointFromLine(Ljava/util/List;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/model/LatLng;",
            ")",
            "Lcom/baidu/mapapi/model/LatLng;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v2, v4, p1}, Lcom/baidu/mapapi/utils/SpatialRelationUtil;->b(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v4, v5, v2}, Lcom/baidu/mapapi/utils/SpatialRelationUtil;->a(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v2

    goto :goto_2

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1, v2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {p1, v2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    check-cast v1, Lcom/baidu/mapapi/model/LatLng;

    :goto_2
    if-eqz v0, :cond_3

    invoke-static {p1, v1}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v4

    invoke-static {p1, v0}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_4

    :cond_3
    move-object v0, v1

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    :goto_3
    return-object v0
.end method

.method public static isCircleContainsPoint(Lcom/baidu/mapapi/model/LatLng;ILcom/baidu/mapapi/model/LatLng;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Lcom/baidu/mapapi/utils/DistanceUtil;->getDistance(Lcom/baidu/mapapi/model/LatLng;Lcom/baidu/mapapi/model/LatLng;)D

    move-result-wide v1

    int-to-double p0, p1

    cmpl-double p0, v1, p0

    if-lez p0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    if-nez p0, :cond_2

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static isPolygonContainsPoint(Ljava/util/List;Lcom/baidu/mapapi/model/LatLng;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;",
            "Lcom/baidu/mapapi/model/LatLng;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v2, v4, v6

    if-nez v2, :cond_1

    iget-wide v4, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v6, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v2, v4, v6

    if-nez v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    move v4, v2

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_8

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mapapi/model/LatLng;

    add-int/lit8 v2, v2, 0x1

    rem-int v6, v2, v1

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v7, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    cmpl-double v7, v7, v9

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gez v7, :cond_5

    goto :goto_1

    :cond_5
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_6

    goto :goto_1

    :cond_6
    iget-wide v7, p1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v9, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v7, v9

    iget-wide v9, v6, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    iget-wide v11, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    iget-wide v9, v6, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v5, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    iget-wide v5, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v7, v5

    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpl-double v5, v7, v5

    if-nez v5, :cond_7

    return v3

    :cond_7
    iget-wide v5, p1, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    cmpg-double v5, v7, v5

    if-gez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v3, :cond_9

    move v0, v3

    :cond_9
    :goto_2
    return v0
.end method
