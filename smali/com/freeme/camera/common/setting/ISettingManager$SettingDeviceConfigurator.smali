.class public interface abstract Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;
.super Ljava/lang/Object;
.source "ISettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/setting/ISettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingDeviceConfigurator"
.end annotation


# virtual methods
.method public abstract configCommand(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraProxy;)V
.end method

.method public abstract configParameters(Landroid/hardware/Camera$Parameters;)Z
.end method

.method public abstract configParametersByKey(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
.end method

.method public abstract onPreviewStarted()V
.end method

.method public abstract onPreviewStopped()V
.end method

.method public abstract setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
.end method
