.class public interface abstract Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;
.super Ljava/lang/Object;
.source "IDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;,
        Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;,
        Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;,
        Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;,
        Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;
    }
.end annotation


# virtual methods
.method public abstract closeCamera(Z)V
.end method

.method public abstract configCamera(Landroid/view/Surface;Z)V
.end method

.method public abstract getCamcorderProfile()Landroid/media/CamcorderProfile;
.end method

.method public abstract getCamera()Lcom/freeme/camera/common/device/v1/CameraProxy;
.end method

.method public abstract getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
.end method

.method public abstract isReadyForCapture()Z
.end method

.method public abstract isVssSupported(I)Z
.end method

.method public abstract lockCamera()V
.end method

.method public abstract openCamera(Lcom/freeme/camera/common/setting/ISettingManager;Ljava/lang/String;ZLcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$RestrictionProvider;)V
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract postRecordingRestriction(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/relation/Relation;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract preventChangeSettings()V
.end method

.method public abstract queryCameraDeviceManager()V
.end method

.method public abstract release()V
.end method

.method public abstract setPreviewCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$DeviceCallback;)V
.end method

.method public abstract setSettingConfigCallback(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$SettingConfigCallback;)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract startRecording()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract takePicture(Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;)V
    .param p1    # Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract unLockCamera()V
.end method

.method public abstract updateGSensorOrientation(I)V
.end method

.method public abstract updatePreviewSurface(Ljava/lang/Object;)V
.end method
