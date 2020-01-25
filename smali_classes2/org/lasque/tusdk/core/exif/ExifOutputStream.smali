.class Lorg/lasque/tusdk/core/exif/ExifOutputStream;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/lasque/tusdk/core/exif/ExifInterface;

.field private b:Lorg/lasque/tusdk/core/exif/ExifData;

.field private c:Ljava/nio/ByteBuffer;


# direct methods
.method protected constructor <init>(Lorg/lasque/tusdk/core/exif/ExifInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->c:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/exif/IfdData;I)I
    .locals 5

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/IfdData;->getTagCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/IfdData;->getAllTags()[Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataSize()I

    move-result v4

    if-le v4, v1, :cond_0

    invoke-virtual {v3, p2}, Lorg/lasque/tusdk/core/exif/ExifTag;->setOffset(I)V

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataSize()I

    move-result v3

    add-int/2addr p2, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private a(Lorg/lasque/tusdk/core/exif/ExifData;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/exif/ExifData;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/exif/ExifTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/exif/ExifTag;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-static {v3}, Lorg/lasque/tusdk/core/exif/ExifInterface;->isOffsetTag(S)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->getIfd()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/lasque/tusdk/core/exif/ExifData;->removeTag(SI)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/exif/IfdData;

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;-><init>(I)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->addIfdData(Lorg/lasque/tusdk/core/exif/IfdData;)V

    :cond_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v3, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/exif/ExifInterface;->buildUninitializedTag(I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/lasque/tusdk/core/exif/IfdData;

    invoke-direct {v2, v3}, Lorg/lasque/tusdk/core/exif/IfdData;-><init>(I)V

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v3, v2}, Lorg/lasque/tusdk/core/exif/ExifData;->addIfdData(Lorg/lasque/tusdk/core/exif/IfdData;)V

    :cond_1
    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v4, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/core/exif/ExifInterface;->buildUninitializedTag(I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v3, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v0, v3}, Lorg/lasque/tusdk/core/exif/ExifInterface;->buildUninitializedTag(I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v0, :cond_6

    new-instance v0, Lorg/lasque/tusdk/core/exif/IfdData;

    invoke-direct {v0, v2}, Lorg/lasque/tusdk/core/exif/IfdData;-><init>(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->addIfdData(Lorg/lasque/tusdk/core/exif/IfdData;)V

    :cond_6
    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->buildUninitializedTag(I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->buildUninitializedTag(I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue(I)Z

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;->removeTag(S)V

    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    goto/16 :goto_4

    :cond_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/exif/ExifData;->hasUncompressedStrip()Z

    move-result v3

    if-eqz v3, :cond_e

    if-nez v0, :cond_a

    new-instance v0, Lorg/lasque/tusdk/core/exif/IfdData;

    invoke-direct {v0, v2}, Lorg/lasque/tusdk/core/exif/IfdData;-><init>(I)V

    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v2, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->addIfdData(Lorg/lasque/tusdk/core/exif/IfdData;)V

    :cond_a
    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/exif/ExifData;->getStripCount()I

    move-result v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v4, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/core/exif/ExifInterface;->buildUninitializedTag(I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v4, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    sget v5, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/exif/ExifInterface;->buildUninitializedTag(I)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_c

    new-array v2, v2, [J

    :goto_2
    iget-object v5, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/ExifData;->getStripCount()I

    move-result v5

    if-ge v1, v5, :cond_b

    iget-object v5, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v5, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getStrip(I)[B

    move-result-object v5

    array-length v5, v5

    int-to-long v5, v5

    aput-wide v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v4, v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue([J)Z

    invoke-virtual {v0, v3}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    invoke-virtual {v0, v4}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    goto :goto_3

    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-eqz v0, :cond_f

    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;->removeTag(S)V

    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;->removeTag(S)V

    :goto_3
    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;->removeTag(S)V

    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    :goto_4
    invoke-static {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;->removeTag(S)V

    :cond_f
    return-void

    :cond_10
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static a(Lorg/lasque/tusdk/core/exif/ExifTag;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    :pswitch_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getRational(I)Lorg/lasque/tusdk/core/exif/Rational;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeRational(Lorg/lasque/tusdk/core/exif/Rational;)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValueAt(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getStringByte()[B

    move-result-object v0

    array-length v2, v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result p0

    if-ne v2, p0, :cond_0

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-byte v1, v0, p0

    goto :goto_3

    :cond_0
    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->write([B)V

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->write(I)V

    goto :goto_4

    :pswitch_5
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getBytes([B)V

    :goto_3
    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->write([B)V

    :cond_1
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lorg/lasque/tusdk/core/exif/IfdData;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V
    .locals 7

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/IfdData;->getAllTags()[Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v0

    array-length v1, v0

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v6

    invoke-virtual {p2, v6}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataType()S

    move-result v6

    invoke-virtual {p2, v6}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v6

    invoke-virtual {p2, v6}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataSize()I

    move-result v6

    if-le v6, v4, :cond_0

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/ExifTag;->getOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    goto :goto_2

    :cond_0
    invoke-static {v5, p2}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/ExifTag;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataSize()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-virtual {p2, v2}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/IfdData;->getOffsetToNextIfd()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    array-length p1, v0

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataSize()I

    move-result v3

    if-le v3, v4, :cond_3

    invoke-static {v1, p2}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/ExifTag;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "%s writing thumbnail.."

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ExifOutputStream"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->write([B)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "%s writing uncompressed strip.."

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ExifOutputStream"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifData;->getStripCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getStrip(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private b()I
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;I)I

    move-result v2

    sget v3, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v3}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-virtual {v0, v3}, Lorg/lasque/tusdk/core/exif/IfdData;->getTag(S)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue(I)Z

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;I)I

    move-result v2

    iget-object v4, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v5, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v5}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lorg/lasque/tusdk/core/exif/IfdData;->getTag(S)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue(I)Z

    invoke-direct {p0, v4, v2}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;I)I

    move-result v2

    :cond_0
    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_1

    sget v4, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v4}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-virtual {v0, v4}, Lorg/lasque/tusdk/core/exif/IfdData;->getTag(S)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue(I)Z

    invoke-direct {p0, v3, v2}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;I)I

    move-result v2

    :cond_1
    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/exif/IfdData;->setOffsetToNextIfd(I)V

    invoke-direct {p0, v3, v2}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;I)I

    move-result v2

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lorg/lasque/tusdk/core/exif/IfdData;->getTag(S)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue(I)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifData;->hasUncompressedStrip()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifData;->getStripCount()I

    move-result v0

    new-array v0, v0, [J

    :goto_0
    iget-object v4, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/exif/ExifData;->getStripCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    int-to-long v4, v2

    aput-wide v4, v0, v1

    iget-object v4, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v4, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getStrip(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sget v1, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lorg/lasque/tusdk/core/exif/IfdData;->getTag(S)Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue([J)Z

    :cond_5
    :goto_1
    return v2
.end method

.method private b(Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/IfdData;Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected getExifData()Lorg/lasque/tusdk/core/exif/ExifData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    return-object v0
.end method

.method protected setExifData(Lorg/lasque/tusdk/core/exif/ExifData;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    return-void
.end method

.method public writeExifData(Ljava/io/OutputStream;)V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "%s Writing exif data..."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ExifOutputStream"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/ExifData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    const v4, 0xffff

    if-gt v1, v4, :cond_3

    new-instance v4, Ljava/io/BufferedOutputStream;

    const/high16 v5, 0x10000

    invoke-direct {v4, p1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-instance p1, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    invoke-direct {p1, v4}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    const/16 v4, 0xff

    invoke-virtual {p1, v4}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->write(I)V

    const/16 v4, 0xe1

    invoke-virtual {p1, v4}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->write(I)V

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    const v1, 0x45786966

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    invoke-virtual {p1, v3}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v3, :cond_1

    const/16 v1, 0x4d4d

    goto :goto_0

    :cond_1
    const/16 v1, 0x4949

    :goto_0
    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    const/16 v1, 0x2a

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeShort(S)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->writeInt(I)Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b(Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->a(Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/exif/ExifTag;

    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifOutputStream;->b:Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {v2, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->addTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/OrderedDataOutputStream;->flush()V

    return-void

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Exif header is too large (>64Kb)"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
