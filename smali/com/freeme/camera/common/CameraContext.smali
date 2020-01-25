.class public Lcom/freeme/camera/common/CameraContext;
.super Ljava/lang/Object;
.source "CameraContext.java"

# interfaces
.implements Lcom/freeme/camera/common/ICameraContext;


# static fields
.field protected static final DEFAULT_SAVE_LOCATION:Ljava/lang/String; = "off"

.field private static final KEY_SAVE_LOCATION:Ljava/lang/String; = "key_save_location"

.field private static final KEY_SAVE_SDCARD:Ljava/lang/String; = "key_save_sdcard"

.field protected static final VALUE_OFF:Ljava/lang/String; = "off"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

.field private mCameraId:Ljava/lang/String;

.field private mDataStore:Lcom/freeme/camera/common/relation/DataStore;

.field private mFeatureProvider:Lcom/freeme/camera/common/loader/FeatureProvider;

.field private mLocationManager:Lcom/freeme/camera/common/LocationManager;

.field private mMediaSaver:Lcom/freeme/camera/common/storage/MediaSaver;

.field private mSettingManagerFactory:Lcom/freeme/camera/common/setting/SettingManagerFactory;

.field private mSoundPlayback:Lcom/freeme/camera/common/sound/SoundPlaybackImpl;

.field private mStatusMonitorFactory:Lcom/freeme/camera/common/relation/StatusMonitorFactory;

.field private mStorageService:Lcom/freeme/camera/common/storage/StorageServiceImpl;

.field private mThermalThrottle:Lcom/freeme/camera/common/thermal/ThermalThrottle;

.field private mZuoyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

.field private rootPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showOpenDocumentTree()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/freeme/camera/common/CameraContext;->rootPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageVolume;->createAccessIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public create(Lcom/freeme/camera/common/app/IApp;Landroid/app/Activity;)V
    .locals 1

    iput-object p2, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;

    invoke-direct {v0, p2}, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mSoundPlayback:Lcom/freeme/camera/common/sound/SoundPlaybackImpl;

    new-instance v0, Lcom/freeme/camera/common/LocationManager;

    invoke-direct {v0, p2}, Lcom/freeme/camera/common/LocationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mLocationManager:Lcom/freeme/camera/common/LocationManager;

    new-instance v0, Lcom/freeme/camera/common/storage/MediaSaver;

    invoke-direct {v0, p2}, Lcom/freeme/camera/common/storage/MediaSaver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mMediaSaver:Lcom/freeme/camera/common/storage/MediaSaver;

    new-instance v0, Lcom/freeme/camera/common/relation/DataStore;

    invoke-direct {v0, p2}, Lcom/freeme/camera/common/relation/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    new-instance v0, Lcom/freeme/camera/common/relation/StatusMonitorFactory;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/StatusMonitorFactory;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mStatusMonitorFactory:Lcom/freeme/camera/common/relation/StatusMonitorFactory;

    new-instance v0, Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/loader/FeatureProvider;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mFeatureProvider:Lcom/freeme/camera/common/loader/FeatureProvider;

    invoke-static {}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->getInstance()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    new-instance v0, Lcom/freeme/camera/common/setting/SettingManagerFactory;

    invoke-direct {v0, p1, p0}, Lcom/freeme/camera/common/setting/SettingManagerFactory;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;)V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mSettingManagerFactory:Lcom/freeme/camera/common/setting/SettingManagerFactory;

    new-instance v0, Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-direct {v0, p1, p0}, Lcom/freeme/camera/common/storage/StorageServiceImpl;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/CameraContext;)V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mStorageService:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    new-instance v0, Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-direct {v0, p1}, Lcom/freeme/camera/common/thermal/ThermalThrottle;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mThermalThrottle:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    iget-object p1, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getInstance(Landroid/content/Context;)Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/CameraContext;->mZuoyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    new-instance p1, Lcom/freeme/camera/common/LocationManager;

    invoke-direct {p1, p2}, Lcom/freeme/camera/common/LocationManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/common/CameraContext;->mLocationManager:Lcom/freeme/camera/common/LocationManager;

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mSoundPlayback:Lcom/freeme/camera/common/sound/SoundPlaybackImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->release()V

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mThermalThrottle:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->destroy()V

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mZuoyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->stop()V

    :cond_0
    return-void
.end method

.method public getCurrentCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getDataStore()Lcom/freeme/camera/common/relation/DataStore;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object v0
.end method

.method public getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;
    .locals 2
    .param p1    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mCameraDeviceManagerFactory:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;

    iget-object v1, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->getCameraDeviceManager(Landroid/content/Context;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object p1

    return-object p1
.end method

.method public getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mFeatureProvider:Lcom/freeme/camera/common/loader/FeatureProvider;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mLocationManager:Lcom/freeme/camera/common/LocationManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mMediaSaver:Lcom/freeme/camera/common/storage/MediaSaver;

    return-object v0
.end method

.method public getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mSettingManagerFactory:Lcom/freeme/camera/common/setting/SettingManagerFactory;

    return-object v0
.end method

.method public getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mSoundPlayback:Lcom/freeme/camera/common/sound/SoundPlaybackImpl;

    return-object v0
.end method

.method public getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/common/CameraContext;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mStatusMonitorFactory:Lcom/freeme/camera/common/relation/StatusMonitorFactory;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/relation/StatusMonitorFactory;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p1

    return-object p1
.end method

.method public getStorageService()Lcom/freeme/camera/common/storage/IStorageService;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mStorageService:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    return-object v0
.end method

.method public getZuoyiGeoCoder()Lcom/freeme/camera/common/location/ZuoyiGeoCoder;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mZuoyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mStorageService:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->pause()V

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mSoundPlayback:Lcom/freeme/camera/common/sound/SoundPlaybackImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/common/sound/SoundPlaybackImpl;->pause()V

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mThermalThrottle:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->pause()V

    return-void
.end method

.method public resume()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/freeme/camera/common/utils/StorageUtil;->initialize(Landroid/content/Context;Lcom/freeme/camera/common/ICameraContext;)V

    invoke-static {}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->isSDCardMount()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_save_sdcard"

    const-string v3, "off"

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mStorageService:Lcom/freeme/camera/common/storage/StorageServiceImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->resume()V

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mThermalThrottle:Lcom/freeme/camera/common/thermal/ThermalThrottle;

    invoke-virtual {v0}, Lcom/freeme/camera/common/thermal/ThermalThrottle;->resume()V

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mZuoyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getInstance(Landroid/content/Context;)Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mZuoyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mZuoyiGeoCoder:Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    invoke-virtual {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->start()V

    :cond_5
    sget-object v0, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/common/CameraContext;->rootPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->rootPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/common/CameraContext;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/freeme/camera/common/CameraContext;->rootPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/DocumentsUtils;->checkWritableRootPath(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_6
    return-void
.end method
