.class public Lcom/freeme/camera/data/PictureSizeInfo;
.super Ljava/lang/Object;
.source "PictureSizeInfo.java"


# instance fields
.field public height:I

.field private mDefaultOutImageSize:J

.field private mExpectOutImageSize:J

.field private mExpectScreenRatio:D

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mExpectOutImageSize:J

    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mDefaultOutImageSize:J

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    iput-wide v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mExpectScreenRatio:D

    iput p1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->width:I

    iput p2, p0, Lcom/freeme/camera/data/PictureSizeInfo;->height:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/freeme/camera/data/Size;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/freeme/camera/data/Size;

    iget v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->width:I

    iget v2, p1, Lcom/freeme/camera/data/Size;->width:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->height:I

    iget p1, p1, Lcom/freeme/camera/data/Size;->height:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getExpectScreenRatio()D
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mExpectScreenRatio:D

    return-wide v0
.end method

.method public getExpecttOutImageSize()J
    .locals 4

    iget-wide v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mExpectOutImageSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mDefaultOutImageSize:J

    return-wide v0

    :cond_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/data/PictureSizeInfo;->width:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setExpectOutImageSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mExpectOutImageSize:J

    return-void
.end method

.method public setExpectScreenRatio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mExpectScreenRatio:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureSizeInfo [width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExpectOutImageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mExpectOutImageSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultOutImageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mDefaultOutImageSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExpectScreenRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/freeme/camera/data/PictureSizeInfo;->mExpectScreenRatio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
