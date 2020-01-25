.class Lorg/lasque/tusdk/core/exif/ExifData;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/exif/ExifParser$Section;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[Lorg/lasque/tusdk/core/exif/IfdData;

.field private final f:Ljava/nio/ByteOrder;

.field private g:[B

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:I

.field private l:S

.field public mUncompressedDataPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/core/exif/ExifData;->a:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/lasque/tusdk/core/exif/ExifData;->b:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifData;->c:[B

    return-void

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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/core/exif/IfdData;

    iput-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->i:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->j:I

    iput v1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->k:I

    iput-short v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->l:S

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->mUncompressedDataPosition:I

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->f:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method protected addIfdData(Lorg/lasque/tusdk/core/exif/IfdData;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/IfdData;->getId()I

    move-result v1

    aput-object p1, v0, v1

    return-void
.end method

.method protected addTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getIfd()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->addTag(Lorg/lasque/tusdk/core/exif/ExifTag;I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected addTag(Lorg/lasque/tusdk/core/exif/ExifTag;I)Lorg/lasque/tusdk/core/exif/ExifTag;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/lasque/tusdk/core/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/exif/ExifData;->getOrCreateIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected clearThumbnailAndStrips()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->g:[B

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

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
    instance-of v2, p1, Lorg/lasque/tusdk/core/exif/ExifData;

    if-eqz v2, :cond_7

    check-cast p1, Lorg/lasque/tusdk/core/exif/ExifData;

    iget-object v2, p1, Lorg/lasque/tusdk/core/exif/ExifData;->f:Ljava/nio/ByteOrder;

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifData;->f:Ljava/nio/ByteOrder;

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget-object v2, p1, Lorg/lasque/tusdk/core/exif/ExifData;->g:[B

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifData;->g:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p1, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

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

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v4

    if-eq v3, v4, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/core/exif/IfdData;->equals(Ljava/lang/Object;)Z

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
.end method

.method protected getAllTags()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/exif/ExifTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/IfdData;->getAllTags()[Lorg/lasque/tusdk/core/exif/ExifTag;

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
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method protected getAllTagsForIfd(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/exif/ExifTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/IfdData;->getAllTags()[Lorg/lasque/tusdk/core/exif/ExifTag;

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
            "Lorg/lasque/tusdk/core/exif/ExifTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lorg/lasque/tusdk/core/exif/IfdData;->getTag(S)Lorg/lasque/tusdk/core/exif/ExifTag;

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

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->f:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected getCompressedThumbnail()[B
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->g:[B

    return-object v0
.end method

.method protected getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;
    .locals 1

    invoke-static {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getImageSize()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->k:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->j:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getJpegProcess()S
    .locals 1

    iget-short v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->l:S

    return v0
.end method

.method protected getOrCreateIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/exif/IfdData;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/exif/IfdData;-><init>(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method

.method public getQualityGuess()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->i:I

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/exif/ExifParser$Section;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->d:Ljava/util/List;

    return-object v0
.end method

.method protected getStrip(I)[B
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method protected getStripCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getTag(SI)Lorg/lasque/tusdk/core/exif/ExifTag;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/exif/IfdData;->getTag(S)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getUserComment()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    sget v3, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-static {v3}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lorg/lasque/tusdk/core/exif/IfdData;->getTag(S)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Lorg/lasque/tusdk/core/exif/ExifTag;->getBytes([B)V

    new-array v0, v4, [B

    invoke-static {v3, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    sget-object v5, Lorg/lasque/tusdk/core/exif/ExifData;->a:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v0, Ljava/lang/String;

    array-length v5, v3

    sub-int/2addr v5, v4

    const-string v6, "US-ASCII"

    invoke-direct {v0, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_3
    sget-object v5, Lorg/lasque/tusdk/core/exif/ExifData;->b:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v0, Ljava/lang/String;

    array-length v5, v3

    sub-int/2addr v5, v4

    const-string v6, "EUC-JP"

    invoke-direct {v0, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_4
    sget-object v5, Lorg/lasque/tusdk/core/exif/ExifData;->c:[B

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    array-length v5, v3

    sub-int/2addr v5, v4

    const-string v6, "UTF-16"

    invoke-direct {v0, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_5
    return-object v2

    :catch_0
    const-string v0, "%s Failed to decode the user comment"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ExifData"

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method protected hasCompressedThumbnail()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->g:[B

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

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    aget-object p2, v0, p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/exif/IfdData;->removeTag(S)V

    return-void
.end method

.method protected removeThumbnailData()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifData;->clearThumbnailAndStrips()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->e:[Lorg/lasque/tusdk/core/exif/IfdData;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method

.method protected setCompressedThumbnail([B)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->g:[B

    return-void
.end method

.method protected setImageSize(II)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->k:I

    iput p2, p0, Lorg/lasque/tusdk/core/exif/ExifData;->j:I

    return-void
.end method

.method public setJpegProcess(S)V
    .locals 0

    iput-short p1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->l:S

    return-void
.end method

.method protected setQualityGuess(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->i:I

    return-void
.end method

.method public setSections(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/exif/ExifParser$Section;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->d:Ljava/util/List;

    return-void
.end method

.method protected setStripBytes(I[B)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifData;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method
