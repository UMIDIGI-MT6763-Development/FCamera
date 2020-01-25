.class public interface abstract Lcom/freeme/camera/feature/mode/slr/device/IDeviceController;
.super Ljava/lang/Object;
.source "IDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/slr/device/IDeviceController$PreviewSizeCallback;,
        Lcom/freeme/camera/feature/mode/slr/device/IDeviceController$DeviceCallback;,
        Lcom/freeme/camera/feature/mode/slr/device/IDeviceController$CaptureDataCallback;,
        Lcom/freeme/camera/feature/mode/slr/device/IDeviceController$DataCallbackInfo;
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

.method public abstract openCamera(Lcom/freeme/camera/feature/mode/slr/DeviceInfo;)V
.end method

.method public abstract queryCameraDeviceManager()V
.end method

.method public abstract setDeviceCallback(Lcom/freeme/camera/feature/mode/slr/device/IDeviceController$DeviceCallback;)V
.end method

.method public abstract setFormat(Ljava/lang/String;)V
.end method

.method public abstract setPictureSize(Lcom/freeme/camera/common/utils/Size;)V
.end method

.method public abstract setPreviewSizeReadyCallback(Lcom/freeme/camera/feature/mode/slr/device/IDeviceController$PreviewSizeCallback;)V
.end method

.method public abstract setZSDStatus(Ljava/lang/String;)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract takePicture(Lcom/freeme/camera/feature/mode/slr/device/IDeviceController$CaptureDataCallback;)V
    .param p1    # Lcom/freeme/camera/feature/mode/slr/device/IDeviceController$CaptureDataCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract updateGSensorOrientation(I)V
.end method

.method public abstract updatePreviewSurface(Ljava/lang/Object;)V
.end method
