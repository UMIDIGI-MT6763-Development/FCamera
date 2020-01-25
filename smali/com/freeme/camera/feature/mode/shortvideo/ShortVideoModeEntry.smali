.class public Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "ShortVideoModeEntry.java"


# static fields
.field private static final MODE_ITEM_PRIORITY:I = 0x1

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private unSuportShortVideo()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_SHORT_VIDEO_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_SHORT_VIDEO_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

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

    new-instance v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;-><init>()V

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeItem()Lcom/freeme/camera/common/IAppUi$ModeItem;
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/IAppUi$ModeItem;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$ModeItem;-><init>()V

    const-string v1, "Video"

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mPriority:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;->getFeatureEntryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0197

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    const-string v1, "0"

    const-string v3, "1"

    const-string v4, "3"

    filled-new-array {v1, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    const-string v1, "Short Video"

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/freeme/camera/common/mode/ICameraMode;

    return-object v0
.end method

.method public isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoModeEntry;->unSuportShortVideo()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method
