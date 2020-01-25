.class Lorg/lasque/tusdk/core/exif/ExifParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/exif/ExifParser$Section;,
        Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;,
        Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;,
        Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;
    }
.end annotation


# static fields
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds

.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8

.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3

.field public static final EVENT_END:I = 0x5

.field public static final EVENT_NEW_TAG:I = 0x1

.field public static final EVENT_START_OF_IFD:I = 0x0

.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4

.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2

.field protected static final EXIF_HEADER:I = 0x45786966

.field protected static final EXIF_HEADER_TAIL:S = 0x0s

.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s

.field protected static final OFFSET_SIZE:I = 0x2

.field protected static final TAG_SIZE:I = 0xc

.field protected static final TIFF_HEADER_TAIL:S = 0x2as

.field static final a:[I

.field static final b:[I

.field static final c:[[I

.field private static final d:Ljava/nio/charset/Charset;

.field private static final e:S

.field private static final f:S

.field private static final g:S

.field private static final h:S

.field private static final i:S

.field private static final j:S

.field private static final k:S


# instance fields
.field private A:I

.field private B:I

.field private C:S

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/exif/ExifParser$Section;",
            ">;"
        }
    .end annotation
.end field

.field private E:I

.field private final F:[B

.field private final G:Ljava/nio/ByteBuffer;

.field private final l:I

.field private final m:Lorg/lasque/tusdk/core/exif/ExifInterface;

.field private final n:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

.field private p:I

.field private q:I

.field private r:I

.field private s:Lorg/lasque/tusdk/core/exif/ExifTag;

.field private t:Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

.field private u:Lorg/lasque/tusdk/core/exif/ExifTag;

.field private v:Lorg/lasque/tusdk/core/exif/ExifTag;

.field private w:Z

.field private x:[B

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifParser;->d:Ljava/nio/charset/Charset;

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lorg/lasque/tusdk/core/exif/ExifParser;->e:S

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lorg/lasque/tusdk/core/exif/ExifParser;->f:S

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lorg/lasque/tusdk/core/exif/ExifParser;->g:S

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lorg/lasque/tusdk/core/exif/ExifParser;->h:S

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lorg/lasque/tusdk/core/exif/ExifParser;->i:S

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lorg/lasque/tusdk/core/exif/ExifParser;->j:S

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v0

    sput-short v0, Lorg/lasque/tusdk/core/exif/ExifParser;->k:S

    const/16 v0, 0x40

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/lasque/tusdk/core/exif/ExifParser;->a:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifParser;->b:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifParser;->a:[I

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/exif/ExifParser;->b:[I

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/lasque/tusdk/core/exif/ExifParser;->c:[[I

    return-void

    :array_0
    .array-data 4
        0x10
        0xb
        0xc
        0xe
        0xc
        0xa
        0x10
        0xe
        0xd
        0xe
        0x12
        0x11
        0x10
        0x13
        0x18
        0x28
        0x1a
        0x18
        0x16
        0x16
        0x18
        0x31
        0x23
        0x25
        0x1d
        0x28
        0x3a
        0x33
        0x3d
        0x3c
        0x39
        0x33
        0x38
        0x37
        0x40
        0x48
        0x5c
        0x4e
        0x40
        0x44
        0x57
        0x45
        0x37
        0x38
        0x50
        0x6d
        0x51
        0x57
        0x5f
        0x62
        0x67
        0x68
        0x67
        0x3e
        0x4d
        0x71
        0x79
        0x70
        0x64
        0x78
        0x5c
        0x65
        0x67
        0x63
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x12
        0x12
        0x18
        0x15
        0x18
        0x2f
        0x1a
        0x1a
        0x2f
        0x63
        0x42
        0x38
        0x42
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
        0x63
    .end array-data
.end method

.method private constructor <init>(Ljava/io/InputStream;ILorg/lasque/tusdk/core/exif/ExifInterface;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->p:I

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->q:I

    iput-short v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->C:S

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->E:I

    const/16 v1, 0x8

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->F:[B

    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->F:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_4

    const-string v2, "%s Reading exif..."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ExifParser"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->D:Ljava/util/List;

    iput-object p3, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->m:Lorg/lasque/tusdk/core/exif/ExifInterface;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(Ljava/io/InputStream;)Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    iput p2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->l:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(Lorg/lasque/tusdk/core/exif/CountedDataInputStream;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide p1

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, p1, v2

    if-gtz p3, :cond_3

    long-to-int p3, p1

    iput p3, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->y:I

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->r:I

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(IJ)V

    const-wide/16 v2, 0x8

    cmp-long p1, p1, v2

    if-eqz p1, :cond_2

    sub-int/2addr p3, v1

    new-array p1, p3, [B

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->x:[B

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->x:[B

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->read([B)I

    :cond_2
    return-void

    :cond_3
    new-instance p3, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null argument inputStream to ExifParser"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/io/InputStream;[BII)I
    .locals 3

    const/16 v0, 0x400

    invoke-static {v0, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v1, v2

    add-int/2addr p3, v2

    sub-int v2, p4, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method static a([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private a(Ljava/io/InputStream;)Lorg/lasque/tusdk/core/exif/CountedDataInputStream;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readUnsignedByte()I

    move-result v2

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readUnsignedByte()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v2, v5, :cond_9

    const/16 v2, 0xd8

    if-eq v3, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    move-object v2, v4

    :goto_0
    move v3, v6

    move v8, v3

    :goto_1
    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readUnsignedByte()I

    move-result v9

    if-eq v9, v5, :cond_8

    if-ne v3, v5, :cond_8

    const/16 v3, 0xa

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-le v8, v3, :cond_1

    const-string v3, "%s Extraneous %s padding bytes before section %s"

    new-array v12, v10, [Ljava/lang/Object;

    const-string v13, "ExifParser"

    aput-object v13, v12, v6

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v11

    invoke-static {v3, v12}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v3, Lorg/lasque/tusdk/core/exif/ExifParser$Section;

    invoke-direct {v3}, Lorg/lasque/tusdk/core/exif/ExifParser$Section;-><init>()V

    iput v9, v3, Lorg/lasque/tusdk/core/exif/ExifParser$Section;->b:I

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readByte()B

    move-result v8

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readByte()B

    move-result v12

    and-int/lit16 v13, v8, 0xff

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    and-int/lit16 v15, v12, 0xff

    or-int/2addr v13, v15

    if-lt v13, v11, :cond_7

    iput v13, v3, Lorg/lasque/tusdk/core/exif/ExifParser$Section;->a:I

    new-array v15, v13, [B

    aput-byte v8, v15, v6

    aput-byte v12, v15, v7

    add-int/lit8 v8, v13, -0x2

    invoke-direct {v0, v1, v15, v11, v8}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(Ljava/io/InputStream;[BII)I

    move-result v12

    if-ne v12, v8, :cond_6

    iput-object v15, v3, Lorg/lasque/tusdk/core/exif/ExifParser$Section;->c:[B

    const/16 v8, 0xed

    if-eq v9, v8, :cond_4

    const/16 v8, 0xfe

    if-eq v9, v8, :cond_3

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    packed-switch v9, :pswitch_data_4

    const-string v8, "%s Unknown marker: 0x%2X, length: %s"

    new-array v12, v10, [Ljava/lang/Object;

    const-string v14, "ExifParser"

    aput-object v14, v12, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v11

    invoke-static {v8, v12}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_0
    if-lt v13, v14, :cond_4

    invoke-direct {v0, v15, v11}, Lorg/lasque/tusdk/core/exif/ExifParser;->b([BI)I

    move-result v8

    const/4 v12, 0x6

    invoke-direct {v0, v15, v12}, Lorg/lasque/tusdk/core/exif/ExifParser;->c([BI)S

    move-result v12

    const v5, 0x45786966

    if-ne v8, v5, :cond_2

    if-nez v12, :cond_2

    new-instance v2, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v8, v13, -0x8

    invoke-direct {v5, v15, v14, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v2, v5}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V

    add-int/lit8 v5, v13, -0x6

    invoke-virtual {v2, v5}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->setEnd(I)V

    goto :goto_3

    :cond_2
    const-string v5, "%s Image cotains XMP section"

    new-array v8, v7, [Ljava/lang/Object;

    const-string v12, "ExifParser"

    aput-object v12, v8, v6

    invoke-static {v5, v8}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    const/16 v5, 0x10

    if-ge v13, v5, :cond_4

    goto :goto_2

    :pswitch_2
    invoke-direct {v0, v15, v13}, Lorg/lasque/tusdk/core/exif/ExifParser;->e([BI)V

    goto :goto_3

    :pswitch_3
    iget-object v4, v0, Lorg/lasque/tusdk/core/exif/ExifParser;->D:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/exif/ExifParser;->E:I

    return-object v2

    :pswitch_4
    const-string v1, "%s No image in jpeg!"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "ExifParser"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :pswitch_5
    invoke-direct {v0, v15, v9}, Lorg/lasque/tusdk/core/exif/ExifParser;->d([BI)V

    goto :goto_3

    :cond_3
    :goto_2
    move-object v5, v2

    move v2, v7

    goto :goto_4

    :cond_4
    :goto_3
    :pswitch_6
    move-object v5, v2

    move v2, v6

    :goto_4
    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/lasque/tusdk/core/exif/ExifParser;->D:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    const-string v2, "%s ignoring marker: 0x%2X, length: %s"

    new-array v3, v10, [Ljava/lang/Object;

    const-string v8, "ExifParser"

    aput-object v8, v3, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v11

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    move-object v2, v5

    const/16 v5, 0xff

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Premature end of file? Expecting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;

    const-string v2, "Invalid marker"

    invoke-direct {v1, v2}, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move v3, v9

    const/16 v5, 0xff

    goto/16 :goto_1

    :cond_9
    :goto_6
    const-string v1, "%s invalid jpeg header"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "ExifParser"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcd
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd9
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v1

    invoke-direct {p3, p1, v1}, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/exif/CountedDataInputStream;)V
    .locals 2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x4949

    if-ne v1, v0, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_2

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readShort()S

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    new-instance p1, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;

    const-string v0, "Invalid TIFF header"

    invoke-direct {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;

    const-string v0, "Invalid TIFF header"

    invoke-direct {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/lasque/tusdk/core/exif/ExifTag;)V
    .locals 5

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getTagId()S

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getIfd()I

    move-result v1

    sget-short v2, Lorg/lasque/tusdk/core/exif/ExifParser;->e:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    :goto_0
    invoke-virtual {p1, v4}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValueAt(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(IJ)V

    goto/16 :goto_2

    :cond_2
    sget-short v2, Lorg/lasque/tusdk/core/exif/ExifParser;->f:S

    if-ne v0, v2, :cond_3

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_3
    sget-short v2, Lorg/lasque/tusdk/core/exif/ExifParser;->g:S

    if-ne v0, v2, :cond_4

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v3}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v4}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(IJ)V

    goto/16 :goto_2

    :cond_4
    sget-short v2, Lorg/lasque/tusdk/core/exif/ExifParser;->h:S

    if-ne v0, v2, :cond_5

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1, v4}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(J)V

    goto/16 :goto_2

    :cond_5
    sget-short v2, Lorg/lasque/tusdk/core/exif/ExifParser;->i:S

    if-ne v0, v2, :cond_6

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->v:Lorg/lasque/tusdk/core/exif/ExifTag;

    goto :goto_2

    :cond_6
    sget-short v2, Lorg/lasque/tusdk/core/exif/ExifParser;->j:S

    if-ne v0, v2, :cond_8

    sget v2, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {p0, v1, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->checkAllowed(II)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v0

    if-ge v4, v0, :cond_9

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataType()S

    move-result v0

    invoke-virtual {p1, v4}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lorg/lasque/tusdk/core/exif/ExifParser;->b(IJ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;

    invoke-direct {v2, p1, v4}, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;-><init>(Lorg/lasque/tusdk/core/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    sget-short v2, Lorg/lasque/tusdk/core/exif/ExifParser;->k:S

    if-ne v0, v2, :cond_9

    sget v0, Lorg/lasque/tusdk/core/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->checkAllowed(II)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->u:Lorg/lasque/tusdk/core/exif/ExifTag;

    :cond_9
    :goto_2
    return-void
.end method

.method private a()Z
    .locals 4

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->r:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-direct {p0, v1}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->b()Z

    move-result v0

    return v0

    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->l:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    iget p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->l:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :pswitch_2
    iget p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->l:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    :pswitch_3
    iget p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->l:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    :pswitch_4
    iget p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->l:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b([BI)I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    return p1
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->skipTo(J)V

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

    const/4 v1, 0x4

    invoke-direct {p3, v1, p1}, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()Z
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->l:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()Lorg/lasque/tusdk/core/exif/ExifTag;
    .locals 13

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readShort()S

    move-result v2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readShort()S

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    invoke-static {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->isValidType(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    const-string v1, "%s Tag %04x: Invalid data type %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ExifParser"

    aput-object v4, v3, v9

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v3, v5

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->skip(J)J

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v10, Lorg/lasque/tusdk/core/exif/ExifTag;

    long-to-int v11, v3

    iget v6, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->r:I

    if-eqz v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/exif/ExifTag;-><init>(SSIIZ)V

    invoke-virtual {v10}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataSize()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readUnsignedInt()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    iget v3, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->y:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    new-array v0, v11, [B

    iget-object v3, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->x:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v3, v1, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v10, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue([B)Z

    goto :goto_2

    :cond_2
    long-to-int v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v10}, Lorg/lasque/tusdk/core/exif/ExifTag;->hasDefinedCount()Z

    move-result v0

    invoke-virtual {v10, v9}, Lorg/lasque/tusdk/core/exif/ExifTag;->setHasDefinedCount(Z)V

    invoke-virtual {p0, v10}, Lorg/lasque/tusdk/core/exif/ExifParser;->readFullTagValue(Lorg/lasque/tusdk/core/exif/ExifTag;)V

    invoke-virtual {v10, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setHasDefinedCount(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->skip(J)J

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    invoke-virtual {v10, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setOffset(I)V

    :goto_2
    return-object v10

    :cond_5
    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c([BI)S
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->G:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    return p1
.end method

.method private d([BI)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a([BI)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->B:I

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a([BI)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->A:I

    :cond_0
    int-to-short p1, p2

    iput-short p1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->C:S

    return-void
.end method

.method private e([BI)V
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v5

    const/4 v6, 0x1

    move-wide v4, v3

    move v3, v1

    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_9

    add-int/lit8 v8, v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit8 v9, v3, 0xf

    if-ge v9, v1, :cond_0

    sget-object v7, Lorg/lasque/tusdk/core/exif/ExifParser;->c:[[I

    aget-object v7, v7, v9

    :cond_0
    const/4 v10, 0x0

    move v11, v8

    move v8, v6

    move-wide v5, v4

    move v4, v10

    :goto_1
    const/16 v12, 0x40

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    if-ge v4, v12, :cond_4

    shr-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_1

    add-int/lit8 v12, v11, 0x1

    aget-byte v11, v0, v11

    mul-int/lit16 v11, v11, 0x100

    add-int/lit8 v15, v12, 0x1

    aget-byte v12, v0, v12

    add-int/2addr v12, v11

    move v11, v12

    goto :goto_2

    :cond_1
    add-int/lit8 v12, v11, 0x1

    aget-byte v11, v0, v11

    move v15, v12

    :goto_2
    if-eqz v7, :cond_2

    int-to-double v1, v11

    mul-double/2addr v1, v13

    aget v13, v7, v4

    int-to-double v13, v13

    div-double/2addr v1, v13

    add-double/2addr v5, v1

    const/4 v1, 0x1

    if-eq v11, v1, :cond_3

    move v8, v10

    goto :goto_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v11, v15

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    if-eqz v7, :cond_8

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double v4, v5, v2

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    cmpg-double v2, v4, v13

    if-gtz v2, :cond_6

    const-wide/high16 v2, 0x4069000000000000L    # 200.0

    sub-double/2addr v2, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v13, v2, v12

    goto :goto_4

    :cond_6
    const-wide v2, 0x40b3880000000000L    # 5000.0

    div-double v13, v2, v4

    :goto_4
    if-nez v9, :cond_7

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v2

    double-to-int v2, v13

    move-object/from16 v3, p0

    iput v2, v3, Lorg/lasque/tusdk/core/exif/ExifParser;->z:I

    goto :goto_5

    :cond_7
    move-object/from16 v3, p0

    goto :goto_5

    :cond_8
    move-object/from16 v3, p0

    move-wide v4, v5

    :goto_5
    move v6, v8

    move v3, v11

    const/4 v1, 0x2

    goto :goto_0

    :cond_9
    move-object/from16 v3, p0

    return-void
.end method

.method protected static parse(Ljava/io/InputStream;ILorg/lasque/tusdk/core/exif/ExifInterface;)Lorg/lasque/tusdk/core/exif/ExifParser;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/exif/ExifParser;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/exif/ExifParser;-><init>(Ljava/io/InputStream;ILorg/lasque/tusdk/core/exif/ExifInterface;)V

    return-object v0
.end method


# virtual methods
.method public checkAllowed(II)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->m:Lorg/lasque/tusdk/core/exif/ExifInterface;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p1

    return p1
.end method

.method protected getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCompressedImageSize()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->v:Lorg/lasque/tusdk/core/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getCurrentIfd()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->r:I

    return v0
.end method

.method public getImageLength()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->B:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->A:I

    return v0
.end method

.method public getJpegProcess()S
    .locals 1

    iget-short v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->C:S

    return v0
.end method

.method public getQualityGuess()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->z:I

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

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->D:Ljava/util/List;

    return-object v0
.end method

.method protected getStripIndex()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->t:Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

    iget v0, v0, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;->a:I

    return v0
.end method

.method protected getStripSize()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->u:Lorg/lasque/tusdk/core/exif/ExifTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getValueAt(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected getTag()Lorg/lasque/tusdk/core/exif/ExifTag;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    return-object v0
.end method

.method public getTagCountInCurrentIfd()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->q:I

    return v0
.end method

.method public getUncompressedDataPosition()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->E:I

    return v0
.end method

.method public isDefinedTag(II)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->m:Lorg/lasque/tusdk/core/exif/ExifInterface;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    int-to-short p2, p2

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/exif/ExifInterface;->defineTag(IS)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected next()I
    .locals 10

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v0

    iget v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->p:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->q:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->c()Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->next()I

    move-result v0

    return v0

    :cond_1
    iget-boolean v1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->w:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(Lorg/lasque/tusdk/core/exif/ExifTag;)V

    :cond_2
    return v4

    :cond_3
    const/4 v5, 0x0

    if-ne v0, v2, :cond_8

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->r:I

    const-wide/16 v6, 0x0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    invoke-direct {p0, v4}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    invoke-direct {p0, v4, v8, v9}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(IJ)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v8, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v8}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v8

    sub-int/2addr v0, v8

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-ge v0, v2, :cond_7

    const-string v2, "%s Invalid size of link to next IFD: %s"

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "ExifParser"

    aput-object v7, v6, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v2, v6}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    const-string v0, "%s Invalid link to next IFD: %s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v6, "ExifParser"

    aput-object v6, v2, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lorg/lasque/tusdk/core/exif/ExifParser;->b(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v6, v2, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;

    if-eqz v6, :cond_b

    check-cast v2, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;

    iget v6, v2, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;->a:I

    iput v6, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->r:I

    iget-object v6, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readUnsignedShort()I

    move-result v6

    iput v6, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->q:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->p:I

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->q:I

    mul-int/lit8 v0, v0, 0xc

    iget v6, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->p:I

    add-int/2addr v0, v6

    add-int/2addr v0, v3

    iget-object v6, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getEnd()I

    move-result v6

    if-le v0, v6, :cond_9

    const-string v0, "%s Invalid size of IFD %s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "ExifParser"

    aput-object v3, v2, v5

    iget v3, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->r:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_9
    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a()Z

    move-result v0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->w:Z

    iget-boolean v0, v2, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;->b:Z

    if-eqz v0, :cond_a

    return v5

    :cond_a
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V

    goto :goto_1

    :cond_b
    instance-of v0, v2, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

    if-eqz v0, :cond_c

    check-cast v2, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

    iput-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->t:Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->t:Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

    iget v0, v0, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;->b:I

    return v0

    :cond_c
    check-cast v2, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;

    iget-object v0, v2, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;->a:Lorg/lasque/tusdk/core/exif/ExifTag;

    iput-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataType()S

    move-result v0

    const/4 v6, 0x7

    if-eq v0, v6, :cond_d

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readFullTagValue(Lorg/lasque/tusdk/core/exif/ExifTag;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(Lorg/lasque/tusdk/core/exif/ExifTag;)V

    :cond_d
    iget-boolean v0, v2, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;->b:Z

    if-eqz v0, :cond_8

    return v3

    :catch_0
    const-string v6, "%s Failed to skip to data at: %s for %s, the file may be broken."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "ExifParser"

    aput-object v8, v7, v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected read([B)I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method protected read([BII)I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method protected readFullTagValue(Lorg/lasque/tusdk/core/exif/ExifTag;)V
    .locals 9

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataType()S

    move-result v0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v1

    const/high16 v2, 0x66000000

    if-ge v1, v2, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    const/4 v5, 0x7

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_4

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getComponentCount()I

    move-result v0

    iget-object v5, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v6}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v6

    add-int/2addr v6, v0

    if-ge v5, v6, :cond_4

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lorg/lasque/tusdk/core/exif/ExifParser$ImageEvent;

    if-eqz v5, :cond_1

    const-string v0, "%s Thumbnail overlaps value for tag: %s\n"

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "ExifParser"

    aput-object v6, v5, v3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v5}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    const-string v5, "%s Invalid thumbnail offset: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "ExifParser"

    aput-object v6, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v5, v2}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of v5, v0, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;

    const/4 v6, 0x3

    if-eqz v5, :cond_2

    const-string v5, "%s Ifd %s overlaps value for tag: %s \n"

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "ExifParser"

    aput-object v8, v7, v3

    check-cast v0, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;

    iget v0, v0, Lorg/lasque/tusdk/core/exif/ExifParser$IfdEvent;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    :goto_0
    invoke-static {v5, v7}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of v5, v0, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;

    if-eqz v5, :cond_3

    const-string v5, "%s Tag value for tag: \n%s overlaps value for tag: %s\n"

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "ExifParser"

    aput-object v8, v7, v3

    check-cast v0, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;

    iget-object v0, v0, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;->a:Lorg/lasque/tusdk/core/exif/ExifTag;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v5

    sub-int/2addr v0, v5

    const-string v5, "%s Invalid size of tag: \n%s setting count to: %s"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "ExifParser"

    aput-object v7, v6, v3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v5, v6}, Lorg/lasque/tusdk/core/utils/TLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->forceSetComponentCount(I)V

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getDataType()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    :pswitch_1
    new-array v0, v1, [Lorg/lasque/tusdk/core/exif/Rational;

    array-length v1, v0

    :goto_3
    if-ge v3, v1, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readRational()Lorg/lasque/tusdk/core/exif/Rational;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_2
    new-array v0, v1, [I

    array-length v1, v0

    :goto_4
    if-ge v3, v1, :cond_7

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readLong()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_3
    new-array v0, v1, [Lorg/lasque/tusdk/core/exif/Rational;

    array-length v1, v0

    :goto_5
    if-ge v3, v1, :cond_5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readUnsignedRational()Lorg/lasque/tusdk/core/exif/Rational;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue([Lorg/lasque/tusdk/core/exif/Rational;)Z

    goto :goto_8

    :pswitch_4
    new-array v0, v1, [J

    array-length v1, v0

    :goto_6
    if-ge v3, v1, :cond_6

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue([J)Z

    goto :goto_8

    :pswitch_5
    new-array v0, v1, [I

    array-length v1, v0

    :goto_7
    if-ge v3, v1, :cond_7

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readUnsignedShort()I

    move-result v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue([I)Z

    goto :goto_8

    :pswitch_6
    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/exif/ExifParser;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    goto :goto_8

    :pswitch_7
    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->read([B)I

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/exif/ExifTag;->setValue([B)Z

    :goto_8
    return-void

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "size out of bounds"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected readLong()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method protected readRational()Lorg/lasque/tusdk/core/exif/Rational;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readLong()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readLong()I

    move-result v1

    new-instance v2, Lorg/lasque/tusdk/core/exif/Rational;

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/lasque/tusdk/core/exif/Rational;-><init>(JJ)V

    return-object v2
.end method

.method protected readString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/exif/ExifParser;->d:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected readUnsignedLong()J
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readLong()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUnsignedRational()Lorg/lasque/tusdk/core/exif/Rational;
    .locals 5

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v2

    new-instance v4, Lorg/lasque/tusdk/core/exif/Rational;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/lasque/tusdk/core/exif/Rational;-><init>(JJ)V

    return-object v4
.end method

.method protected readUnsignedShort()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected registerForTagValue(Lorg/lasque/tusdk/core/exif/ExifTag;)V
    .locals 4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getOffset()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->n:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/exif/ExifTag;->getOffset()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lorg/lasque/tusdk/core/exif/ExifParser$ExifTagEvent;-><init>(Lorg/lasque/tusdk/core/exif/ExifTag;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected skipRemainingTagsInCurrentIfd()V
    .locals 5

    iget v0, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->p:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->q:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->o:Lorg/lasque/tusdk/core/exif/CountedDataInputStream;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/exif/CountedDataInputStream;->getReadByteCount()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->w:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->c()Lorg/lasque/tusdk/core/exif/ExifTag;

    move-result-object v2

    iput-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    add-int/lit8 v1, v1, 0xc

    iget-object v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->s:Lorg/lasque/tusdk/core/exif/ExifTag;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(Lorg/lasque/tusdk/core/exif/ExifTag;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/exif/ExifParser;->b(I)V

    :cond_3
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->readUnsignedLong()J

    move-result-wide v0

    iget v2, p0, Lorg/lasque/tusdk/core/exif/ExifParser;->r:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lorg/lasque/tusdk/core/exif/ExifParser;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    invoke-direct {p0, v2, v0, v1}, Lorg/lasque/tusdk/core/exif/ExifParser;->a(IJ)V

    :cond_5
    return-void
.end method
