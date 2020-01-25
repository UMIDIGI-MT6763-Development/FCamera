.class public Lcom/freeme/elementscenter/provider/StatisticDBData;
.super Ljava/lang/Object;
.source "StatisticDBData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;
    }
.end annotation


# static fields
.field public static final ACTION_CLICK_OPT:I = 0x2

.field public static final ACTION_DOWNLOAD_OPT:I = 0x3

.field public static final ACTION_ID:Ljava/lang/String; = "ac_id"

.field public static final ACTION_LOAD_OPT:I = 0x5

.field public static final ACTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ACTION_START_CAMERA:I = 0x1

.field public static final ACTION_UNLOAD_OPT:I = 0x4

.field public static final AUTHORITY:Ljava/lang/String; = "com.freeme.camera.statistic"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.freeme.camera.statistic"

.field public static final CONTENT_POS_URI:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.freeme.camera.statistic"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DC_EC_OPTIONS_ARRAY:[Ljava/lang/String;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id asc"

.field private static final EC_POSE_OPTIONS_ARRAY:[Ljava/lang/String;

.field private static final EC_WATERMARK_OPTIONS_ARRAY:[Ljava/lang/String;

.field public static final EXTRA_INFO:Ljava/lang/String; = "f"

.field private static final FREEME_STATISTIC_OPTIONS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final ITEM:I = 0x1

.field public static final ITEM_ID:I = 0x2

.field public static final ITEM_POS:I = 0x3

.field public static final OPTION_AUTO_EXIT_AP:Ljava/lang/String; = "0012"

.field public static final OPTION_BF_DERMABRASION:Ljava/lang/String; = "0702"

.field public static final OPTION_BF_EYE:Ljava/lang/String; = "0704"

.field public static final OPTION_BF_FACE:Ljava/lang/String; = "0703"

.field public static final OPTION_BF_LEVEL:Ljava/lang/String; = "0701"

.field public static final OPTION_CAMERA_CHANGE:Ljava/lang/String; = "0003"

.field public static final OPTION_CHILD:Ljava/lang/String; = "0601"

.field public static final OPTION_DC:Ljava/lang/String; = "0209"

.field public static final OPTION_DC_BF:Ljava/lang/String; = "0203"

.field public static final OPTION_DC_BM:Ljava/lang/String; = "0204"

.field public static final OPTION_DC_CHILD:Ljava/lang/String; = "0207"

.field public static final OPTION_DC_HDR:Ljava/lang/String; = "0202"

.field public static final OPTION_DC_NIGHT:Ljava/lang/String; = "0208"

.field public static final OPTION_DC_PANORAMA:Ljava/lang/String; = "0201"

.field public static final OPTION_DC_POSE:Ljava/lang/String; = "0206"

.field public static final OPTION_DC_WATERMARK:Ljava/lang/String; = "0205"

.field public static final OPTION_DEFUALT_VALUES:Ljava/lang/String; = "0014"

.field public static final OPTION_EC:Ljava/lang/String; = "0305"

.field public static final OPTION_EC_CHILD:Ljava/lang/String; = "0303"

.field public static final OPTION_EC_JIGSAW:Ljava/lang/String; = "0304"

.field public static final OPTION_EC_POSE:Ljava/lang/String; = "0302"

.field public static final OPTION_EC_WATERMARK:Ljava/lang/String; = "0301"

.field public static final OPTION_ENTRY_SETTINGS:Ljava/lang/String; = "0900"

.field public static final OPTION_EXPOSURE:Ljava/lang/String; = "0011"

.field public static final OPTION_FACE_DECTION:Ljava/lang/String; = "0017"

.field public static final OPTION_FLASH:Ljava/lang/String; = "0001"

.field public static final OPTION_GESTURE_SHOT:Ljava/lang/String; = "0015"

.field public static final OPTION_GRID_LINES:Ljava/lang/String; = "0007"

.field public static final OPTION_ID:Ljava/lang/String; = "op_id"

.field public static final OPTION_JIGSAW:Ljava/lang/String; = "0801"

.field public static final OPTION_LOCATION:Ljava/lang/String; = "0010"

.field public static final OPTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPTION_MIRROR:Ljava/lang/String; = "0016"

.field public static final OPTION_MODE_3D_SCANNER:Ljava/lang/String; = "0111"

.field public static final OPTION_MODE_BF:Ljava/lang/String; = "0101"

.field public static final OPTION_MODE_BM:Ljava/lang/String; = "0109"

.field public static final OPTION_MODE_BV:Ljava/lang/String; = "0014"

.field public static final OPTION_MODE_CHILD:Ljava/lang/String; = "0105"

.field public static final OPTION_MODE_DOWNLOAD:Ljava/lang/String; = "0108"

.field public static final OPTION_MODE_FFB:Ljava/lang/String; = "0112"

.field public static final OPTION_MODE_FILTER:Ljava/lang/String; = "0113"

.field public static final OPTION_MODE_HDR:Ljava/lang/String; = "0103"

.field public static final OPTION_MODE_NIGHT:Ljava/lang/String; = "0107"

.field public static final OPTION_MODE_PANORAMA:Ljava/lang/String; = "0102"

.field public static final OPTION_MODE_POSE:Ljava/lang/String; = "0106"

.field public static final OPTION_MODE_QR_CODE:Ljava/lang/String; = "0110"

.field public static final OPTION_MODE_VIDEO_BF:Ljava/lang/String; = "0015"

.field public static final OPTION_MODE_VIDEO_SM:Ljava/lang/String; = "0016"

.field public static final OPTION_MODE_WATERMARK:Ljava/lang/String; = "0104"

.field public static final OPTION_PICTURE_SIZE_BACK:Ljava/lang/String; = "0004"

.field public static final OPTION_PICTURE_SIZE_FRONT:Ljava/lang/String; = "0005"

.field public static final OPTION_POSE_FAMILAY:Ljava/lang/String; = "0403"

.field public static final OPTION_POSE_FEMALE:Ljava/lang/String; = "0402"

.field public static final OPTION_POSE_MALE:Ljava/lang/String; = "0401"

.field public static final OPTION_SHUTTER_SOUND:Ljava/lang/String; = "0009"

.field public static final OPTION_TIMECOUNT_SHUTTER:Ljava/lang/String; = "0002"

.field public static final OPTION_TIMESTAMP:Ljava/lang/String; = "s_dt"

.field public static final OPTION_TOUCH_CAPTURE:Ljava/lang/String; = "0006"

.field public static final OPTION_VOICE_CAPTURE:Ljava/lang/String; = "0008"

.field public static final OPTION_VOLUME_CAPTURE:Ljava/lang/String; = "0013"

.field public static final OPTION_WATERMARK_CATCHWORD:Ljava/lang/String; = "0502"

.field public static final OPTION_WATERMARK_FOOD:Ljava/lang/String; = "0504"

.field public static final OPTION_WATERMARK_MOOD:Ljava/lang/String; = "0506"

.field public static final OPTION_WATERMARK_REGARDS:Ljava/lang/String; = "0505"

.field public static final OPTION_WATERMARK_SELFIE:Ljava/lang/String; = "0503"

.field public static final OPTION_WATERMARK_TRAVEL:Ljava/lang/String; = "0501"

.field public static final RES_NAME:Ljava/lang/String; = "name"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "content://com.freeme.camera.statistic/item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.freeme.camera.statistic/pos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->CONTENT_POS_URI:Landroid/net/Uri;

    new-instance v0, Lcom/freeme/elementscenter/provider/StatisticDBData$1;

    invoke-direct {v0}, Lcom/freeme/elementscenter/provider/StatisticDBData$1;-><init>()V

    sput-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->ACTION_MAP:Ljava/util/HashMap;

    new-instance v0, Lcom/freeme/elementscenter/provider/StatisticDBData$2;

    invoke-direct {v0}, Lcom/freeme/elementscenter/provider/StatisticDBData$2;-><init>()V

    sput-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->OPTION_MAP:Ljava/util/HashMap;

    new-instance v0, Lcom/freeme/elementscenter/provider/StatisticDBData$3;

    invoke-direct {v0}, Lcom/freeme/elementscenter/provider/StatisticDBData$3;-><init>()V

    sput-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->FREEME_STATISTIC_OPTIONS_MAP:Ljava/util/HashMap;

    const-string v0, "0209"

    const-string v1, "0305"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->DC_EC_OPTIONS_ARRAY:[Ljava/lang/String;

    const-string v1, "0501"

    const-string v2, "0504"

    const-string v3, "0502"

    const-string v4, "0505"

    const-string v5, "0503"

    const-string v6, "0506"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->EC_WATERMARK_OPTIONS_ARRAY:[Ljava/lang/String;

    const-string v0, "0401"

    const-string v1, "0402"

    const-string v2, "0403"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->EC_POSE_OPTIONS_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDCECOptionId(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-ltz p0, :cond_0

    sget-object v1, Lcom/freeme/elementscenter/provider/StatisticDBData;->DC_EC_OPTIONS_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge p0, v2, :cond_0

    aget-object v0, v1, p0

    :cond_0
    return-object v0
.end method

.method public static getECPoseOptionId(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-ltz p0, :cond_0

    sget-object v1, Lcom/freeme/elementscenter/provider/StatisticDBData;->EC_POSE_OPTIONS_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge p0, v2, :cond_0

    aget-object v0, v1, p0

    :cond_0
    return-object v0
.end method

.method public static getECWaterMarkOptionId(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-ltz p0, :cond_0

    sget-object v1, Lcom/freeme/elementscenter/provider/StatisticDBData;->EC_WATERMARK_OPTIONS_ARRAY:[Ljava/lang/String;

    array-length v2, v1

    if-ge p0, v2, :cond_0

    aget-object v0, v1, p0

    :cond_0
    return-object v0
.end method

.method public static getOptionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget-object v1, Lcom/freeme/elementscenter/provider/StatisticDBData;->FREEME_STATISTIC_OPTIONS_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/freeme/elementscenter/provider/StatisticDBData;->FREEME_STATISTIC_OPTIONS_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static insertStatistic(Landroid/content/Context;Lcom/freeme/elementscenter/provider/StatisticDBData$StatisticInfo;)V
    .locals 0

    return-void
.end method
