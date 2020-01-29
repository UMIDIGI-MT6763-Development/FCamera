.class public Lcom/freeme/camera/common/debug/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/debug/LogUtil$Tag;
    }
.end annotation


# static fields
.field private static final CAMERA_LOGTAG_PREFIX:Ljava/lang/String; = "CamAp_"

.field public static final MTKCAM_LOG_LEVEL_DEBUG:I = 0x3

.field public static final MTKCAM_LOG_LEVEL_DEFAULT:I = -0x1

.field public static final MTKCAM_LOG_LEVEL_ERROR:I = 0x0

.field public static final MTKCAM_LOG_LEVEL_INFO:I = 0x2

.field public static final MTKCAM_LOG_LEVEL_VERBOS:I = 0x4

.field public static final MTKCAM_LOG_LEVEL_WARNING:I = 0x1

.field private static final mTag:Ljava/lang/String; = "CamAp_LogUtil"

.field private static sPersistLogLevel:I = -0x1

.field private static sUserDebugLogAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/freeme/camera/common/debug/LogUtil;->initCameraLogLevel()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTags(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/freeme/camera/common/debug/LogUtil;->hashCodeTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addTags(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/freeme/camera/common/debug/LogUtil;->hashCodeTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/freeme/camera/common/debug/LogUtil;->formatTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "[\\x00-\\x1F\\x28-\\x29\\x2C\\x2F\\x3B-\\x3F\\x5B-\\x5D\\x7B-\\x7D]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v0, ""

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getAndroidSDKVersion()I
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CamAp_LogUtil"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getLogLevelFromSystemLevel(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getOverrideLevelFromProperty()I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "vendor.debug.mtkcam.loglevel"

    invoke-static {v1, v0}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CamAp_LogUtil"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private static getPersistLevelFromProperty()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "persist.vendor.mtkcamapp.loglevel"

    invoke-static {v1, v0}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CamAp_LogUtil"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "CamAp_LogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPersistLevelFromProperty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static hashCodeTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v0, "[%-9s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initCameraLogLevel()V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/common/debug/LogUtil;->getPersistLevelFromProperty()I

    move-result v0

    sput v0, Lcom/freeme/camera/common/debug/LogUtil;->sPersistLogLevel:I

    return-void
.end method

.method private static isDebugOsBuild()Z
    .locals 3

    sget-boolean v0, Lcom/freeme/camera/common/debug/LogUtil;->sUserDebugLogAll:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isLoggable(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z
    .locals 5

    invoke-static {}, Lcom/freeme/camera/common/debug/LogUtil;->getOverrideLevelFromProperty()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_1

    sget v4, Lcom/freeme/camera/common/debug/LogUtil;->sPersistLogLevel:I

    if-le v4, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_3

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/freeme/camera/common/debug/LogUtil;->getLogLevelFromSystemLevel(I)I

    move-result v1

    if-gt v1, v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/freeme/camera/common/debug/LogUtil;->getLogLevelFromSystemLevel(I)I

    move-result v0

    sget v1, Lcom/freeme/camera/common/debug/LogUtil;->sPersistLogLevel:I

    if-gt v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogUtil;->shouldLog(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    if-nez v0, :cond_6

    invoke-static {p0, p1}, Lcom/freeme/camera/common/debug/LogUtil;->shouldLog(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {}, Lcom/freeme/camera/common/debug/LogUtil;->isDebugOsBuild()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :cond_6
    :goto_4
    return v2
.end method

.method private static shouldLog(Lcom/freeme/camera/common/debug/LogUtil$Tag;I)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->truncateTag()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
