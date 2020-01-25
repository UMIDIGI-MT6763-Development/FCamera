.class Lorg/lasque/tusdk/core/exif/ExifReader;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/lasque/tusdk/core/exif/ExifInterface;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifReader;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;I)Lorg/lasque/tusdk/core/exif/ExifData;
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifReader;->a:Lorg/lasque/tusdk/core/exif/ExifInterface;

    invoke-static {p1, p2, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->parse(Ljava/io/InputStream;ILorg/lasque/tusdk/core/exif/ExifInterface;)Lorg/lasque/tusdk/core/exif/ExifParser;

    move-result-object p1

    new-instance p2, Lorg/lasque/tusdk/core/exif/ExifData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/lasque/tusdk/core/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->setSections(Ljava/util/List;)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getUncompressedDataPosition()I

    move-result v0

    iput v0, p2, Lorg/lasque/tusdk/core/exif/ExifData;->mUncompressedDataPosition:I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getQualityGuess()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->setQualityGuess(I)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getJpegProcess()S

    move-result v0

    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->setJpegProcess(S)V

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getImageWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getImageLength()I

    move-result v1

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    invoke-virtual {p2, v0, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->setImageSize(II)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->next()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getStripSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v3, v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getStripIndex()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_0

    :cond_1
    const-string v0, "%s Failed to read the strip bytes"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ExifReader"

    aput-object v3, v2, v1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getCompressedImageSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v3, v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->read([B)I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_0

    :cond_2
    const-string v0, "%s Failed to read the compressed thumbnail"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ExifReader"

    aput-object v3, v2, v1

    :goto_1
    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getTag()Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataType()S

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readFullTagValue(Lorg/lasque/tusdk/core/exif/ExifTag;)V

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getIfd()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/lasque/tusdk/core/exif/ExifData;->getIfdData(I)Lorg/lasque/tusdk/core/exif/IfdData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/exif/IfdData;->setTag(Lorg/lasque/tusdk/core/exif/ExifTag;)Lorg/lasque/tusdk/core/exif/ExifTag;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getTag()Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->hasValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->registerForTagValue(Lorg/lasque/tusdk/core/exif/ExifTag;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getIfd()I

    move-result v3

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v4

    invoke-virtual {p1, v3, v4}, Lorg/lasque/tusdk/core/exif/ExifParser;->isDefinedTag(II)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "%s skip tag because not registered in the tag table:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ExifReader"

    aput-object v5, v4, v1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lorg/lasque/tusdk/core/exif/IfdData;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->getCurrentIfd()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/exif/IfdData;-><init>(I)V

    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/exif/ExifData;->addIfdData(Lorg/lasque/tusdk/core/exif/IfdData;)V

    goto/16 :goto_0

    :cond_6
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
