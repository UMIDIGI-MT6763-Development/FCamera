.class public Lcom/freeme/camera/common/device/v1/CameraProxy;
.super Lcom/freeme/camera/common/device/CameraProxyBase;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;,
        Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;,
        Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;,
        Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;,
        Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:Ljava/lang/String;

.field private mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

.field final mResumeLockRunnable:Ljava/lang/Runnable;

.field private mWaitDoneObject:Ljava/lang/Object;

.field final mWaitLockRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/common/device/v1/CameraProxy;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraHandler;Landroid/hardware/Camera;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/v1/CameraHandler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/Camera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/freeme/camera/common/device/CameraProxyBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mCamera:Landroid/hardware/Camera;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mWaitDoneObject:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/common/utils/AtomAccessor;

    invoke-direct {v0}, Lcom/freeme/camera/common/utils/AtomAccessor;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    new-instance v0, Lcom/freeme/camera/common/device/v1/CameraProxy$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/device/v1/CameraProxy$1;-><init>(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mWaitLockRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/freeme/camera/common/device/v1/CameraProxy$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/device/v1/CameraProxy$2;-><init>(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mResumeLockRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/device/v1/CameraProxy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mWaitDoneObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/device/v1/CameraProxy;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public cancelAutoFocus()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public closeAsync()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public enableShutterSound(Z)Z
    .locals 3

    const/4 p1, 0x1

    new-array p1, p1, [Z

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x1f5

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    return p1
.end method

.method public getApiType()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object v0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v2, 0xcb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, v0, v3

    if-eqz p1, :cond_0

    aget-object p1, v0, v3

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->getOriginalParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->getOriginalParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    return-object p1
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v2, 0xca

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v2, v3, v1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->getOriginalParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAtFrontOfQueue(Landroid/os/Handler;Landroid/os/Message;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mResumeLockRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public reconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public sendCommand(III)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    new-instance v1, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;-><init>(Lcom/freeme/camera/common/device/v1/CameraProxy;III)V

    const/16 p1, 0x2bd

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x1cd

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    new-instance v1, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;

    invoke-direct {v1, p0, p1, p2}, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;-><init>(Lcom/freeme/camera/common/device/v1/CameraProxy;ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    const/16 p1, 0x2be

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {p2, v0, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x130

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public startFaceDetection()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x1ce

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public startPreview()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public startPreviewAsync()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public startSmoothZoom(I)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x131

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public stopFaceDetection()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x1cf

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public stopPreview()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public stopPreviewAsync()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public stopSmoothZoom()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {v1, v2, v0}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    new-instance v7, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/freeme/camera/common/device/v1/CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/16 p1, 0x259

    invoke-virtual {v0, p1, v7}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    return-void
.end method

.method public takePictureAsync(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    new-instance v7, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;-><init>(Lcom/freeme/camera/common/device/v1/CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/16 p1, 0x259

    invoke-virtual {v0, p1, v7}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public unlock()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mRequestHandler:Lcom/freeme/camera/common/device/v1/CameraHandler;

    iget-object v3, p0, Lcom/freeme/camera/common/device/v1/CameraProxy;->mWaitLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0, v3}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;Ljava/lang/Runnable;)Z

    return-void
.end method
