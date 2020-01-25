.class public Lorg/lasque/tusdk/core/TuSdk;
.super Ljava/lang/Object;


# static fields
.field public static final DOWNLOAD_DIR:Ljava/lang/String; = "lasDownload"

.field public static final SAMPLE_DIR:Ljava/lang/String; = "lasFilterSamples"

.field public static final SAMPLE_EXTENSION:Ljava/lang/String; = "lfs"

.field public static final SDK_CODE:I = 0x8

.field public static final SDK_CONFIGS:Ljava/lang/String; = "lsq_tusdk_configs.json"

.field public static final SDK_VERSION:Ljava/lang/String; = "2.9.0"

.field public static final TEMP_DIR:Ljava/lang/String; = "lasFilterTemp"

.field private static a:Lorg/lasque/tusdk/core/TuSdk;

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/secret/SdkValid;->sdkValid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/TuSdk;->a()V

    goto :goto_0

    :cond_0
    const-string p1, "Incorrect app key! Please see: http://tusdk.com/docs/help/package-name-and-app-key"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private a()V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdk;->c:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->ins()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/TuSdk;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/TuSdkContext;->setResourceClazz(Ljava/lang/Class;)V

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/SelesContext;->init(Landroid/content/Context;)Lorg/lasque/tusdk/core/seles/SelesContext;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->getScreenSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/ImageLoaderHelper;->initImageCache(Landroid/content/Context;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->geTuSdkConfigs()Lorg/lasque/tusdk/core/TuSdkConfigs;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->geTuSdkConfigs()Lorg/lasque/tusdk/core/TuSdkConfigs;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->geTuSdkConfigs()Lorg/lasque/tusdk/core/TuSdkConfigs;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;->init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushManager;

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->checkAppAuth()V

    return-void
.end method

.method public static appContext()Lorg/lasque/tusdk/core/TuSdkContext;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdk;->a:Lorg/lasque/tusdk/core/TuSdk;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->ins()Lorg/lasque/tusdk/core/TuSdkContext;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static camera(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;Landroid/widget/RelativeLayout;)Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/TuSdk;->camera(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;Landroid/widget/RelativeLayout;Z)Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    move-result-object p0

    return-object p0
.end method

.method public static camera(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;Landroid/widget/RelativeLayout;Z)Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    if-eqz p3, :cond_2

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/hardware/Camera2Helper;->hardwareOnlySupportLegacy(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;

    invoke-direct {p3, p0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera2;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;Landroid/widget/RelativeLayout;)V

    return-object p3

    :cond_2
    :goto_0
    new-instance p3, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;

    invoke-direct {p3, p0, p1, p2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCamera;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/hardware/CameraConfigs$CameraFacing;Landroid/widget/RelativeLayout;)V

    return-object p3
.end method

.method public static checkFilterManager(Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->checkFilterManager(Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;)V

    return-void
.end method

.method public static enableDebugLog(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "TuSdk"

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/TLog;->enableLogging(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/TLog;->disableLogging()V

    :goto_0
    return-void
.end method

.method public static filterManager()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    move-result-object v0

    return-object v0
.end method

.method public static filterNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->filterManager()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->getFilterNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getAppDownloadPath()Ljava/io/File;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "lasDownload"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getAppCacheDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAppTempPath()Ljava/io/File;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "lasFilterTemp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/TuSdkContext;->getAppCacheDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Lorg/lasque/tusdk/core/TuSdk;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/lasque/tusdk/core/TuSdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/TuSdk;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/lasque/tusdk/core/TuSdk;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdk;->a:Lorg/lasque/tusdk/core/TuSdk;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/TuSdk;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/TuSdk;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/TuSdk;->a:Lorg/lasque/tusdk/core/TuSdk;

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/core/TuSdk;->a:Lorg/lasque/tusdk/core/TuSdk;

    return-object p0
.end method

.method public static messageHub()Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/TuSdk;->a:Lorg/lasque/tusdk/core/TuSdk;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, v0, Lorg/lasque/tusdk/core/TuSdk;->b:Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    if-nez v1, :cond_1

    new-instance v1, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubImpl;

    invoke-direct {v1}, Lorg/lasque/tusdk/impl/view/widget/TuMessageHubImpl;-><init>()V

    iput-object v1, v0, Lorg/lasque/tusdk/core/TuSdk;->b:Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/TuSdk;->a:Lorg/lasque/tusdk/core/TuSdk;

    iget-object v0, v0, Lorg/lasque/tusdk/core/TuSdk;->b:Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    return-object v0
.end method

.method public static setMessageHub(Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdk;->a:Lorg/lasque/tusdk/core/TuSdk;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p0, v0, Lorg/lasque/tusdk/core/TuSdk;->b:Lorg/lasque/tusdk/impl/view/widget/TuMessageHubInterface;

    return-void
.end method

.method public static setResourcePackageClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    sput-object p0, Lorg/lasque/tusdk/core/TuSdk;->c:Ljava/lang/Class;

    return-void
.end method

.method public static setUseSSL(Z)V
    .locals 0

    sput-boolean p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->useSSL:Z

    return-void
.end method

.method public static setUserIdentify(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->setUserIdentify(Ljava/lang/Object;)V

    return-void
.end method

.method public static shared()Lorg/lasque/tusdk/core/TuSdk;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/TuSdk;->a:Lorg/lasque/tusdk/core/TuSdk;

    return-object v0
.end method

.method public static stickerManager()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isVaild()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    return-object v0
.end method

.method public static userIdentify()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->userIdentify()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
