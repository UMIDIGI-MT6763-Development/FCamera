.class public Lcom/freeme/camera/feature/setting/ContinuousShotEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "ContinuousShotEntry.java"


# static fields
.field private static final CSHOT_VERSION_FAST_PREVIEW:I = 0x1

.field private static final CSHOT_VERSION_TB_ESPECIAL:I = 0x2

.field private static final NAME:Ljava/lang/String;

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field public static mIsBurstMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v0, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->mIsBurstMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private unSupportContinuousShot()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraContinueSupport:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraContinueSupport:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 3

    const-string v0, "vendor.mtkcamapp.cshot.version"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShot2;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/ContinuousShot2;-><init>()V

    return-object v0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    sput-boolean v1, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->mIsBurstMode:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotRepeatingBurstMode;-><init>()V

    return-object v0

    :cond_1
    sput-boolean v1, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->mIsBurstMode:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBurstMode;-><init>()V

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object v0
.end method

.method public isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->unSupportContinuousShot()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
