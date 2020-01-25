.class public interface abstract Lcom/freeme/camera/common/loader/IFeatureEntry;
.super Ljava/lang/Object;
.source "IFeatureEntry.java"


# virtual methods
.method public abstract createInstance()Ljava/lang/Object;
.end method

.method public abstract getFeatureEntryName()Ljava/lang/String;
.end method

.method public abstract getModeItem()Lcom/freeme/camera/common/IAppUi$ModeItem;
.end method

.method public abstract getStage()I
.end method

.method public abstract getType()Ljava/lang/Class;
.end method

.method public abstract isSupport(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;Landroid/app/Activity;)Z
.end method

.method public abstract notifyBeforeOpenCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract setDeviceSpec(Lcom/freeme/camera/common/loader/DeviceSpec;)V
    .param p1    # Lcom/freeme/camera/common/loader/DeviceSpec;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract setParameters(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/Camera$Parameters;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract updateCurrentModeKey(Ljava/lang/String;)V
.end method

.method public abstract updateDeviceUsage(Ljava/lang/String;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;
.end method
