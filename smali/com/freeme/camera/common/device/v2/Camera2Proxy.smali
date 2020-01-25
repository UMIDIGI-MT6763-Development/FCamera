.class public Lcom/freeme/camera/common/device/v2/Camera2Proxy;
.super Lcom/freeme/camera/common/device/CameraProxyBase;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;,
        Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;,
        Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;
    }
.end annotation


# static fields
.field public static final TEMPLATE_MANUAL:I = 0x6

.field public static final TEMPLATE_PREVIEW:I = 0x1

.field public static final TEMPLATE_RECORD:I = 0x3

.field public static final TEMPLATE_STILL_CAPTURE:I = 0x2

.field public static final TEMPLATE_VIDEO_SNAPSHOT:I = 0x4

.field public static final TEMPLATE_ZERO_SHUTTER_LAG:I = 0x5


# instance fields
.field private mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

.field private final mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraId:Ljava/lang/String;

.field private mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInterfaceLock:Ljava/lang/Object;

.field private mReprocessBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

.field private final mRespondHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice;Lcom/freeme/camera/common/device/v2/Camera2Handler;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CameraDevice;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/freeme/camera/common/device/v2/Camera2Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/freeme/camera/common/device/CameraProxyBase;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mInterfaceLock:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/common/utils/AtomAccessor;

    invoke-direct {v0}, Lcom/freeme/camera/common/utils/AtomAccessor;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iput-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mCameraId:Ljava/lang/String;

    iput-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRespondHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mReprocessBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method private isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    new-instance v1, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Landroid/hardware/camera2/TotalCaptureResult;)V

    const/16 v2, 0x68

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method public createCaptureSession(Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;)V
    .locals 8
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureRequest$Builder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    new-instance v7, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/16 p1, 0x65

    invoke-virtual {v0, p1, v7}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public createCaptureSession(Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    new-instance v7, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/params/InputConfiguration;)V

    const/16 p1, 0x65

    invoke-virtual {v0, p1, v7}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public createCaptureSession(Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Landroid/hardware/camera2/CaptureRequest$Builder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    new-instance v8, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/params/InputConfiguration;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/16 p1, 0x65

    invoke-virtual {v0, p1, v8}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
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
            "Landroid/view/Surface;",
            ">;",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string v0, "createConstrainedHighSpeedCaptureSession,the surface must not null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "createConstrainedHighSpeedCaptureSession, the callback must not null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    new-instance v7, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/params/InputConfiguration;)V

    const/16 p1, 0x67

    invoke-virtual {v0, p1, v7}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 2
    .param p1    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    const-string v0, "createReprocessCaptureRequest,the total capture result must not null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$RequestCreatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Landroid/hardware/camera2/TotalCaptureResult;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    const/16 v1, 0x69

    invoke-virtual {p1, v1, v0}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessageAndWait(Landroid/os/Handler;Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mReprocessBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .param p1    # Landroid/hardware/camera2/params/InputConfiguration;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string v0, "createReprocessableCaptureSession,the inputConfig nust not null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "createReprocessableCaptureSession,the surface must not null"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "createReprocessableCaptureSession, the state callback must not null"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    new-instance v7, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$SessionCreatorInfo;-><init>(Lcom/freeme/camera/common/device/v2/Camera2Proxy;Ljava/util/List;Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/params/InputConfiguration;)V

    const/16 p1, 0x66

    invoke-virtual {v0, p1, v7}, Lcom/freeme/camera/common/device/v2/Camera2Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mAtomAccessor:Lcom/freeme/camera/common/utils/AtomAccessor;

    iget-object p3, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRequestHandler:Lcom/freeme/camera/common/device/v2/Camera2Handler;

    invoke-virtual {p2, p3, p1}, Lcom/freeme/camera/common/utils/AtomAccessor;->sendAtomMessage(Landroid/os/Handler;Landroid/os/Message;)V

    return-void
.end method

.method public getApiType()Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    sget-object v0, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    return-object v0
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getRespondHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v2/Camera2Proxy;->mRespondHandler:Landroid/os/Handler;

    return-object v0
.end method
