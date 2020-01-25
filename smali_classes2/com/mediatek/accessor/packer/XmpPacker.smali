.class public Lcom/mediatek/accessor/packer/XmpPacker;
.super Ljava/lang/Object;
.source "XmpPacker.java"

# interfaces
.implements Lcom/mediatek/accessor/packer/IPacker;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/packer/XmpPacker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/packer/XmpPacker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/accessor/packer/PackInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object p1, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mPackInfo is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private makeExtXmpData([B)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lcom/mediatek/accessor/packer/XmpPacker;->TAG:Ljava/lang/String;

    const-string v1, "<makeExtXmpData>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/mediatek/accessor/packer/PackUtils;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    sget v3, Lcom/mediatek/accessor/packer/PackUtils;->MAX_LEN_FOR_REAL_XMP_DATA_PER_APP1:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    array-length v2, p1

    sget v3, Lcom/mediatek/accessor/packer/PackUtils;->MAX_LEN_FOR_REAL_XMP_DATA_PER_APP1:I

    div-int/2addr v2, v3

    goto :goto_0

    :cond_0
    array-length v2, p1

    sget v3, Lcom/mediatek/accessor/packer/PackUtils;->MAX_LEN_FOR_REAL_XMP_DATA_PER_APP1:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_2

    array-length v6, p1

    invoke-static {v1, v6, v4}, Lcom/mediatek/accessor/packer/PackUtils;->getXmpCommonHeader(Ljava/lang/String;II)[B

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    if-ne v4, v7, :cond_1

    array-length v7, p1

    sget v8, Lcom/mediatek/accessor/packer/PackUtils;->MAX_LEN_FOR_REAL_XMP_DATA_PER_APP1:I

    rem-int/2addr v7, v8

    if-eqz v7, :cond_1

    array-length v7, p1

    sget v8, Lcom/mediatek/accessor/packer/PackUtils;->MAX_LEN_FOR_REAL_XMP_DATA_PER_APP1:I

    rem-int/2addr v7, v8

    array-length v8, v6

    add-int/2addr v7, v8

    new-array v8, v7, [B

    array-length v9, v6

    invoke-static {v6, v3, v8, v3, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v6

    array-length v10, v6

    sub-int v10, v7, v10

    invoke-static {p1, v5, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v6, v6

    sub-int/2addr v7, v6

    add-int/2addr v5, v7

    goto :goto_2

    :cond_1
    const v7, 0xffb2

    new-array v8, v7, [B

    array-length v9, v6

    invoke-static {v6, v3, v8, v3, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, v6

    array-length v10, v6

    sub-int v10, v7, v10

    invoke-static {p1, v5, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v6, v6

    sub-int/2addr v7, v6

    add-int/2addr v5, v7

    :goto_2
    invoke-virtual {v0, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public pack()V
    .locals 5

    const-string v0, ">>>>XmpPacker-pack"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/packer/XmpPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> begin"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/packer/XmpPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> mPackInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    array-length v0, v0

    const/16 v1, 0x1d

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v2, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    iget-object v4, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v4, v4, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    array-length v4, v4

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v1, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iput-object v0, v1, Lcom/mediatek/accessor/packer/PackInfo;->packedStandardXmpBuf:[B

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v1, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    invoke-direct {p0, v1}, Lcom/mediatek/accessor/packer/XmpPacker;->makeExtXmpData([B)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedExtendedXmpBufArray:Ljava/util/ArrayList;

    :cond_2
    sget-object v0, Lcom/mediatek/accessor/packer/XmpPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> end"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method

.method public unpack()V
    .locals 11

    const-string v0, ">>>>XmpPacker-unpack"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/packer/XmpPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> begin"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/packer/XmpPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> mPackInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedStandardXmpBuf:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedStandardXmpBuf:[B

    array-length v0, v0

    const/16 v2, 0x1d

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    iget-object v3, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/packer/PackInfo;->packedStandardXmpBuf:[B

    array-length v4, v0

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v2, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iput-object v0, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedStandardXmpBuf:[B

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedExtendedXmpBufArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedExtendedXmpBufArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/16 v3, 0x4b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v6, v1

    move-object v5, v2

    move v2, v6

    :goto_0
    if-ge v2, v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v5, :cond_2

    new-array v8, v6, [B

    array-length v8, v7

    sub-int/2addr v8, v3

    add-int/2addr v6, v8

    new-array v8, v6, [B

    array-length v9, v5

    invoke-static {v5, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v5, v5

    array-length v9, v7

    sub-int/2addr v9, v3

    invoke-static {v7, v3, v8, v5, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v5, v8

    goto :goto_1

    :cond_2
    array-length v5, v7

    sub-int/2addr v5, v3

    new-array v6, v5, [B

    invoke-static {v7, v3, v6, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v10, v6

    move v6, v5

    move-object v5, v10

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mediatek/accessor/packer/XmpPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iput-object v5, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedExtendedXmpBuf:[B

    :cond_4
    sget-object v0, Lcom/mediatek/accessor/packer/XmpPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> end"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method
