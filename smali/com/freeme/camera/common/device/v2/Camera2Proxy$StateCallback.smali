.class public abstract Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;
.super Lcom/freeme/camera/common/device/CameraStateCallback;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/device/CameraStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public abstract onDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onError(Lcom/freeme/camera/common/device/v2/Camera2Proxy;I)V
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method
