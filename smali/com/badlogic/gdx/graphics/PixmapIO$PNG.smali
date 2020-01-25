.class public Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
.super Ljava/lang/Object;
.source "PixmapIO.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/PixmapIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PNG"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;
    }
.end annotation


# static fields
.field private static final COLOR_ARGB:B = 0x6t

.field private static final COMPRESSION_DEFLATE:B = 0x0t

.field private static final FILTER_NONE:B = 0x0t

.field private static final IDAT:I = 0x49444154

.field private static final IEND:I = 0x49454e44

.field private static final IHDR:I = 0x49484452

.field private static final INTERLACE_NONE:B = 0x0t

.field private static final PAETH:B = 0x4t

.field private static final SIGNATURE:[B


# instance fields
.field private final buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

.field private curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

.field private flipY:Z

.field private lastLineLen:I

.field private lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

.field private prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->SIGNATURE:[B

    return-void

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    new-instance p1, Ljava/util/zip/Deflater;

    invoke-direct {p1}, Ljava/util/zip/Deflater;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    new-instance p1, Ljava/util/zip/DeflaterOutputStream;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-direct {p1, v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    return-void
.end method

.method public setCompression(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    return-void
.end method

.method public setFlipY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    return-void
.end method

.method public write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p2
.end method

.method public write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/io/DataOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v3, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->SIGNATURE:[B

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v4, 0x49484452

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeByte(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v5, 0x49444154    # 803861.25f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->reset()V

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v3

    const/4 v5, 0x4

    mul-int/2addr v3, v5

    iget-object v6, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    if-nez v6, :cond_0

    new-instance v6, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v6, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lineOutBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    new-instance v7, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v7, v3}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v7, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    new-instance v8, Lcom/badlogic/gdx/utils/ByteArray;

    invoke-direct {v8, v3}, Lcom/badlogic/gdx/utils/ByteArray;-><init>(I)V

    iput-object v8, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/ByteArray;->items:[B

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v6

    iget-object v7, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->curLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v7

    iget-object v8, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->prevLineBytes:Lcom/badlogic/gdx/utils/ByteArray;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/ByteArray;->ensureCapacity(I)[B

    move-result-object v8

    iget v9, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lastLineLen:I

    move v10, v4

    :goto_0
    if-ge v10, v9, :cond_1

    aput-byte v4, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput v3, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->lastLineLen:I

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v13, 0x1

    if-ne v11, v12, :cond_2

    move v11, v13

    goto :goto_2

    :cond_2
    move v11, v4

    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v12

    move-object v14, v8

    move-object v8, v7

    move v7, v4

    :goto_3
    if-ge v7, v12, :cond_c

    iget-boolean v15, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->flipY:Z

    if-eqz v15, :cond_3

    sub-int v15, v12, v7

    sub-int/2addr v15, v13

    goto :goto_4

    :cond_3
    move v15, v7

    :goto_4
    if-eqz v11, :cond_4

    mul-int/2addr v15, v3

    invoke-virtual {v9, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v9, v8, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-object/from16 v13, p2

    move v2, v4

    move/from16 v16, v11

    move/from16 v17, v12

    goto :goto_6

    :cond_4
    move v5, v4

    move/from16 v16, v5

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v13

    if-ge v5, v13, :cond_5

    move-object/from16 v13, p2

    invoke-virtual {v13, v5, v15}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v4

    add-int/lit8 v17, v16, 0x1

    shr-int/lit8 v2, v4, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v8, v16

    add-int/lit8 v2, v17, 0x1

    move/from16 v16, v11

    shr-int/lit8 v11, v4, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v8, v17

    add-int/lit8 v11, v2, 0x1

    move/from16 v17, v12

    shr-int/lit8 v12, v4, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v2

    add-int/lit8 v2, v11, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v8, v11

    add-int/lit8 v5, v5, 0x1

    move/from16 v11, v16

    move/from16 v12, v17

    const/4 v4, 0x0

    move/from16 v16, v2

    move-object/from16 v2, p1

    goto :goto_5

    :cond_5
    move-object/from16 v13, p2

    move/from16 v16, v11

    move/from16 v17, v12

    move v2, v4

    :goto_6
    aget-byte v4, v8, v2

    aget-byte v5, v14, v2

    sub-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v6, v2

    const/4 v2, 0x1

    aget-byte v4, v8, v2

    aget-byte v5, v14, v2

    sub-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v6, v2

    const/4 v4, 0x2

    aget-byte v5, v8, v4

    aget-byte v11, v14, v4

    sub-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, v6, v4

    const/4 v4, 0x3

    aget-byte v5, v8, v4

    aget-byte v11, v14, v4

    sub-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, v6, v4

    const/4 v4, 0x4

    :goto_7
    if-ge v4, v3, :cond_b

    add-int/lit8 v5, v4, -0x4

    aget-byte v11, v8, v5

    and-int/lit16 v11, v11, 0xff

    aget-byte v12, v14, v4

    and-int/lit16 v12, v12, 0xff

    aget-byte v5, v14, v5

    and-int/lit16 v5, v5, 0xff

    add-int v15, v11, v12

    sub-int/2addr v15, v5

    sub-int v2, v15, v11

    if-gez v2, :cond_6

    neg-int v2, v2

    :cond_6
    move/from16 v18, v11

    sub-int v11, v15, v12

    if-gez v11, :cond_7

    neg-int v11, v11

    :cond_7
    sub-int/2addr v15, v5

    if-gez v15, :cond_8

    neg-int v15, v15

    :cond_8
    if-gt v2, v11, :cond_9

    if-gt v2, v15, :cond_9

    move/from16 v5, v18

    goto :goto_8

    :cond_9
    if-gt v11, v15, :cond_a

    move v5, v12

    :cond_a
    :goto_8
    aget-byte v2, v8, v4

    sub-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v6, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/zip/DeflaterOutputStream;->write(I)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, v3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v16

    move/from16 v12, v17

    move-object/from16 v2, p1

    const/4 v13, 0x1

    move/from16 v19, v5

    move v5, v4

    move/from16 v4, v19

    move-object/from16 v20, v14

    move-object v14, v8

    move-object/from16 v8, v20

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->deflaterOutput:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    const v3, 0x49454e44    # 808164.25f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->writeInt(I)V

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->buffer:Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG$ChunkBuffer;->endChunk(Ljava/io/DataOutputStream;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
