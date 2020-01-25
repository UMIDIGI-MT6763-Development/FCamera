.class public Lcom/mediatek/accessor/packer/JpgPacker;
.super Ljava/lang/Object;
.source "JpgPacker.java"

# interfaces
.implements Lcom/mediatek/accessor/packer/IPacker;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/packer/JpgPacker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object p1, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mPackInfo is null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private makeJpgSections(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/data/Section;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<makeJpgSections>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v4, Lcom/mediatek/accessor/data/Section;

    const-wide/16 v5, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x2

    invoke-direct {v4, p1, v5, v6, v7}, Lcom/mediatek/accessor/data/Section;-><init>(IJI)V

    const v5, 0xffe1

    if-ne p1, v5, :cond_1

    sget-object v5, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v6, "<makeJpgSections> type is TYPE_EXTENDED_XMP"

    invoke-static {v5, v6}, Lcom/mediatek/accessor/util/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "extendedXmp"

    iput-object v5, v4, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/mediatek/accessor/packer/PackUtils;->getCustomTypeName([B)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<makeJpgSections> type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/accessor/util/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    :goto_1
    iput-object v3, v4, Lcom/mediatek/accessor/data/Section;->buffer:[B

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private pack(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;",
            "Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;",
            "Lcom/mediatek/accessor/data/Section;",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/data/Section;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/data/Section;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> write begin!!!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mediatek/accessor/packer/PackUtils;->parseAppInfoFromStream(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;)Ljava/util/ArrayList;

    move-result-object v0

    const v1, 0xffd8

    invoke-virtual {p2, v1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->writeShort(I)V

    invoke-static {v0}, Lcom/mediatek/accessor/packer/PackUtils;->findProperLocationForXmp(Ljava/util/ArrayList;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/packer/PackInfo;->unpackedBlurImageBuf:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v5, "<pack> No APP1 information!"

    invoke-static {v1, v5}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/accessor/packer/JpgPacker;->writeXmp(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;Ljava/util/ArrayList;)V

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    move v5, v1

    move v1, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_a

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/data/Section;

    const-string v7, "exif"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<pack> write exif, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/mediatek/accessor/packer/PackUtils;->getSectionTag(Lcom/mediatek/accessor/data/Section;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v6}, Lcom/mediatek/accessor/packer/PackUtils;->writeSectionToStream(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;)V

    if-nez v5, :cond_9

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/accessor/packer/JpgPacker;->writeXmp(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;Ljava/util/ArrayList;)V

    move v5, v4

    goto/16 :goto_4

    :cond_2
    if-nez v5, :cond_3

    sget-object v5, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<pack> write xmp, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/mediatek/accessor/packer/PackUtils;->getSectionTag(Lcom/mediatek/accessor/data/Section;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/accessor/packer/JpgPacker;->writeXmp(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;Ljava/util/ArrayList;)V

    move v5, v4

    :cond_3
    const v7, 0xffdb

    if-nez v1, :cond_5

    iget v8, v6, Lcom/mediatek/accessor/data/Section;->marker:I

    if-eq v8, v7, :cond_4

    iget v8, v6, Lcom/mediatek/accessor/data/Section;->marker:I

    const v9, 0xffc4

    if-ne v8, v9, :cond_5

    :cond_4
    sget-object v1, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<pack> write custom, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/mediatek/accessor/packer/PackUtils;->getSectionTag(Lcom/mediatek/accessor/data/Section;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p5}, Lcom/mediatek/accessor/packer/JpgPacker;->writeCust(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Ljava/util/ArrayList;)V

    move v1, v4

    :cond_5
    if-eqz v2, :cond_6

    iget v8, v6, Lcom/mediatek/accessor/data/Section;->marker:I

    if-ne v8, v7, :cond_6

    sget-object p1, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string p3, "<pack> copy blur image to output stream"

    invoke-static {p1, p3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "<pack> write blur, "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/mediatek/accessor/packer/PackUtils;->getSectionTag(Lcom/mediatek/accessor/data/Section;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;

    iget-object p3, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object p3, p3, Lcom/mediatek/accessor/packer/PackInfo;->unpackedBlurImageBuf:[B

    invoke-direct {p1, p3}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;-><init>([B)V

    invoke-static {p1, p2}, Lcom/mediatek/accessor/packer/PackUtils;->writeImageBuffer(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;)V

    sget-object p1, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string p2, "<pack> write end!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v7, "DEPTHBF"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "JPSDATA"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "JPSMASK"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "SEGMASK"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "standardXmp"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "extendedXmp"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "CLRIMAG"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "LDCDATA"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "DEBUGBF"

    iget-object v8, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    sget-object v7, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<pack> write other info, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/mediatek/accessor/packer/PackUtils;->getSectionTag(Lcom/mediatek/accessor/data/Section;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/accessor/util/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v6}, Lcom/mediatek/accessor/packer/PackUtils;->writeSectionToStream(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;)V

    goto :goto_4

    :cond_8
    :goto_3
    iget v7, v6, Lcom/mediatek/accessor/data/Section;->length:I

    add-int/lit8 v7, v7, 0x2

    int-to-long v7, v7

    invoke-virtual {p1, v7, v8}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->skip(J)J

    sget-object v7, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<pack> skip old data, type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mediatek/accessor/util/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_a
    if-nez v1, :cond_b

    invoke-direct {p0, p2, p5}, Lcom/mediatek/accessor/packer/JpgPacker;->writeCust(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Ljava/util/ArrayList;)V

    :cond_b
    sget-object p3, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string p4, "<pack> write remain whole file (from SOS)"

    invoke-static {p3, p4}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/mediatek/accessor/packer/PackUtils;->copyToStreamWithFixBuffer(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;)V

    sget-object p1, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string p2, "<pack> write end!!!"

    invoke-static {p1, p2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeCust(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/data/Section;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<writeCust> customizedSections size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/data/Section;

    invoke-static {p1, v2}, Lcom/mediatek/accessor/packer/PackUtils;->writeSectionToStream(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeXmp(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;",
            "Lcom/mediatek/accessor/data/Section;",
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/data/Section;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<writeXmp> standardxmp"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/mediatek/accessor/packer/PackUtils;->writeSectionToStream(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;)V

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<writeXmp> extendedSectionsSize size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/accessor/data/Section;

    invoke-static {p1, v1}, Lcom/mediatek/accessor/packer/PackUtils;->writeSectionToStream(Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public pack()V
    .locals 11

    const-string v0, ">>>>JpgPacker-pack"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> begin"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> mPackInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->unpackedJpgBuf:[B

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> unpackedJpgBuf is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/packer/PackInfo;->packedStandardXmpBuf:[B

    const v4, 0xffe1

    if-eqz v3, :cond_2

    new-instance v0, Lcom/mediatek/accessor/data/Section;

    const-wide/16 v5, 0x0

    iget-object v3, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/packer/PackInfo;->packedStandardXmpBuf:[B

    array-length v3, v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/mediatek/accessor/data/Section;-><init>(IJI)V

    iget-object v3, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/packer/PackInfo;->packedStandardXmpBuf:[B

    iput-object v3, v0, Lcom/mediatek/accessor/data/Section;->buffer:[B

    const-string v3, "standardXmp"

    iput-object v3, v0, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    move-object v8, v0

    goto :goto_0

    :cond_2
    move-object v8, v0

    :goto_0
    iget-object v0, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedExtendedXmpBufArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedExtendedXmpBufArray:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/mediatek/accessor/packer/JpgPacker;->makeJpgSections(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :cond_3
    move-object v9, v1

    :goto_1
    iget-object v0, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedCustomizedBufArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    const v0, 0xffef

    iget-object v1, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->packedCustomizedBufArray:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/accessor/packer/JpgPacker;->makeJpgSections(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v10, v2

    goto :goto_2

    :cond_4
    move-object v10, v2

    :goto_2
    new-instance v0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;

    iget-object v1, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->unpackedJpgBuf:[B

    invoke-direct {v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;-><init>([B)V

    new-instance v1, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;

    invoke-direct {v1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;-><init>()V

    move-object v5, p0

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/accessor/packer/JpgPacker;->pack(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;Lcom/mediatek/accessor/data/Section;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    invoke-virtual {v1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->toByteArray()[B

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/packer/PackInfo;->packedJpgBuf:[B

    :try_start_0
    invoke-virtual {v0}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->close()V

    invoke-virtual {v1}, Lcom/mediatek/accessor/util/ByteArrayOutputStreamExt;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<pack> end"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method

.method public unpack()V
    .locals 13

    const-string v0, ">>>>JpgPacker-unpack"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> begin"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> mPackInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedJpgBuf:[B

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> packedJpgBuf is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;

    iget-object v1, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/packer/PackInfo;->packedJpgBuf:[B

    invoke-direct {v0, v1}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;-><init>([B)V

    invoke-static {v0}, Lcom/mediatek/accessor/packer/PackUtils;->parseAppInfoFromStream(Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    :try_start_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/accessor/data/Section;

    const-string v8, "standardXmp"

    iget-object v9, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v9, 0x4

    if-eqz v8, :cond_2

    iget-wide v11, v7, Lcom/mediatek/accessor/data/Section;->offset:J

    add-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    iget v8, v7, Lcom/mediatek/accessor/data/Section;->length:I

    add-int/lit8 v8, v8, -0x2

    new-array v2, v8, [B

    invoke-virtual {v0, v2}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([B)I

    :cond_2
    const-string v8, "extendedXmp"

    iget-object v11, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v11, v7, Lcom/mediatek/accessor/data/Section;->offset:J

    add-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    iget v8, v7, Lcom/mediatek/accessor/data/Section;->length:I

    add-int/lit8 v8, v8, -0x2

    new-array v8, v8, [B

    invoke-virtual {v0, v8}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([B)I

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v8, "DEPTHBF"

    iget-object v11, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "JPSDATA"

    iget-object v11, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "JPSMASK"

    iget-object v11, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "SEGMASK"

    iget-object v11, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "CLRIMAG"

    iget-object v11, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "LDCDATA"

    iget-object v11, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "DEBUGBF"

    iget-object v11, v7, Lcom/mediatek/accessor/data/Section;->type:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    iget-wide v11, v7, Lcom/mediatek/accessor/data/Section;->offset:J

    add-long/2addr v11, v9

    invoke-virtual {v0, v11, v12}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->seek(J)V

    iget v7, v7, Lcom/mediatek/accessor/data/Section;->length:I

    add-int/lit8 v7, v7, -0x2

    new-array v7, v7, [B

    invoke-virtual {v0, v7}, Lcom/mediatek/accessor/util/ByteArrayInputStreamExt;->read([B)I

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    iget-object v0, p0, Lcom/mediatek/accessor/packer/JpgPacker;->mPackInfo:Lcom/mediatek/accessor/packer/PackInfo;

    iput-object v2, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedStandardXmpBuf:[B

    iput-object v3, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedExtendedXmpBufArray:Ljava/util/ArrayList;

    iput-object v4, v0, Lcom/mediatek/accessor/packer/PackInfo;->packedCustomizedBufArray:Ljava/util/ArrayList;

    sget-object v0, Lcom/mediatek/accessor/packer/JpgPacker;->TAG:Ljava/lang/String;

    const-string v1, "<unpack> end"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method
