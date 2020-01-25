.class public Lcom/mediatek/accessor/packer/PackUtils;
.super Ljava/lang/Object;
.source "PackUtils.java"


# static fields
.field public static final APP1:I = 0xffe1

.field public static final APP15:I = 0xffef

.field public static final APP15_LENGTHTAG_BYTE_COUNT:I = 0x4

.field public static final APPXTAG_PLUS_LENGTHTAG_BYTE_COUNT:I = 0x4

.field public static final APP_SECTION_MAX_LENGTH:Ljava/lang/String; = "0xffb2"

.field private static final BYTE_COUNT_4:I = 0x4

.field private static final BYTE_MASK:I = 0xff

.field public static final CUSTOMIZED_SERIAL_NUMBER_LENGTH:I = 0x1

.field public static final CUSTOMIZED_TOTAL_FORMAT_LENGTH:I = 0xc

.field public static final CUSTOMIZED_TOTAL_LENGTH:I = 0x4

.field public static final DHT:I = 0xffc4

.field public static final DQT:I = 0xffdb

.field public static final EXIF_HEADER:Ljava/lang/String; = "Exif"

.field public static final FIXED_BUFFER_SIZE:I = 0x2800

.field private static final HIGH_HALF_BYTE_MASK:I = 0xf0

.field private static final LOW_HALF_BYTE_MASK:I = 0xf

.field public static final MAX_BYTE_PER_APP1:I = 0xffb2

.field public static final MAX_LEN_FOR_REAL_XMP_DATA_PER_APP1:I

.field public static final MD5_BYTE_COUNT:I = 0x20

.field public static final PARTITION_OFFSET_BYTE_COUNT:I = 0x4

.field private static final SHIFT_BIT_COUNT_4:I = 0x4

.field private static final SHIFT_BIT_COUNT_8:I = 0x8

.field public static final SOI:I = 0xffd8

.field public static final SOS:I = 0xffda

.field private static final TAG:Ljava/lang/String;

.field public static final TOTAL_LENGTH_BYTE_COUNT:I = 0x4

.field public static final TYPE_BUFFER_COUNT:I = 0x7

.field public static final TYPE_CLEAR_IMAGE:Ljava/lang/String; = "CLRIMAG"

.field public static final TYPE_DEBUG_BUFFER:Ljava/lang/String; = "DEBUGBF"

.field public static final TYPE_DEPTH_DATA:Ljava/lang/String; = "DEPTHBF"

.field public static final TYPE_EXIF:Ljava/lang/String; = "exif"

.field public static final TYPE_EXTENDED_XMP:Ljava/lang/String; = "extendedXmp"

.field public static final TYPE_JPS_DATA:Ljava/lang/String; = "JPSDATA"

.field public static final TYPE_JPS_MASK:Ljava/lang/String; = "JPSMASK"

.field public static final TYPE_LDC_DATA:Ljava/lang/String; = "LDCDATA"

.field public static final TYPE_SEGMENT_MASK:Ljava/lang/String; = "SEGMASK"

.field public static final TYPE_STANDARD_XMP:Ljava/lang/String; = "standardXmp"

.field public static final TYPE_UNKNOW_APP15:Ljava/lang/String; = "unknownApp15"

.field public static final TYPE_XMP_DEPTH:Ljava/lang/String; = "XMPDEPT"

.field public static final WRITE_XMP_AFTER_FIRST_APP1:I = 0x2

.field public static final WRITE_XMP_AFTER_SOI:I = 0x0

.field public static final WRITE_XMP_BEFORE_FIRST_APP1:I = 0x1

.field public static final XMP_COMMON_HEADER_LEN:I

.field public static final XMP_EXT_HEADER:Ljava/lang/String; = "http://ns.adobe.com/xmp/extension/"

.field public static final XMP_HEADER_START:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/\u0000"

