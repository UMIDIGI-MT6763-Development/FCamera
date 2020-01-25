.class public interface abstract Lcom/freeme/camera/common/mode/ICameraMode;
.super Ljava/lang/Object;
.source "ICameraMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    }
.end annotation


# static fields
.field public static final MODE_DEVICE_STATE_CAPTURING:Ljava/lang/String; = "capturing"

.field public static final MODE_DEVICE_STATE_CLOSED:Ljava/lang/String; = "closed"

.field public static final MODE_DEVICE_STATE_OPENED:Ljava/lang/String; = "opened"

.field public static final MODE_DEVICE_STATE_PREVIEWING:Ljava/lang/String; = "previewing"

.field public static final MODE_DEVICE_STATE_RECORDING:Ljava/lang/String; = "recording"

.field public static final MODE_DEVICE_STATE_UNKNOWN:Ljava/lang/String; = "unknown"


# virtual methods
.method public abstract getCameraApi()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
.end method

.method public abstract getDeviceUsage(Lcom/freeme/camera/common/relation/DataStore;Lcom/freeme/camera/common/mode/DeviceUsage;)Lcom/freeme/camera/common/mode/DeviceUsage;
    .param p1    # Lcom/freeme/camera/common/relation/DataStore;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract getModeKey()Ljava/lang/String;
.end method

.method public abstract init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
    .param p1    # Lcom/freeme/camera/common/app/IApp;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/ICameraContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract isModeIdle()Z
.end method

.method public abstract onCameraSelected(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onUserInteraction()Z
.end method

.method public abstract pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V
    .param p1    # Lcom/freeme/camera/common/mode/DeviceUsage;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract unInit()V
.end method
