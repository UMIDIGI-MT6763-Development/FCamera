.class public abstract Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
.super Ljava/lang/Object;
.source "Camera2CaptureSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActive(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public onClosed(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public abstract onConfigureFailed(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract onConfigured(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public onReady(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method

.method public onSurfacePrepared(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Landroid/view/Surface;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    return-void
.end method
