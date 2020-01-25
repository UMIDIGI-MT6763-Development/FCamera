.class public Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;
.super Lcom/freeme/camera/common/loader/FeatureEntryBase;
.source "SdofPhotoEntry.java"


# static fields
.field private static final MODE_ITEM_PRIORITY:I = 0x33

.field private static final MODE_ITEM_TYPE:Ljava/lang/String; = "Picture"

.field private static final MTK_MULTI_CAM_FEATURE_AVAILABLE_MODE:Ljava/lang/String; = "com.mediatek.multicamfeature.availableMultiCamFeatureMode"

.field private static final MTK_MULTI_CAM_FEATURE_MODE_VSDOF:I = 0x1

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VSDOF_KEY:Ljava/lang/String; = "com.mediatek.multicamfeature.multiCamFeatureMode"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/common/loader/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method

.method private unSupportSdof()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_SDOF_SHOW"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v1, "CAMERA_SDOF_SHOW"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

    new-instance v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoMode;-><init>()V

    return-object v0
.end method

.method public getFeatureEntryName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModeItem()Lcom/freeme/camera/common/IAppUi$ModeItem;
    .locals 5

    new-instance v0, Lcom/freeme/camera/common/IAppUi$ModeItem;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$ModeItem;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0801f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeSelectedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0801f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeUnselectedIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mShutterIcon:Landroid/graphics/drawable/Drawable;

    const-string v1, "Picture"

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mType:Ljava/lang/String;

    const/16 v1, 0x33

    iput v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mPriority:I

    invoke-virtual {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->getFeatureEntryName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0f017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    invoke-static {}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "0"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    :goto_0
    const-string v1, "Stereo"

    iput-object v1, v0, Lcom/freeme/camera/common/IAppUi$ModeItem;->mMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->mContext:Landroid/content/Context;

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
    .locals 2

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[isSupport] false, third party intent."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->mDeviceSpec:Lcom/freeme/camera/common/loader/DeviceSpec;

    invoke-virtual {v0}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object p1, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[isSupport] false, camera ids < 2"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    move p1, p2

    :cond_1
    invoke-static {}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getLogicalCameraId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move p1, p2

    :cond_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/vsdof/photo/SdofPhotoEntry;->unSupportSdof()Z

    move-result v0

    if-eqz v0, :cond_3

    move p1, p2

    :cond_3
    return p1
.end method