.field private static final XMP_HEADER_TAIL_BYTE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/mediatek/accessor/packer/PackUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v0, "http://ns.adobe.com/xmp/extension/"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/mediatek/accessor/packer/PackUtils;->XMP_COMMON_HEADER_LEN:I

    sget v0, Lcom/mediatek/accessor/packer/PackUtils;->XMP_COMMON_HEADER_LEN:I

    const v1, 0xffb2

    sub-int/2addr v1, v0

    sput v1, Lcom/mediatek/accessor/packer/PackUtils;->MAX_LEN_FOR_REAL_XMP_DATA_PER_APP1:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteToInt([B)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static checkAppSectionTypeInStream(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/data/Section;)V
    .locals 5

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    iget v0, p1, Lcom/mediatek/accessor/data/Section;->marker:I

    const v1, 0xffef

    const-wide/16 v2, 0x4

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-wide v0, p1, Lcom/mediatek/accessor/data/Section;->offset:J

    add-long/2addr v0, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    const/4 v0, 0x7

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([BII)I

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "JPSDATA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "JPSMASK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DEPTHBF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SEGMASK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CLRIMAG"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LDCDATA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DEBUGBF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "unknownApp15"

    iput-object p0, p1, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    return-void

    :cond_2
    :goto_0
    iput-object p0, p1, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    return-void

    :cond_3
    iget v0, p1, Lcom/mediatek/accessor/data/Section;->marker:I

    const v1, 0xffe1

    if-ne v0, v1, :cond_6

    iget-wide v0, p1, Lcom/mediatek/accessor/data/Section;->offset:J

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    const/16 v0, 0x22

    new-array v0, v0, [B

    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([BII)I

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    const-string v1, "http://ns.adobe.com/xmp/extension/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "extendedXmp"

    iput-object p0, p1, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/String;

    const/16 v1, 0x1d

    invoke-direct {p0, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "standardXmp"

    iput-object p0, p1, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "Exif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "exif"

    iput-object p0, p1, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<checkAppSectionTypeInStream> IOException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object p1, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<checkAppSectionTypeInStream> UnsupportedEncodingException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    sget-object p0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string p1, "<checkAppSectionTypeInStream> input stream or section is null!!!"

    invoke-static {p0, p1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static copyToStreamWithFixBuffer(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;)V
    .locals 4

    const/16 v0, 0x2800

    new-array v1, v0, [B

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write([B)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v0, "<copyToStreamWithFixBuffer> Exception"

    invoke-static {p1, v0, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static createMd5([B)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v2, "<createMd5> NoSuchAlgorithmException "

    invoke-static {v1, v2, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    sget-object p0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v1, "<createMd5> input error!!"

    invoke-static {p0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static findProperLocationForXmp(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/data/Section;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/data/Section;

    iget v3, v2, Lcom/mediatek/accessor/data/Section;->marker:I

    const v4, 0xffe1

    if-ne v3, v4, :cond_1

    const-string p0, "exif"

    iget-object v0, v2, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getCustomTypeName([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static getMd5([B)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/mediatek/accessor/packer/PackUtils;->createMd5([B)[B

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v0, "<getMd5> error!!"

    invoke-static {p0, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getSectionTag(Lcom/mediatek/accessor/data/Section;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "marker 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/accessor/data/Section;->marker:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offset 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mediatek/accessor/data/Section;->offset:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", length 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/accessor/data/Section;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getXmpCommonHeader(Ljava/lang/String;II)[B
    .locals 4

    sget v0, Lcom/mediatek/accessor/packer/PackUtils;->MAX_LEN_FOR_REAL_XMP_DATA_PER_APP1:I

    mul-int/2addr v0, p2

    sget p2, Lcom/mediatek/accessor/packer/PackUtils;->XMP_COMMON_HEADER_LEN:I

    new-array p2, p2, [B

    const-string v1, "http://ns.adobe.com/xmp/extension/"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-static {v1, v3, p2, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    aput-byte v3, p2, v2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v1, p0

    const/16 v2, 0x23

    invoke-static {p0, v3, p2, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length p0, p0

    add-int/2addr v2, p0

    const/4 p0, 0x4

    invoke-static {p1, p0}, Lcom/mediatek/accessor/packer/PackUtils;->intToByteBuffer(II)[B

    move-result-object p1

    array-length v1, p1

    invoke-static {p1, v3, p2, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length p1, p1

    add-int/2addr v2, p1

    invoke-static {v0, p0}, Lcom/mediatek/accessor/packer/PackUtils;->intToByteBuffer(II)[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, v3, p2, v2, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object p2
.end method

.method public static intToByteBuffer(II)[B
    .locals 2

    new-array v0, p1, [B

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static parseAppInfoFromStream(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/data/Section;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v0, "<parseAppInfoFromStream> input stream is null!!!"

    invoke-static {p0, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->readUnsignedShort()I

    move-result v2

    const v3, 0xffd8

    if-eq v2, v3, :cond_1

    sget-object p0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v0, "<parseAppInfoFromStream> error, find no SOI"

    invoke-static {p0, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    sget-object v2, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v3, "<parseAppInfoFromStream> parse begin!!!"

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->readUnsignedShort()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const v4, 0xffda

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->readUnsignedShort()I

    move-result v6

    new-instance v7, Lcom/mediatek/accessor/data/Section;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/mediatek/accessor/data/Section;-><init>(IJI)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, -0x2

    int-to-long v3, v6

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->skip(J)J

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/accessor/data/Section;

    invoke-static {p0, v4}, Lcom/mediatek/accessor/packer/PackUtils;->checkAppSectionTypeInStream(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/data/Section;)V

    sget-object v4, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<parseAppInfoFromStream> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/data/Section;

    invoke-static {v6}, Lcom/mediatek/accessor/packer/PackUtils;->getSectionTag(Lcom/mediatek/accessor/data/Section;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/accessor/util/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    sget-object p0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v0, "<parseAppInfoFromStream> parse end!!!"

    invoke-static {p0, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    sget-object v0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v1, "<parseAppInfoFromStream> IOException "

    invoke-static {v0, v1, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static writeImageBuffer(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;)V
    .locals 6

    if-nez p0, :cond_0

    sget-object p0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string p1, "<writeImageBuffer> input stream is null!!!"

    invoke-static {p0, p1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->readUnsignedShort()I

    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->readUnsignedShort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const v2, 0xffdb

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->readUnsignedShort()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->skip(J)J

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    const/16 v0, 0x2800

    new-array v2, v0, [B

    :goto_1
    invoke-virtual {p0, v2}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([B)I

    move-result v3

    if-eq v3, v1, :cond_3

    if-ne v3, v0, :cond_2

    invoke-virtual {p1, v2}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write([B)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static writeSectionToStream(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;)V
    .locals 4

    sget-object v0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<writeSectionToStream> sec.type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v0, p2, Lcom/mediatek/accessor/data/Section;->marker:I

    invoke-virtual {p1, v0}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->writeShort(I)V

    iget v0, p2, Lcom/mediatek/accessor/data/Section;->length:I

    invoke-virtual {p1, v0}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->writeShort(I)V

    iget-wide v0, p2, Lcom/mediatek/accessor/data/Section;->offset:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    iget p2, p2, Lcom/mediatek/accessor/data/Section;->length:I

    add-int/lit8 p2, p2, -0x2

    new-array p2, p2, [B

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p2, v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([BII)I

    invoke-virtual {p1, p2}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string p2, "<writeSectionToStream> IOException"

    invoke-static {p1, p2, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static writeSectionToStream(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;)V
    .locals 3

    sget-object v0, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<writeSectionToStream> sec.type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v0, p1, Lcom/mediatek/accessor/data/Section;->marker:I

    invoke-virtual {p0, v0}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->writeShort(I)V

    iget v0, p1, Lcom/mediatek/accessor/data/Section;->length:I

    invoke-virtual {p0, v0}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->writeShort(I)V

    iget-object p1, p1, Lcom/mediatek/accessor/data/Section;->buffer:[B

    invoke-virtual {p0, p1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/mediatek/accessor/packer/PackUtils;->TAG:Ljava/lang/String;

    const-string v0, "<writeSectionToStream> IOException"

    invoke-static {p1, v0, p0}, Lcom/mediatek/accessor/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
