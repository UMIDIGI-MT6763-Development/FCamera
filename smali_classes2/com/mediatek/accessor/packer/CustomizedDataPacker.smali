.class public Lcom/mediatek/accessor/packer/CustomizedDataPacker;
.super Ljava/lang/Object;
.source "CustomizedDataPacker.java"

# interfaces
.implements Lcom/mediatek/accessor/packer/IPacker;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object p1, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mPackInfo is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private joinArraryBuffer(Ljava/util/ArrayList;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)[B"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v3, [B

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    array-length v6, v6

    invoke-static {v5, v1, v2, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private pack([B[B)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<pack> type name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const v2, 0xffa6

    rem-int/2addr v1, v2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    array-length v1, p1

    div-int/2addr v1, v2

    goto :goto_0

    :cond_0
    array-length v1, p1

    div-int/2addr v1, v2

    add-int/2addr v1, v3

    :goto_0
    const/4 v4, 0x7

    new-array v5, v4, [B

    new-array v5, v3, [B

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    if-ge v6, v1, :cond_2

    add-int/lit8 v8, v1, -0x1

    const/16 v9, 0xc

    if-ne v6, v8, :cond_1

    array-length v8, p1

    rem-int/2addr v8, v2

    if-eqz v8, :cond_1

    array-length v8, p1

    rem-int/2addr v8, v2

    add-int/2addr v8, v9

    goto :goto_2

    :cond_1
    const v8, 0xffb2

    :goto_2
    new-array v10, v8, [B

    array-length v11, p1

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/mediatek/accessor/packer/PackUtils;->intToByteBuffer(II)[B

    move-result-object v11

    invoke-static {v11, v5, v10, v5, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p2, v5, v10, v12, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v11, 0xb

    invoke-static {v6, v3}, Lcom/mediatek/accessor/packer/PackUtils;->intToByteBuffer(II)[B

    move-result-object v12

    invoke-static {v12, v5, v10, v11, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    sub-int/2addr v8, v9

    invoke-static {p1, v7, v10, v9, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v7, v8

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public pack()V
    .locals 4

    const-string v0, ">>>>CustomizedDataPacker-pack"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> begin"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> mPackInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> unpackedCustomizedBufMap is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {p0, v2, v3}, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->pack([B[B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iput-object v0, v1, Lcom/mediatek/accessor/packer/PackInfo;->packedCustomizedBufArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> end"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method

.method public unpack()V
    .locals 10

    const-string v0, ">>>>CustomizedDataPacker-unpack"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> begin"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> mPackInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedCustomizedBufArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> packedCustomizedBufArray is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedCustomizedBufArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    new-array v2, v1, [B

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v6, v6, Lcom/mediatek/accessor/packer/PackInfo;->packedCustomizedBufArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    array-length v7, v6

    const/16 v8, 0xc

    sub-int/2addr v7, v8

    new-array v7, v7, [B

    array-length v9, v7

    invoke-static {v6, v8, v7, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v8, 0x4

    invoke-static {v6, v8, v2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<unpack> typeName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/packer/PackInfo;->unpackedCustomizedBufMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->joinArraryBuffer(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/mediatek/accessor/packer/CustomizedDataPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> end"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method
