.class Lcom/freeme/camera/common/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mInterface:Lcom/freeme/camera/common/exif/ExifInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/exif/ExifReader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/exif/ExifReader;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method constructor <init>(Lcom/freeme/camera/common/exif/ExifInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/exif/ExifReader;->mInterface:Lcom/freeme/camera/common/exif/ExifInterface;

    return-void
.end method


# virtual methods
.method protected read(Ljava/io/InputStream;)Lcom/freeme/camera/common/exif/ExifData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/freeme/camera/common/exif/ExifInvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/exif/ExifReader;->mInterface:Lcom/freeme/camera/common/exif/ExifInterface;

    invoke-static {p1, v0}, Lcom/freeme/camera/common/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/freeme/camera/common/exif/ExifInterface;)Lcom/freeme/camera/common/exif/ExifParser;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/common/exif/ExifData;

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->next()I

    move-result v1

    :goto_0
    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->getStripSize()I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v1

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->getStripIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/common/exif/ExifData;->setStripBytes(I[B)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/freeme/camera/common/exif/ExifReader;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Failed to read the strip bytes"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->getCompressedImageSize()I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v1

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/exif/ExifParser;->read([B)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/exif/ExifData;->setCompressedThumbnail([B)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/freeme/camera/common/exif/ExifReader;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Failed to read the compressed thumbnail"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->getTag()Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/exif/ExifTag;->getDataType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/exif/ExifParser;->readFullTagValue(Lcom/freeme/camera/common/exif/ExifTag;)V

    :cond_2
    invoke-virtual {v1}, Lcom/freeme/camera/common/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/exif/ExifData;->getIfdData(I)Lcom/freeme/camera/common/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/exif/IfdData;->setTag(Lcom/freeme/camera/common/exif/ExifTag;)Lcom/freeme/camera/common/exif/ExifTag;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->getTag()Lcom/freeme/camera/common/exif/ExifTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freeme/camera/common/exif/ExifTag;->hasValue()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/exif/ExifParser;->registerForTagValue(Lcom/freeme/camera/common/exif/ExifTag;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/freeme/camera/common/exif/ExifTag;->getIfd()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/exif/ExifData;->getIfdData(I)Lcom/freeme/camera/common/exif/IfdData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/exif/IfdData;->setTag(Lcom/freeme/camera/common/exif/ExifTag;)Lcom/freeme/camera/common/exif/ExifTag;

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/freeme/camera/common/exif/IfdData;

    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->getCurrentIfd()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/freeme/camera/common/exif/IfdData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/exif/ExifData;->addIfdData(Lcom/freeme/camera/common/exif/IfdData;)V

    :goto_1
    invoke-virtual {p1}, Lcom/freeme/camera/common/exif/ExifParser;->next()I

    move-result v1

    goto/16 :goto_0

    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
