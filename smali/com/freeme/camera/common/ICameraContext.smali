.class public interface abstract Lcom/freeme/camera/common/ICameraContext;
.super Ljava/lang/Object;
.source "ICameraContext.java"


# virtual methods
.method public abstract create(Lcom/freeme/camera/common/app/IApp;Landroid/app/Activity;)V
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract destroy()V
.end method

.method public abstract getCurrentCameraId()Ljava/lang/String;
.end method

.method public abstract getDataStore()Lcom/freeme/camera/common/relation/DataStore;
.end method

.method public abstract getDeviceManager(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Lcom/freeme/camera/common/device/CameraDeviceManager;
    .param p1    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;
.end method

.method public abstract getSettingManagerFactory()Lcom/freeme/camera/common/setting/SettingManagerFactory;
.end method

.method public abstract getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;
.end method

.method public abstract getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;
.end method

.method public abstract getStorageService()Lcom/freeme/camera/common/storage/IStorageService;
.end method

.method public abstract getZuoyiGeoCoder()Lcom/freeme/camera/common/location/ZuoyiGeoCoder;
.end method

.method public abstract pause()V
.end method

.method public abstract resume()V
.end method
