.class public Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
.super Ljava/lang/Object;


# instance fields
.field public end:F

.field public start:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRange(FF)Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    invoke-direct {v0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;-><init>()V

    iput p0, v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    iput p1, v0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    return-object v0
.end method


# virtual methods
.method public contains(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    iget v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget p1, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public convertTo(Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;)Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    add-float/2addr v0, p1

    iget v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->makeRange(FF)Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public duration()F
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    iget v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public durationTimeUS()F
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->duration()F

    move-result v0

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, p0, :cond_2

    return v1

    :cond_2
    check-cast p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;

    iget v2, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    iget v3, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget p1, p1, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    iget v2, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public getEndTimeUS()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getStartTimeUS()F
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Range start = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->start:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/lasque/tusdk/video/editor/TuSDKTimeRange;->end:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
