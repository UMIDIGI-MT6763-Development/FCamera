.class public interface abstract Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;
.super Ljava/lang/Object;
.source "ISettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/ISettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingDevice2Configurator"
.end annotation


# virtual methods
.method public abstract configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .param p1    # Landroid/hardware/camera2/CaptureRequest$Builder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract configSessionSurface(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getRawOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;
.end method

.method public abstract getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end method

.method public abstract setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
.end method
