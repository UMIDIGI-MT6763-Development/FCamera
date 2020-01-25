.class public Lcom/badlogic/gdx/utils/compression/lz/BinTree;
.super Lcom/badlogic/gdx/utils/compression/lz/InWindow;
.source "BinTree.java"


# static fields
.field private static final CrcTable:[I

.field static final kBT2HashSize:I = 0x10000

.field static final kEmptyHashValue:I = 0x0

.field static final kHash2Size:I = 0x400

.field static final kHash3Offset:I = 0x400

.field static final kHash3Size:I = 0x10000

.field static final kMaxValForNormalize:I = 0x3fffffff

.field static final kStartMaxLen:I = 0x1


# instance fields
.field HASH_ARRAY:Z

.field _cutValue:I

.field _cyclicBufferPos:I

.field _cyclicBufferSize:I

.field _hash:[I

.field _hashMask:I

.field _hashSizeSum:I

.field _matchMaxLen:I

.field _son:[I

.field kFixHashSize:I

.field kMinMatchCheck:I

.field kNumHashDirectBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    move v4, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_2

    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    const/16 v1, 0xff

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    const v0, 0x10400

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    return-void
.end method


# virtual methods
.method public Create(IIII)Z
    .locals 1

    const v0, 0x3ffffeff    # 1.9999694f

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    shr-int/lit8 v0, p3, 0x1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    add-int/2addr p2, p1

    add-int v0, p2, p3

    add-int/2addr v0, p4

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x100

    add-int/2addr p4, p3

    invoke-super {p0, p2, p4, v0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Create(III)V

    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/lit8 p2, p1, 0x1

    iget p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-eq p3, p2, :cond_1

    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    :cond_1
    const/high16 p2, 0x10000

    iget-boolean p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_3

    sub-int/2addr p1, p4

    shr-int/lit8 p2, p1, 0x1

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x2

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x4

    or-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    or-int/2addr p1, p2

    shr-int/2addr p1, p4

    const p2, 0xffff

    or-int/2addr p1, p2

    const/high16 p2, 0x1000000

    if-le p1, p2, :cond_2

    shr-int/lit8 p1, p1, 0x1

    :cond_2
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    add-int/2addr p1, p4

    iget p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr p2, p1

    :cond_3
    iget p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-eq p2, p1, :cond_4

    iput p2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    :cond_4
    return p4
.end method

.method public GetMatches([I)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    if-ge v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    return v3

    :cond_1
    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-le v2, v4, :cond_2

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    add-int/2addr v4, v5

    iget-boolean v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    and-int/lit16 v6, v5, 0x3ff

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v5, v7

    const v7, 0xffff

    and-int/2addr v7, v5

    sget-object v8, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v10, v4, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    shl-int/lit8 v8, v8, 0x5

    xor-int/2addr v5, v8

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    and-int/2addr v5, v8

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v5, v5, v4

    and-int/lit16 v5, v5, 0xff

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    xor-int/2addr v5, v6

    move v6, v3

    move v7, v6

    :goto_2
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v9, v5

    aget v9, v8, v9

    iget-boolean v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    const/4 v11, 0x1

    if-eqz v10, :cond_7

    aget v10, v8, v6

    add-int/lit16 v7, v7, 0x400

    aget v12, v8, v7

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v13, v8, v6

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v8, v6, v7

    const/4 v6, 0x2

    if-le v10, v2, :cond_4

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v8, v10

    aget-byte v7, v7, v8

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v8, v8, v4

    if-ne v7, v8, :cond_4

    aput v6, p1, v3

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v7, v10

    sub-int/2addr v7, v11

    aput v7, p1, v11

    move v7, v6

    goto :goto_3

    :cond_4
    move v6, v3

    move v7, v11

    :goto_3
    const/4 v8, 0x3

    if-le v12, v2, :cond_6

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v14, v12

    aget-byte v13, v13, v14

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v14, v14, v4

    if-ne v13, v14, :cond_6

    if-ne v12, v10, :cond_5

    add-int/lit8 v6, v6, -0x2

    :cond_5
    add-int/lit8 v7, v6, 0x1

    aput v8, p1, v6

    add-int/lit8 v6, v7, 0x1

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v10, v12

    sub-int/2addr v10, v11

    aput v10, p1, v7

    move v7, v8

    move v10, v12

    :cond_6
    if-eqz v6, :cond_8

    if-ne v10, v9, :cond_8

    add-int/lit8 v6, v6, -0x2

    move v7, v11

    goto :goto_4

    :cond_7
    move v6, v3

    move v7, v11

    :cond_8
    :goto_4
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v10, v5

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v5, v8, v10

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v8, v5, 0x1

    add-int/2addr v8, v11

    shl-int/2addr v5, v11

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    if-eqz v10, :cond_9

    if-le v9, v2, :cond_9

    iget-object v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v13, v9

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    add-int/2addr v13, v14

    aget-byte v12, v12, v13

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    add-int v15, v4, v14

    aget-byte v13, v13, v15

    if-eq v12, v13, :cond_9

    add-int/lit8 v7, v6, 0x1

    aput v14, p1, v6

    add-int/lit8 v6, v7, 0x1

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v12, v9

    sub-int/2addr v12, v11

    aput v12, p1, v7

    goto :goto_5

    :cond_9
    move v14, v7

    :goto_5
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    move v12, v6

    move v6, v10

    :goto_6
    if-le v9, v2, :cond_12

    add-int/lit8 v13, v7, -0x1

    if-nez v7, :cond_a

    goto/16 :goto_c

    :cond_a
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v7, v9

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    if-gt v7, v15, :cond_b

    sub-int/2addr v15, v7

    goto :goto_7

    :cond_b
    sub-int/2addr v15, v7

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    add-int/2addr v15, v3

    :goto_7
    shl-int/lit8 v3, v15, 0x1

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v15, v9

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v16

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v17, v15, v16

    aget-byte v11, v11, v17

    move/from16 v17, v2

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v18, v4, v16

    aget-byte v2, v2, v18

    if-ne v11, v2, :cond_10

    const/4 v2, 0x1

    :goto_8
    add-int/lit8 v11, v16, 0x1

    if-eq v11, v1, :cond_d

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v15, v11

    aget-byte v2, v2, v16

    move/from16 v18, v6

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v4, v11

    aget-byte v6, v6, v16

    if-eq v2, v6, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v16, v11

    move/from16 v6, v18

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    move/from16 v18, v6

    :goto_9
    if-ge v14, v11, :cond_f

    add-int/lit8 v2, v12, 0x1

    aput v11, p1, v12

    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v7, v7, -0x1

    aput v7, p1, v2

    if-ne v11, v1, :cond_e

    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v2, v1, v3

    aput v2, v1, v5

    const/4 v2, 0x1

    add-int/2addr v3, v2

    aget v2, v1, v3

    aput v2, v1, v8

    goto :goto_d

    :cond_e
    const/4 v2, 0x1

    move v14, v11

    goto :goto_a

    :cond_f
    const/4 v2, 0x1

    goto :goto_a

    :cond_10
    move/from16 v18, v6

    const/4 v2, 0x1

    move/from16 v11, v16

    :goto_a
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/2addr v15, v11

    aget-byte v6, v6, v15

    and-int/lit16 v6, v6, 0xff

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v15, v4, v11

    aget-byte v7, v7, v15

    and-int/lit16 v7, v7, 0xff

    if-ge v6, v7, :cond_11

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v6, v5

    add-int/lit8 v3, v3, 0x1

    aget v5, v6, v3

    move v9, v5

    move v6, v11

    move v5, v3

    goto :goto_b

    :cond_11
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v6, v8

    aget v6, v6, v3

    move v8, v3

    move v9, v6

    move v10, v11

    move/from16 v6, v18

    :goto_b
    move v11, v2

    move v7, v13

    move/from16 v2, v17

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_12
    :goto_c
    iget-object v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    const/4 v2, 0x0

    aput v2, v1, v5

    aput v2, v1, v8

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    return v12
.end method

.method public Init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Init()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    return-void
.end method

.method public MovePos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->MovePos()V

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    const v1, 0x3fffffff    # 1.9999999f

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Normalize()V

    :cond_1
    return-void
.end method

.method Normalize()V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v2, v1, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    return-void
.end method

.method NormalizeLinks([III)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p1, v1

    if-gt v2, p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    sub-int/2addr v2, p3

    :goto_1
    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public SetCutValue(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    return-void
.end method

.method public SetType(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz p1, :cond_1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    const p1, 0x10400

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    :goto_1
    return-void
.end method

.method public Skip(I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    if-gt v2, v3, :cond_1

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    goto :goto_0

    :cond_1
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    if-ge v2, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    goto/16 :goto_8

    :cond_2
    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-le v3, v4, :cond_3

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    add-int/2addr v4, v6

    iget-boolean v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    and-int/lit16 v7, v6, 0x3ff

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v9, v8, v7

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    const v7, 0xffff

    and-int/2addr v7, v6

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    add-int/lit16 v7, v7, 0x400

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v9, v8, v7

    sget-object v7, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v9, v4, 0x3

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    shl-int/lit8 v7, v7, 0x5

    xor-int/2addr v6, v7

    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    and-int/2addr v6, v7

    goto :goto_2

    :cond_4
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    :goto_2
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int v9, v8, v6

    aget v9, v7, v9

    add-int/2addr v8, v6

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v6, v7, v8

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v7, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    move v11, v8

    :goto_3
    if-le v9, v3, :cond_b

    add-int/lit8 v12, v10, -0x1

    if-nez v10, :cond_5

    goto/16 :goto_6

    :cond_5
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v10, v9

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    if-gt v10, v13, :cond_6

    sub-int/2addr v13, v10

    goto :goto_4

    :cond_6
    sub-int/2addr v13, v10

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    add-int/2addr v13, v10

    :goto_4
    shl-int/lit8 v10, v13, 0x1

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v13, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v13, v14

    aget-byte v15, v15, v16

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v4, v14

    aget-byte v5, v5, v16

    if-ne v15, v5, :cond_9

    :cond_7
    add-int/lit8 v14, v14, 0x1

    if-eq v14, v2, :cond_8

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v15, v13, v14

    aget-byte v5, v5, v15

    iget-object v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v4, v14

    aget-byte v15, v15, v16

    if-eq v5, v15, :cond_7

    :cond_8
    if-ne v14, v2, :cond_9

    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v3, v2, v10

    aput v3, v2, v6

    add-int/lit8 v10, v10, 0x1

    aget v3, v2, v10

    aput v3, v2, v7

    goto :goto_7

    :cond_9
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/2addr v13, v14

    aget-byte v5, v5, v13

    and-int/lit16 v5, v5, 0xff

    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v15, v4, v14

    aget-byte v13, v13, v15

    and-int/lit16 v13, v13, 0xff

    if-ge v5, v13, :cond_a

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v5, v6

    add-int/lit8 v10, v10, 0x1

    aget v5, v5, v10

    move v9, v5

    move v6, v10

    move v11, v14

    goto :goto_5

    :cond_a
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v5, v7

    aget v5, v5, v10

    move v9, v5

    move v7, v10

    move v8, v14

    :goto_5
    move v10, v12

    goto :goto_3

    :cond_b
    :goto_6
    iget-object v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    const/4 v3, 0x0

    aput v3, v2, v6

    aput v3, v2, v7

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    :goto_8
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    return-void
.end method
