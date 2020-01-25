.class public Lcom/mediatek/accessor/parser/StereoDepthInfoParser;
.super Ljava/lang/Object;
.source "StereoDepthInfoParser.java"

# interfaces
.implements Lcom/mediatek/accessor/parser/IParser;


# static fields
.field private static final ATTRIBUTE_DEBUG_BUFFER:Ljava/lang/String; = "DEBUGBF"

.field private static final ATTRIBUTE_DEPTH_BUFFER:Ljava/lang/String; = "DEPTHBF"

.field private static final ATTRIBUTE_DEPTH_BUFFER_HEIGHT:Ljava/lang/String; = "DepthBufferHeight"

.field private static final ATTRIBUTE_DEPTH_BUFFER_WIDTH:Ljava/lang/String; = "DepthBufferWidth"

.field private static final ATTRIBUTE_DEPTH_MAP:Ljava/lang/String; = "Data"

.field private static final ATTRIBUTE_DEPTH_MAP_HEIGHT:Ljava/lang/String; = "XmpDepthHeight"

.field private static final ATTRIBUTE_DEPTH_MAP_WIDTH:Ljava/lang/String; = "XmpDepthWidth"

.field private static final ATTRIBUTE_DEPTH_OF_FIELD_LAST:Ljava/lang/String; = "DepthOfFieldLast"

.field private static final ATTRIBUTE_META_BUFFER_HEIGHT:Ljava/lang/String; = "MetaBufferHeight"

.field private static final ATTRIBUTE_META_BUFFER_WIDTH:Ljava/lang/String; = "MetaBufferWidth"

.field private static final ATTRIBUTE_TOUCH_COORDX_LAST:Ljava/lang/String; = "TouchCoordXLast"

.field private static final ATTRIBUTE_TOUCH_COORDY_LAST:Ljava/lang/String; = "TouchCoordYLast"

.field private static final NS_GDEPTH:Ljava/lang/String; = "http://ns.google.com/photos/1.0/depthmap/"

.field private static final NS_STEREO:Ljava/lang/String; = "http://ns.mediatek.com/refocus/jpsconfig/"

.field private static final PRIFIX_GDEPTH:Ljava/lang/String; = "GDepth"

.field private static final PRIFIX_STEREO:Ljava/lang/String; = "MRefocus"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

.field private mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

.field private mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

.field private mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

.field private mListOfBufferItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;",
            ">;"
        }
    .end annotation
.end field

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

.field private mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

.field private mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

