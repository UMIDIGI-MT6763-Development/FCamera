.class public Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;
    }
.end annotation


# static fields
.field static final LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "zipro"

.field static final kCDECRC:I = 0x10

.field static final kCDECommentLen:I = 0x20

.field static final kCDECompLen:I = 0x14

.field static final kCDEExtraLen:I = 0x1e

.field static final kCDELen:I = 0x2e

.field static final kCDELocalOffset:I = 0x2a

.field static final kCDEMethod:I = 0xa

.field static final kCDEModWhen:I = 0xc

.field static final kCDENameLen:I = 0x1c

.field static final kCDESignature:I = 0x2014b50

.field static final kCDEUncompLen:I = 0x18

.field static final kCompressDeflated:I = 0x8

.field static final kCompressStored:I = 0x0

.field static final kEOCDFileOffset:I = 0x10

.field static final kEOCDLen:I = 0x16

.field static final kEOCDNumEntries:I = 0x8

.field static final kEOCDSignature:I = 0x6054b50

.field static final kEOCDSize:I = 0xc

.field static final kLFHExtraLen:I = 0x1c

.field static final kLFHLen:I = 0x1e

.field static final kLFHNameLen:I = 0x1a

.field static final kLFHSignature:I = 0x4034b50

.field static final kMaxCommentLen:I = 0xffff

.field static final kMaxEOCDSearch:I = 0x10015

.field static final kZipEntryAdj:I = 0x2710


# instance fields
.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;",
            ">;"
        }
    .end annotation
.end field

.field mLEByteBuffer:Ljava/nio/ByteBuffer;

.field public mZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->addPatchFile(Ljava/lang/String;)V

    return-void
.end method

.method private static read4LE(Ljava/io/RandomAccessFile;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    invoke-static {p0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->swapEndian(I)I

    move-result p0

    return p0
.end method

.method private static swapEndian(I)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private static swapEndian(S)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr p0, v1

    ushr-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method addPatchFile(Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x16

    cmp-long v5, v3, v5

    if-ltz v5, :cond_a

    const-wide/32 v5, 0x10015

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    move-wide v5, v3

    :cond_0
    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->read4LE(Ljava/io/RandomAccessFile;)I

    move-result v7

    const v8, 0x6054b50

    if-eq v7, v8, :cond_9

    const v9, 0x4034b50

    if-ne v7, v9, :cond_8

    sub-long v9, v3, v5

    invoke-virtual {v2, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    long-to-int v5, v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v7, v6

    add-int/lit8 v7, v7, -0x16

    :goto_0
    if-ltz v7, :cond_2

    aget-byte v9, v6, v7

    const/16 v10, 0x50

    if-ne v9, v10, :cond_1

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    if-ne v9, v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-gez v7, :cond_3

    const-string v6, "zipro"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Zip: EOCD not found, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v6, v7, 0x8

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    add-int/lit8 v8, v7, 0xc

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-int/lit8 v12, v7, 0x10

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    int-to-long v12, v5

    and-long v14, v12, v10

    add-long v12, v14, v8

    cmp-long v3, v12, v3

    if-gtz v3, :cond_7

    if-eqz v6, :cond_6

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    sget-object v13, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v4, 0xffff

    new-array v5, v4, [B

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    move v9, v8

    move v12, v9

    :goto_2
    if-ge v9, v6, :cond_5

    invoke-virtual {v3, v12}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v13

    const v14, 0x2014b50

    if-ne v13, v14, :cond_4

    add-int/lit8 v13, v12, 0x1c

    invoke-virtual {v3, v13}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v13

    and-int/2addr v13, v4

    add-int/lit8 v14, v12, 0x1e

    invoke-virtual {v3, v14}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v14

    and-int/2addr v14, v4

    add-int/lit8 v15, v12, 0x20

    invoke-virtual {v3, v15}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v15

    and-int/2addr v15, v4

    add-int/lit8 v10, v12, 0x2e

    invoke-virtual {v3, v10}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v5, v8, v13}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v8}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5, v8, v13}, Ljava/lang/String;-><init>([BII)V

    new-instance v11, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;

    invoke-direct {v11, v0, v1, v10}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v8, v12, 0xa

    invoke-virtual {v3, v8}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    move-result v8

    and-int/2addr v8, v4

    iput v8, v11, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->mMethod:I

    add-int/lit8 v8, v12, 0xc

    invoke-virtual {v3, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v8

    move-object/from16 v18, v5

    int-to-long v4, v8

    const-wide v16, 0xffffffffL

    and-long v4, v4, v16

    iput-wide v4, v11, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    add-int/lit8 v4, v12, 0x10

    invoke-virtual {v3, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    and-long v4, v4, v16

    iput-wide v4, v11, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->mCRC32:J

    add-int/lit8 v4, v12, 0x14

    invoke-virtual {v3, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    and-long v4, v4, v16

    iput-wide v4, v11, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    add-int/lit8 v4, v12, 0x18

    invoke-virtual {v3, v4}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    and-long v4, v4, v16

    iput-wide v4, v11, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    add-int/lit8 v4, v12, 0x2a

    invoke-virtual {v3, v4}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    and-long v4, v4, v16

    iput-wide v4, v11, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v11, v2, v7}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V

    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x2e

    add-int/2addr v13, v14

    add-int/2addr v13, v15

    add-int/2addr v12, v13

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v10, v16

    move-object/from16 v5, v18

    const v4, 0xffff

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_4
    move-object/from16 v4, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missed a central dir sig (at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zipro"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_5
    move-object/from16 v4, p0

    return-void

    :cond_6
    move-object/from16 v4, p0

    const-string v0, "zipro"

    const-string v1, "empty archive?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_7
    move-object/from16 v4, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad offsets (dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eocd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zipro"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_8
    move-object/from16 v4, p0

    const-string v0, "zipro"

    const-string v1, "Not a Zip archive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_9
    move-object/from16 v4, p0

    const-string v0, "zipro"

    const-string v1, "Found Zip archive, but it looks empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_a
    move-object/from16 v4, p0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public getAllEntries()[Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;

    return-object v0
.end method

.method public getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getEntriesAt(Ljava/lang/String;)[Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;

    iget-object v4, v3, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, -0x1

    iget-object v5, v3, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;

    return-object p1
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->isUncompressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gdx/helper/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
