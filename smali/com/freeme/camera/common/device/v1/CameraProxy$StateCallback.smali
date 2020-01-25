.class public abstract Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;
.super Lcom/freeme/camera/common/device/CameraStateCallback;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v1/CameraProxy;
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
.method public abstract onClosed(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onDisconnected(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onError(Lcom/freeme/camera/common/device/v1/CameraProxy;I)V
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onOpened(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .param p1    # Lcom/freeme/camera/common/device/v1/CameraProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method
