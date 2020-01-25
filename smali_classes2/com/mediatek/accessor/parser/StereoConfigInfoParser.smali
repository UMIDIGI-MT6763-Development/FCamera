.class public Lcom/mediatek/accessor/parser/StereoConfigInfoParser;
.super Ljava/lang/Object;
.source "StereoConfigInfoParser.java"

# interfaces
.implements Lcom/mediatek/accessor/parser/IParser;


# static fields
.field private static final ATTRIBUTE_CLEAR_IMAGE_IN_APP1:Ljava/lang/String; = "Data"

.field private static final ATTRIBUTE_CLEAR_IMAGE_IN_APP15:Ljava/lang/String; = "CLRIMAG"

.field private static final ATTRIBUTE_CUR_DAC:Ljava/lang/String; = "CurDac"

.field private static final ATTRIBUTE_DEPTH_ROTATION:Ljava/lang/String; = "DepthRotation"

.field private static final ATTRIBUTE_DOF_LEVEL:Ljava/lang/String; = "DOF"

.field private static final ATTRIBUTE_FACE_BOTTOM:Ljava/lang/String; = "FaceBottom"

.field private static final ATTRIBUTE_FACE_COUNT:Ljava/lang/String; = "FaceCount"

.field private static final ATTRIBUTE_FACE_FLAG:Ljava/lang/String; = "IsFace"

.field private static final ATTRIBUTE_FACE_LEFT:Ljava/lang/String; = "FaceLeft"

.field private static final ATTRIBUTE_FACE_RATIO:Ljava/lang/String; = "FaceRatio"

.field private static final ATTRIBUTE_FACE_RIGHT:Ljava/lang/String; = "FaceRight"

.field private static final ATTRIBUTE_FACE_RIP:Ljava/lang/String; = "FaceRip"

.field private static final ATTRIBUTE_FACE_STRUCT_NAME:Ljava/lang/String; = "FDInfo"

.field private static final ATTRIBUTE_FACE_TOP:Ljava/lang/String; = "FaceTop"

.field private static final ATTRIBUTE_JPS_HEIGHT:Ljava/lang/String; = "JpsHeight"

.field private static final ATTRIBUTE_JPS_WIDTH:Ljava/lang/String; = "JpsWidth"

.field private static final ATTRIBUTE_LDC_BUFFER_IN_APP1:Ljava/lang/String; = "LDC"

.field private static final ATTRIBUTE_LDC_BUFFER_IN_APP15:Ljava/lang/String; = "LDCDATA"

.field private static final ATTRIBUTE_LDC_HEIGHT:Ljava/lang/String; = "LdcHeight"

.field private static final ATTRIBUTE_LDC_WIDTH:Ljava/lang/String; = "LdcWidth"

.field private static final ATTRIBUTE_MAIN_CAM_POS:Ljava/lang/String; = "MainCamPos"

.field private static final ATTRIBUTE_MASK_HEIGHT:Ljava/lang/String; = "MaskHeight"

.field private static final ATTRIBUTE_MASK_WIDTH:Ljava/lang/String; = "MaskWidth"

.field private static final ATTRIBUTE_MAX_DAC:Ljava/lang/String; = "MacDac"

.field private static final ATTRIBUTE_MIN_DAC:Ljava/lang/String; = "MinDac"

.field private static final ATTRIBUTE_ORIENTATION:Ljava/lang/String; = "Orientation"

.field private static final ATTRIBUTE_POS_X:Ljava/lang/String; = "PosX"

.field private static final ATTRIBUTE_POS_Y:Ljava/lang/String; = "PosY"

.field private static final ATTRIBUTE_TOUCH_COORDX_1ST:Ljava/lang/String; = "TouchCoordX1st"

.field private static final ATTRIBUTE_TOUCH_COORDY_1ST:Ljava/lang/String; = "TouchCoordY1st"

.field private static final ATTRIBUTE_VIEW_HEIGHT:Ljava/lang/String; = "ViewHeight"

.field private static final ATTRIBUTE_VIEW_WIDTH:Ljava/lang/String; = "ViewWidth"

.field private static final NS_FACE_FIELD:Ljava/lang/String; = "FD"

.field private static final NS_GIMAGE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/image/"

.field private static final NS_STEREO:Ljava/lang/String; = "http://ns.mediatek.com/refocus/jpsconfig/"

