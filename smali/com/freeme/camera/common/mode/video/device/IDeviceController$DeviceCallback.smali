.class public interface abstract Lcom/freeme/camera/common/mode/video/device/IDeviceController$DeviceCallback;
.super Ljava/lang/Object;
.source "IDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/device/IDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceCallback"
.end annotation


# virtual methods
.method public abstract afterStopPreview()V
.end method

.method public abstract beforeCloseCamera()V
.end method

.method public abstract onCameraOpened(Ljava/lang/String;)V
.end method

.method public abstract onError()V
.end method

.method public abstract onPreviewStart()V
.end method
