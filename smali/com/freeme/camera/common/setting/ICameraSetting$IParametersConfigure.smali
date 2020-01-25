.class public interface abstract Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
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
    name = "IParametersConfigure"
.end annotation


# virtual methods
.method public abstract configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
.end method

.method public abstract configParameters(Landroid/hardware/Camera$Parameters;)Z
.end method

.method public abstract setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
.end method