.field private static final PRIFIX_FACE:Ljava/lang/String; = "FD"

.field private static final PRIFIX_GIMAGE:Ljava/lang/String; = "GImage"

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

.field private mListOfStructItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mediatek/accessor/meta/data/DataItem$StructItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

.field private mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

.field private mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/accessor/util/Log;->Tag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/operator/IMetaOperator;Lcom/mediatek/accessor/data/StereoConfigInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iput-object p4, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->initSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->initBufferItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->initStructItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->initCustDataItem()V

    iget-object p4, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    iput-object v0, p4, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    iput-object v0, p4, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfStructItem:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    invoke-interface {p1, p4}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object p4, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    iput-object p4, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfBufferItem:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_1
    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    invoke-interface {p2, p1}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_2
    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

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

.method public constructor <init>([B[BLjava/util/Map;Lcom/mediatek/accessor/data/StereoConfigInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;",
            "Lcom/mediatek/accessor/data/StereoConfigInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    const/4 v2, 0x1

    iput v2, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->dest:I

    iput-object p4, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->initSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->initBufferItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->initStructItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->initCustDataItem()V

    iget-object p4, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    iput-object v0, p4, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    iput-object v0, p4, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfStructItem:Ljava/util/ArrayList;

    const/4 p4, 0x0

    invoke-static {v1, p1, p4}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-interface {p1, v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    iput-object v0, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfBufferItem:Ljava/util/ArrayList;

    invoke-static {v1, p2, p4}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_1
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    invoke-interface {p1, p2}, Lcom/mediatek/accessor/operator/IMetaOperator;->setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    invoke-static {v2, p4, p3}, Lcom/mediatek/accessor/operator/MetaOperatorFactory;->getOperatorInstance(I[BLjava/util/Map;)Lcom/mediatek/accessor/operator/IMetaOperator;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    :try_start_2
    iget-object p1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    iget-object p2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

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

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->debugDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StereoConfigInfo_clearImage_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v2, "<dumpValuesAndBuffers> clearImage is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v1, v1, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "StereoConfigInfo_ldcBuffer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Utils;->writeBufferToFile(Ljava/lang/String;[B)Z

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v2, "<dumpValuesAndBuffers> ldcBuffer is null!"

    invoke-static {v1, v2}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StereoConfigInfo_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".txt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v0}, Lcom/mediatek/accessor/data/StereoConfigInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mediatek/accessor/util/Utils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getBufferItem()Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;
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

    return-object v0
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

.method private getStructItemInstance()Lcom/mediatek/accessor/meta/data/DataItem$StructItem;
    .locals 3

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->dest:I

    new-instance v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    invoke-direct {v1}, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;-><init>()V

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "http://ns.mediatek.com/refocus/jpsconfig/"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "MRefocus"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    new-instance v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    invoke-direct {v1}, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;-><init>()V

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "FD"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldNameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "FD"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    return-object v0
.end method

.method private initBufferItem()V
    .locals 3

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getBufferItem()Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    move-result-object v0

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "http://ns.mediatek.com/refocus/jpsconfig/"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "MRefocus"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    const-string v1, "LDC"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getBufferItem()Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    move-result-object v0

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "http://ns.google.com/photos/1.0/image/"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpace:Ljava/lang/String;

    iget-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->nameSpaceItem:Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;

    const-string v2, "GImage"

    iput-object v2, v1, Lcom/mediatek/accessor/meta/data/DataItem$NameSpaceItem;->nameSpacePrifix:Ljava/lang/String;

    const-string v1, "Data"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initCustDataItem()V
    .locals 2

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    const-string v1, "LDCDATA"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    invoke-direct {v0}, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;-><init>()V

    const-string v1, "CLRIMAG"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initSimpleValue()V
    .locals 2

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "JpsWidth"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "JpsHeight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "MaskWidth"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "MaskHeight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "PosX"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "PosY"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "ViewWidth"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "ViewHeight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "Orientation"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "DepthRotation"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "MainCamPos"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "TouchCoordX1st"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "TouchCoordY1st"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "FaceCount"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "DOF"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "LdcWidth"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "LdcHeight"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "IsFace"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "FaceRatio"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "CurDac"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "MinDac"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getSimpleValueInstance()Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    move-result-object v0

    const-string v1, "MacDac"

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initStructItem()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getStructItemInstance()Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FDInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structName:Ljava/lang/String;

    const-string v3, "FaceLeft"

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getStructItemInstance()Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FDInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structName:Ljava/lang/String;

    const-string v3, "FaceTop"

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getStructItemInstance()Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FDInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structName:Ljava/lang/String;

    const-string v3, "FaceRight"

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getStructItemInstance()Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FDInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structName:Ljava/lang/String;

    const-string v3, "FaceBottom"

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->getStructItemInstance()Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FDInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structName:Ljava/lang/String;

    const-string v3, "FaceRip"

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private readBufferItem()V
    .locals 5

    sget-object v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<readBufferItem>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfBufferItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "LDC"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    sget-object v2, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v3, "<readBufferItem> ldcBuffer get value from APP1."

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "Data"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    sget-object v2, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v3, "<readBufferItem> clearImage get value from APP1."

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readCustDataItem()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "CLRIMAG"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v4, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    :cond_1
    const-string v3, "LDCDATA"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    iput-object v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private readSimpleValue()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    if-eqz v2, :cond_16

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v3, "JpsWidth"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->jpsWidth:I

    goto/16 :goto_1

    :cond_1
    const-string v3, "JpsHeight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->jpsHeight:I

    goto/16 :goto_1

    :cond_2
    const-string v3, "MaskWidth"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->maskWidth:I

    goto/16 :goto_1

    :cond_3
    const-string v3, "MaskHeight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->maskHeight:I

    goto/16 :goto_1

    :cond_4
    const-string v3, "PosX"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->posX:I

    goto/16 :goto_1

    :cond_5
    const-string v3, "PosY"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->posY:I

    goto/16 :goto_1

    :cond_6
    const-string v3, "ViewWidth"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->viewWidth:I

    goto/16 :goto_1

    :cond_7
    const-string v3, "ViewHeight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->viewHeight:I

    goto/16 :goto_1

    :cond_8
    const-string v3, "Orientation"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->imageOrientation:I

    goto/16 :goto_1

    :cond_9
    const-string v3, "DepthRotation"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->depthOrientation:I

    goto/16 :goto_1

    :cond_a
    const-string v3, "MainCamPos"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->mainCamPos:I

    goto/16 :goto_1

    :cond_b
    const-string v3, "TouchCoordX1st"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->touchCoordX1st:I

    goto/16 :goto_1

    :cond_c
    const-string v3, "TouchCoordY1st"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->touchCoordY1st:I

    goto/16 :goto_1

    :cond_d
    const-string v3, "FaceCount"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->faceCount:I

    goto/16 :goto_1

    :cond_e
    const-string v3, "DOF"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->dofLevel:I

    goto/16 :goto_1

    :cond_f
    const-string v3, "LdcWidth"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcWidth:I

    goto/16 :goto_1

    :cond_10
    const-string v3, "LdcHeight"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcHeight:I

    goto/16 :goto_1

    :cond_11
    const-string v3, "IsFace"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->isFace:Z

    goto :goto_1

    :cond_12
    const-string v3, "FaceRatio"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->faceRatio:F

    goto :goto_1

    :cond_13
    const-string v3, "CurDac"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->curDac:I

    goto :goto_1

    :cond_14
    const-string v3, "MinDac"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->minDac:I

    goto :goto_1

    :cond_15
    const-string v3, "MacDac"

    iget-object v4, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->maxDac:I

    :cond_16
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_17
    return-void
.end method

.method private readStructItem()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private writeCustDataItem()V
    .locals 4

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "LDCDATA"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    goto :goto_1

    :cond_1
    const-string v2, "CLRIMAG"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v2, v2, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$BufferItem;->value:[B

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfCustDataItem:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfCustomDataItem:Ljava/util/ArrayList;

    return-void
.end method

.method private writeSimpleValue()V
    .locals 5

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v3, "mListOfSimpleValue.get(i) is null!"

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v2, "JpsWidth"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->jpsWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v2, "JpsHeight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->jpsHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v2, "MaskWidth"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->maskWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v2, "MaskHeight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->maskHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v2, "PosX"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->posX:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const-string v2, "PosY"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->posY:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v2, "ViewWidth"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->viewWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v2, "ViewHeight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->viewHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v2, "Orientation"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->imageOrientation:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string v2, "DepthRotation"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->depthOrientation:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_a
    const-string v2, "MainCamPos"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->mainCamPos:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_b
    const-string v2, "TouchCoordX1st"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->touchCoordX1st:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchCoordX1st.value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v4, v4, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "TouchCoordY1st"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->touchCoordY1st:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    sget-object v2, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touchCoordY1st.value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v4, v4, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v2, "FaceCount"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->faceCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string v2, "DOF"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->dofLevel:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    const-string v2, "LdcWidth"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const-string v2, "LdcHeight"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    const-string v2, "IsFace"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-boolean v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->isFace:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const-string v2, "FaceRatio"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->faceRatio:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_13
    const-string v2, "CurDac"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->curDac:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_14
    const-string v2, "MinDac"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->minDac:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    goto :goto_1

    :cond_15
    const-string v2, "MacDac"

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, v3, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget v3, v3, Lcom/mediatek/accessor/data/StereoConfigInfo;->maxDac:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/accessor/meta/data/DataItem$SimpleItem;->value:Ljava/lang/String;

    :cond_16
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfSimpleValue:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfSimpleValue:Ljava/util/ArrayList;

    return-void
.end method

.method private writeStructItem()V
    .locals 7

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    iget-object v3, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_7

    iget-object v5, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v6, "mListOfStructItem.get(j) is null!"

    invoke-static {v5, v6}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FDInfo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->structName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "FaceLeft"

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;

    iget v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;->faceLeft:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldValue:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2
    const-string v5, "FaceTop"

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;

    iget v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;->faceTop:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldValue:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    const-string v5, "FaceRight"

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;

    iget v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;->faceRight:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldValue:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v5, "FaceBottom"

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;

    iget v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;->faceBottom:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldValue:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v5, "FaceRip"

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, v6, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;

    iget-object v6, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo;->fdInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;

    iget v6, v6, Lcom/mediatek/accessor/data/StereoConfigInfo$FaceDetectionInfo;->faceRip:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/accessor/meta/data/DataItem$StructItem;->fieldValue:Ljava/lang/String;

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardDataCollections:Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mListOfStructItem:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;->listOfStructItem:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public read()V
    .locals 3

    const-string v0, ">>>>StereoConfigInfoParser-read"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<read>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    :cond_0
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    if-nez v0, :cond_2

    sget-object v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<read> mStereoConfigInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->readSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->readStructItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->readCustDataItem()V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->clearImage:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    iget-object v0, v0, Lcom/mediatek/accessor/data/StereoConfigInfo;->ldcBuffer:[B

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mExtendedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->read()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->readBufferItem()V

    :cond_4
    sget-object v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<read> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "read"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->dumpValuesAndBuffers(Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method

.method public serialize()Lcom/mediatek/accessor/parser/SerializedInfo;
    .locals 3

    const-string v0, ">>>>StereoConfigInfoParser-serialize"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<serialize>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mediatek/accessor/parser/SerializedInfo;

    invoke-direct {v0}, Lcom/mediatek/accessor/parser/SerializedInfo;-><init>()V

    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/mediatek/accessor/operator/IMetaOperator;->serialize()Ljava/util/Map;

    move-result-object v1

    const-string v2, "XMP"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/mediatek/accessor/parser/SerializedInfo;->standardXmpBuf:[B

    :cond_0
    iget-object v1, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

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

    const-string v0, ">>>>StereoConfigInfoParser-write"

    invoke-static {v0}, Lcom/mediatek/accessor/util/TraceHelper;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write>"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStereoConfigInfo:Lcom/mediatek/accessor/data/StereoConfigInfo;

    if-nez v0, :cond_0

    sget-object v0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->TAG:Ljava/lang/String;

    const-string v1, "<write> mStereoConfigInfo is null!"

    invoke-static {v0, v1}, Lcom/mediatek/accessor/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void

    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->dumpValuesAndBuffers(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->writeSimpleValue()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->writeStructItem()V

    invoke-direct {p0}, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->writeCustDataItem()V

    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mStandardMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->write()V

    :cond_1
    iget-object v0, p0, Lcom/mediatek/accessor/parser/StereoConfigInfoParser;->mCustomizedMetaOperator:Lcom/mediatek/accessor/operator/IMetaOperator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/mediatek/accessor/operator/IMetaOperator;->write()V

    :cond_2
    invoke-static {}, Lcom/mediatek/accessor/util/TraceHelper;->endSection()V

    return-void
.end method
