.class public interface abstract Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController;
.super Ljava/lang/Object;
.source "IPanoramaDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;,
        Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;,
        Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;
    }
.end annotation


# virtual methods
.method public abstract closeCamera(Z)V
.end method

.method public abstract destroyDeviceController()V
.end method

.method public abstract getPreviewSize(D)Lcom/freeme/camera/common/utils/Size;
.end method

.method public abstract isReadyForCapture()Z
.end method

.method public abstract openCamera(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaDeviceInfo;)V
.end method

.method public abstract queryCameraDeviceManager()V
.end method

.method public abstract reqStitchCapture()V
.end method

.method public abstract resetPreview()V
.end method

.method public abstract setDeviceCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$DeviceCallback;)V
.end method

.method public abstract setPanoramaMovingCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PanoramaMovingCallback;)V
.end method

.method public abstract setPictureSize(Lcom/freeme/camera/common/utils/Size;)V
.end method

.method public abstract setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/panorama/photo/device/IPanoramaDeviceController$PreviewSizeCallback;)V
.end method

.method public abstract setZSDStatus(Ljava/lang/String;)V
.end method

.method public abstract startAutoRama(I)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract stopAutoRama(Z)V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract takePicture(Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;)V
    .param p1    # Lcom/freeme/camera/common/mode/photo/device/IDeviceController$CaptureDataCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract updateGSensorOrientation(I)V
.end method

.method public abstract updatePreviewSurface(Ljava/lang/Object;)V
.end method
