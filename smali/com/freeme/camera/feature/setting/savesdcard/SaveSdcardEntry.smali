.class public Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "SaveSdcardEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private unSupportSaveSdCard()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraSaveSdcardSupport:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraSaveSdcardSupport:Ljava/lang/String;

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
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;-><init>()V

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStage()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/setting/ICameraSetting;

    return-object v0
.end method

.method public isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardEntry;->unSupportSaveSdCard()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
