.class Lcom/freeme/camera/common/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final USER_COMMENT_ASCII:[B

.field private static final USER_COMMENT_JIS:[B

.field private static final USER_COMMENT_UNICODE:[B


# instance fields
.field private final mByteOrder:Ljava/nio/ByteOrder;

.field private final mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

.field private mStripBytes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mThumbnail:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/exif/ExifData;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/exif/ExifData;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/freeme/camera/common/exif/ExifData;->USER_COMMENT_ASCII:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/freeme/camera/common/exif/ExifData;->USER_COMMENT_JIS:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/freeme/camera/common/exif/ExifData;->USER_COMMENT_UNICODE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/freeme/camera/common/exif/IfdData;

    iput-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/freeme/camera/common/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lcom/freeme/camera/common/exif/IfdData;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lcom/freeme/camera/common/exif/ExifTag;)Lcom/freeme/camera/common/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifTag;->getIfd()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/freeme/camera/common/exif/ExifData;->addTag(Lcom/freeme/camera/common/exif/ExifTag;I)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected addTag(Lcom/freeme/camera/common/exif/ExifTag;I)Lcom/freeme/camera/common/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/freeme/camera/common/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/freeme/camera/common/exif/ExifData;->getOrCreateIfdData(I)Lcom/freeme/camera/common/exif/IfdData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/exif/IfdData;->setTag(Lcom/freeme/camera/common/exif/ExifTag;)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mThumbnail:[B

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/freeme/camera/common/exif/ExifData;

    if-eqz v2, :cond_8

    check-cast p1, Lcom/freeme/camera/common/exif/ExifData;

    iget-object v2, p1, Lcom/freeme/camera/common/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lcom/freeme/camera/common/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lcom/freeme/camera/common/exif/ExifData;->mThumbnail:[B

    iget-object v3, p0, Lcom/freeme/camera/common/exif/ExifData;->mThumbnail:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p1, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_6

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/exif/ExifData;->getIfdData(I)Lcom/freeme/camera/common/exif/IfdData;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/freeme/camera/common/exif/ExifData;->getIfdData(I)Lcom/freeme/camera/common/exif/IfdData;

    move-result-object v4

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Lcom/freeme/camera/common/exif/IfdData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1

    :cond_8
    return v1
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/exif/ExifTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/freeme/camera/common/exif/IfdData;->getAllTags()[Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object v5

    if-eqz v5, :cond_0

    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/IfdData;->getAllTags()[Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method

.method protected getAllTagsForTagId(S)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/exif/ExifTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/freeme/camera/common/exif/IfdData;->getTag(S)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mThumbnail:[B

    return-object v0
.end method

.method protected getIfdData(I)Lcom/freeme/camera/common/exif/IfdData;
    .locals 1

    invoke-static {p1}, Lcom/freeme/camera/common/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getOrCreateIfdData(I)Lcom/freeme/camera/common/exif/IfdData;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/exif/IfdData;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/exif/IfdData;-><init>(I)V

    iget-object v1, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected getStripCount()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lcom/freeme/camera/common/exif/ExifTag;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/exif/IfdData;->getTag(S)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    sget v3, Lcom/freeme/camera/common/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v3}, Lcom/freeme/camera/common/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lcom/freeme/camera/common/exif/IfdData;->getTag(S)Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/freeme/camera/common/exif/ExifTag;->getComponentCount()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/freeme/camera/common/exif/ExifTag;->getComponentCount()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lcom/freeme/camera/common/exif/ExifTag;->getBytes([B)V

    new-array v0, v4, [B

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    sget-object v1, Lcom/freeme/camera/common/exif/ExifData;->USER_COMMENT_ASCII:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/String;

    array-length v1, v3

    sub-int/2addr v1, v4

    const-string v5, "US-ASCII"

    invoke-direct {v0, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v1, Lcom/freeme/camera/common/exif/ExifData;->USER_COMMENT_JIS:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/String;

    array-length v1, v3

    sub-int/2addr v1, v4

    const-string v5, "EUC-JP"

    invoke-direct {v0, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_4
    sget-object v1, Lcom/freeme/camera/common/exif/ExifData;->USER_COMMENT_UNICODE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    array-length v1, v3

    sub-int/2addr v1, v4

    const-string v5, "UTF-16"

    invoke-direct {v0, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    return-object v2

    :catch_0
    sget-object v0, Lcom/freeme/camera/common/exif/ExifData;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "Failed to decode the user comment"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mThumbnail:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected hasUncompressedStrip()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeTag(SI)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/exif/IfdData;->removeTag(S)V

    return-void
.end method

.method protected removeThumbnailData()V
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/camera/common/exif/ExifData;->clearThumbnailAndStrips()V

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mIfdDatas:[Lcom/freeme/camera/common/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/exif/ExifData;->mThumbnail:[B

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