.field private mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/data/StereoDepthInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iput-object p4, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->initSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->initBufferItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->initCustDataItem()V

    iget-object p4, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    iput-object v0, p4, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    invoke-interface {p1, p4}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object p4, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    iput-object p4, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfBufferItem:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_1
    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    invoke-interface {p2, p1}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_2
    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    invoke-interface {p2, p1}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public constructor <init>([B[BLjava/util/Map;Lcom/mediatek/accessor/data/StereoDepthInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lcom/mediatek/accessor/data/StereoDepthInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v2, 0x1

    iput v2, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iput-object p4, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->initSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->initBufferItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->initCustDataItem()V

    iget-object p4, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    iput-object v0, p4, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-static {v1, p1, p4}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-interface {p1, v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfBufferItem:Ljava/util/ArrayList;

    invoke-static {v1, p2, p4}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_1
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-interface {p1, p2}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    invoke-static {v2, p4, p3}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_2
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-interface {p1, p2}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_2
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

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBuffer:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StereoDepthInfo_depthBuffer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBuffer:[B

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    const-string v2, "<dumpValuesAndBuffers> depthBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMap:[B

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StereoDepthInfo_depthMap_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMap:[B

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    const-string v2, "<dumpValuesAndBuffers> depthMap is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugBuffer:[B

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StereoDepthInfo_debugBuffer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugBuffer:[B

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    const-string v2, "<dumpValuesAndBuffers> debugBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StereoDepthInfo_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/data/StereoDepthInfo;->toString()Ljava/lang/String;

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

    const-string v2, "http://ns.mediatek.com/refocus/jpsconfig/"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "MRefocus"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    return-object v0
.end method

.method private initBufferItem()V
    .locals 3

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->dest:I

    new-instance v2, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    invoke-direct {v2}, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;-><init>()V

    iput-object v2, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v2, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iput v1, v2, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->dest:I

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "http://ns.google.com/photos/1.0/depthmap/"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "GDepth"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    const-string v1, "Data"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCustDataItem()V
    .locals 2

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    const-string v1, "DEPTHBF"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    const-string v1, "DEBUGBF"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initSimpleValue()V
    .locals 2

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "MetaBufferWidth"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "MetaBufferHeight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "TouchCoordXLast"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "TouchCoordYLast"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "DepthOfFieldLast"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "DepthBufferWidth"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "DepthBufferHeight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "XmpDepthWidth"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "XmpDepthHeight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readBufferItem()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "Data"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMap:[B

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readCustDataItem()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "DEPTHBF"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBuffer:[B

    goto :goto_1

    :cond_1
    const-string v3, "DEBUGBF"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/mediatek/accessor/util/Utils;->ENABLE_BUFFER_DUMP:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugBuffer:[B

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readSimpleValue()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    if-eqz v2, :cond_9

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "MetaBufferWidth"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->metaBufferWidth:I

    goto/16 :goto_1

    :cond_1
    const-string v3, "MetaBufferHeight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->metaBufferHeight:I

    goto/16 :goto_1

    :cond_2
    const-string v3, "TouchCoordXLast"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->touchCoordXLast:I

    goto/16 :goto_1

    :cond_3
    const-string v3, "TouchCoordYLast"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->touchCoordYLast:I

    goto :goto_1

    :cond_4
    const-string v3, "DepthOfFieldLast"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthOfFieldLast:I

    goto :goto_1

    :cond_5
    const-string v3, "DepthBufferWidth"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBufferWidth:I

    goto :goto_1

    :cond_6
    const-string v3, "DepthBufferHeight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBufferHeight:I

    goto :goto_1

    :cond_7
    const-string v3, "XmpDepthWidth"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMapWidth:I

    goto :goto_1

    :cond_8
    const-string v3, "XmpDepthHeight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMapHeight:I

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private writeBufferItem()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "Data"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMap:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMap:[B

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfBufferItem:Ljava/util/ArrayList;

    return-void
.end method

.method private writeCustDataItem()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "DEPTHBF"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBuffer:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBuffer:[B

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    goto :goto_1

    :cond_1
    const-string v2, "DEBUGBF"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugBuffer:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->debugBuffer:[B

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    return-void
.end method

.method private writeSimpleValue()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "MetaBufferWidth"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->metaBufferWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v2, "MetaBufferHeight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->metaBufferHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v2, "TouchCoordXLast"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->touchCoordXLast:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v2, "TouchCoordYLast"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->touchCoordYLast:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v2, "DepthOfFieldLast"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthOfFieldLast:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v2, "DepthBufferWidth"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBufferWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v2, "DepthBufferHeight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthBufferHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v2, "XmpDepthWidth"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMapWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v2, "XmpDepthHeight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoDepthInfo;->depthMapHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    :cond_9
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public read()V
    .locals 3

    const-string v0, ">>>>StereoDepthInfoParser-read"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<read>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    :cond_2
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    if-nez v0, :cond_3

    sget-object v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<read> mStereoDepthInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->readSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->readBufferItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->readCustDataItem()V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<read> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "read"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->dumpValuesAndBuffers(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method

.method public serialize()Lcom/mediatek/accessor/parser/SerializedInfo;
    .locals 3

    const-string v0, ">>>>StereoDepthInfoParser-serialize"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<serialize>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/parser/SerializedInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/parser/SerializedInfo;-><init>()V

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    const-string v2, "XMP"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->standardXmpBuf:[B

    :cond_0
    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    const-string v2, "XMP"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->extendedXmpBuf:[B

    :cond_1
    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->customizedBufMap:Ljava/util/Map;

    :cond_2
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-object v0
.end method

.method public write()V
    .locals 2

    const-string v0, ">>>>StereoDepthInfoParser-write"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStereoDepthInfo:Lcom/mediatek/accessor/data/StereoDepthInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write> mStereoDepthInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->dumpValuesAndBuffers(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->writeSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->writeBufferItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->writeCustDataItem()V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->write()V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->write()V

    :cond_2
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoDepthInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->write()V

    :cond_3
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method
