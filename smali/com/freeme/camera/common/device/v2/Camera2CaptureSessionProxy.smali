.class public Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;
.super Ljava/lang/Object;
.source "Camera2CaptureSessionProxy.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;,
        Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

.field private mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

.field private final mRequestHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/utils/AtomAccessor;

    invoke-direct {v0}, Lcom/freeme/camera/common/utils/AtomAccessor;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 7
    .param p1    # Landroid/hardware/camera2/CaptureRequest;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;[I)V

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 p3, 0xca

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v7, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    new-instance v8, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;[I)V

    const/16 p1, 0xcb

    invoke-virtual {v7, p1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    iget-object p1, p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;->mResultRequest:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v6
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public getDevice()Lcom/freeme/camera/common/device/v2/Camera2Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mCamera2Proxy:Lcom/freeme/camera/common/device/v2/Camera2Proxy;

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/Surface;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v3, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isReprocessable()Z
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xd2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v3, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 2
    .param p1    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v7, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    new-instance v8, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;[I)V

    const/16 p1, 0xcd

    invoke-virtual {v7, p1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 7
    .param p1    # Landroid/hardware/camera2/CaptureRequest;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$SessionOperatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;[I)V

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 p3, 0xcc

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1
.end method

.method public stopRepeating()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method
