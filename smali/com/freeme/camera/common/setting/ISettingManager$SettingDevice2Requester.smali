.class public interface abstract Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;
.super Ljava/lang/Object;
.source "ISettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/ISettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingDevice2Requester"
.end annotation


# virtual methods
.method public abstract createAndChangeRepeatingRequest()V
.end method

.method public abstract createAndConfigRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
.end method

.method public abstract getCurrentCaptureSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
.end method

.method public abstract getModeSharedCaptureSurface()Lcom/freeme/camera/common/mode/photo/device/CaptureSurface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getModeSharedPreviewSurface()Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getModeSharedThumbnailSurface()Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract getRepeatingTemplateType()I
.end method

.method public abstract requestRestartSession()V
.end method
