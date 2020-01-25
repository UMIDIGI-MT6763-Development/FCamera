.class public Lcom/mediatek/accessor/parser/StereoBufferInfoParser;
.super Ljava/lang/Object;
.source "StereoBufferInfoParser.java"

# interfaces
.implements Lcom/mediatek/accessor/parser/IParser;


# static fields
.field private static final ATTRIBUTE_JPS_BUFFER:Ljava/lang/String; = "JPSDATA"

.field private static final ATTRIBUTE_SEGMENT_MASK_BUFFER:Ljava/lang/String; = "JPSMASK"

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

.field private mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/data/StereoBufferInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->initCustDataItem()V

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object v0, p2, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    invoke-interface {p1, p2}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lcom/mediatek/accessor/data/StereoBufferInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lcom/mediatek/accessor/data/StereoBufferInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->initCustDataItem()V

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object v0, p2, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-interface {p1, p2}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
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

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoBufferInfo;->debugDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoBufferInfo;->maskBuffer:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StereoBufferInfo_maskBuffer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoBufferInfo;->maskBuffer:[B

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    const-string v2, "<dumpValuesAndBuffers> maskBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoBufferInfo;->jpsBuffer:[B

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StereoBufferInfo_jpsBuffer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoBufferInfo;->jpsBuffer:[B

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    const-string v2, "<dumpValuesAndBuffers> jpsBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StereoBufferInfo_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/data/StereoBufferInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Utils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initCustDataItem()V
    .locals 2

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    const-string v1, "JPSDATA"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    const-string v1, "JPSMASK"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBufferItem()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "JPSDATA"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/StereoBufferInfo;->jpsBuffer:[B

    goto :goto_1

    :cond_1
    const-string v3, "JPSMASK"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/StereoBufferInfo;->maskBuffer:[B

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private writeCustDataItem()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "JPSDATA"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoBufferInfo;->jpsBuffer:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoBufferInfo;->jpsBuffer:[B

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    goto :goto_1

    :cond_1
    const-string v2, "JPSMASK"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoBufferInfo;->maskBuffer:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoBufferInfo;->maskBuffer:[B

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public read()V
    .locals 3

    const-string v0, ">>>>StereoBufferInfoParser-read"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<read>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<read> mStereoBufferInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->readBufferItem()V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<read> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "read"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->dumpValuesAndBuffers(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method

.method public serialize()Lcom/mediatek/accessor/parser/SerializedInfo;
    .locals 2

    const-string v0, ">>>>StereoBufferInfoParser-serialize"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<serialize>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/parser/SerializedInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/parser/SerializedInfo;-><init>()V

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->customizedBufMap:Ljava/util/Map;

    :cond_0
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0
.end method

.method public write()V
    .locals 2

    const-string v0, ">>>>StereoBufferInfoParser-write"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mStereoBufferInfo:Lcom/mediatek/accessor/data/StereoBufferInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write> mStereoBufferInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->dumpValuesAndBuffers(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->writeCustDataItem()V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoBufferInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->write()V

    :cond_1
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method
