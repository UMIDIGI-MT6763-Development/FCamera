.class public Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;
.super Ljava/lang/Object;
.source "SegmentMaskInfoParser.java"

# interfaces
.implements Lcom/mediatek/accessor/parser/IParser;


# static fields
.field private static final ATTRIBUTE_MASK_HEIGHT:Ljava/lang/String; = "SegmentMaskHeight"

.field private static final ATTRIBUTE_MASK_WIDTH:Ljava/lang/String; = "SegmentMaskWidth"

.field private static final ATTRIBUTE_SEGMENT_BOTTOM:Ljava/lang/String; = "SegmentBottom"

.field private static final ATTRIBUTE_SEGMENT_LEFT:Ljava/lang/String; = "SegmentLeft"

.field private static final ATTRIBUTE_SEGMENT_MASK_BUFFER:Ljava/lang/String; = "JPSMASK"

.field private static final ATTRIBUTE_SEGMENT_RIGHT:Ljava/lang/String; = "SegmentRight"

.field private static final ATTRIBUTE_SEGMENT_TOP:Ljava/lang/String; = "SegmentTop"

.field private static final ATTRIBUTE_SEGMENT_X:Ljava/lang/String; = "SegmentX"

.field private static final ATTRIBUTE_SEGMENT_Y:Ljava/lang/String; = "SegmentY"

.field private static final NS_STEREO:Ljava/lang/String; = "http://ns.mediatek.com/segment/"

.field private static final PRIFIX_STEREO:Ljava/lang/String; = "MSegment"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

.field private mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

.field private mListOfCustDataItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListOfSimpleValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

.field private mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

.field private mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;Lcom/mediatek/accessor/data/SegmentMaskInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lcom/mediatek/accessor/data/SegmentMaskInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iput-object p3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->initSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->initCustDataItem()V

    iget-object p3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    iput-object v0, p3, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-static {v1, p1, p3}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-interface {p1, v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-static {p1, p3, p2}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_1
    iget-object p1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-interface {p1, p2}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private dumpValuesAndBuffers(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/mediatek/accessor/util/Utils;->ENABLE_BUFFER_DUMP:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mediatek/accessor/util/Utils;->DUMP_FILE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/SegmentMaskInfo;->debugDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskBuffer:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SegmentMaskInfo_maskBuffer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskBuffer:[B

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->TAG:Ljava/lang/String;

    const-string v2, "<dumpValuesAndBuffers> maskBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "SegmentMaskInfo_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/data/SegmentMaskInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Utils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;
    .locals 3

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->dest:I

    new-instance v2, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    invoke-direct {v2}, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;-><init>()V

    iput-object v2, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v2, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iput v1, v2, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->dest:I

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "http://ns.mediatek.com/segment/"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "MSegment"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    return-object v0
.end method

.method private initCustDataItem()V
    .locals 2

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    const-string v1, "JPSMASK"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initSimpleValue()V
    .locals 2

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "SegmentMaskWidth"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "SegmentMaskHeight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "SegmentX"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "SegmentY"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "SegmentLeft"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "SegmentTop"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "SegmentRight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "SegmentBottom"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readCustDataItem()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "JPSMASK"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskBuffer:[B

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readSimpleValue()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    if-eqz v2, :cond_8

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "SegmentMaskWidth"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskWidth:I

    goto/16 :goto_1

    :cond_1
    const-string v3, "SegmentMaskHeight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskHeight:I

    goto/16 :goto_1

    :cond_2
    const-string v3, "SegmentX"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentX:I

    goto :goto_1

    :cond_3
    const-string v3, "SegmentY"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentY:I

    goto :goto_1

    :cond_4
    const-string v3, "SegmentLeft"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentLeft:I

    goto :goto_1

    :cond_5
    const-string v3, "SegmentTop"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentTop:I

    goto :goto_1

    :cond_6
    const-string v3, "SegmentRight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentRight:I

    goto :goto_1

    :cond_7
    const-string v3, "SegmentBottom"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentBottom:I

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private writeCustDataItem()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "JPSMASK"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskBuffer:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskBuffer:[B

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    return-void
.end method

.method private writeSimpleValue()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "SegmentMaskWidth"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v2, "SegmentMaskHeight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->maskHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v2, "SegmentX"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentX:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v2, "SegmentY"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentY:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v2, "SegmentLeft"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentLeft:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v2, "SegmentTop"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentTop:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v2, "SegmentRight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentRight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v2, "SegmentBottom"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/SegmentMaskInfo;->segmentBottom:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    :cond_8
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public read()V
    .locals 3

    const-string v0, ">>>>SegmentMaskInfoParser-read"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<read>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<read> mSegmentMaskInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->readSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->readCustDataItem()V

    sget-object v0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<read> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "read"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->dumpValuesAndBuffers(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method

.method public serialize()Lcom/mediatek/accessor/parser/SerializedInfo;
    .locals 3

    const-string v0, ">>>>SegmentMaskInfoParser-serialize"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<serialize>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/parser/SerializedInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/parser/SerializedInfo;-><init>()V

    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    const-string v2, "XMP"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->standardXmpBuf:[B

    :cond_0
    iget-object v1, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->customizedBufMap:Ljava/util/Map;

    :cond_1
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0
.end method

.method public write()V
    .locals 2

    const-string v0, ">>>>SegmentMaskInfoParser-write"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mSegmentMaskInfo:Lcom/mediatek/accessor/data/SegmentMaskInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write> mSegmentMaskInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->dumpValuesAndBuffers(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->writeSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->writeCustDataItem()V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->write()V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/parser/SegmentMaskInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->write()V

    :cond_2
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method
