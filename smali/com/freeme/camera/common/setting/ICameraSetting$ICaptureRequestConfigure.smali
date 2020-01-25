.class public interface abstract Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
.super Ljava/lang/Object;
.source "ICameraSetting.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/ICameraSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICaptureRequestConfigure"
.end annotation


# virtual methods
.method public abstract configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract configRawSurface()Landroid/view/Surface;
.end method

.method public abstract configSessionSurface(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end method

.method public abstract setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
.end method
