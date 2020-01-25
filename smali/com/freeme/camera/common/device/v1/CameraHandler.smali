.class public Lcom/freeme/camera/common/device/v1/CameraHandler;
.super Lcom/freeme/camera/common/device/HistoryHandler;
.source "CameraHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;
    }
.end annotation


# static fields
.field private static final KEY_DISP_ROT_SUPPORTED:Ljava/lang/String; = "disp-rot-supported"

.field private static final KEY_PANEL_SIZE:Ljava/lang/String; = "panel-size"

.field private static final MTK_CAMERA_MSG_EXT_DATA_RAW16:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_METADATA_DONE:I = 0x16


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraEx:Lcom/mediatek/camera/portability/CameraEx;

.field private mCameraId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mDeviceStateSync:Ljava/lang/Object;

.field private mFaceDetectionRunning:Z

.field private final mIDeviceInfoListener:Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;

.field private mLockMap:Ljava/util/concurrent/locks/Lock;

.field private mOriginalParameters:Landroid/hardware/Camera$Parameters;

.field private final mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private mVendorCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mVendorExDataCallback:Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/hardware/Camera;Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Looper;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4    # Landroid/hardware/Camera;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5    # Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/freeme/camera/common/device/HistoryHandler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorCallbackMap:Ljava/util/HashMap;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mDeviceStateSync:Ljava/lang/Object;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mFaceDetectionRunning:Z

    new-instance p3, Lcom/freeme/camera/common/device/v1/CameraHandler$1;

    invoke-direct {p3, p0}, Lcom/freeme/camera/common/device/v1/CameraHandler$1;-><init>(Lcom/freeme/camera/common/device/v1/CameraHandler;)V

    iput-object p3, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorExDataCallback:Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;

    iput-object p4, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCameraId:Ljava/lang/String;

    new-instance p1, Lcom/mediatek/camera/portability/CameraEx;

    invoke-direct {p1}, Lcom/mediatek/camera/portability/CameraEx;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCameraEx:Lcom/mediatek/camera/portability/CameraEx;

    iput-object p5, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mIDeviceInfoListener:Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;

    new-instance p1, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "API1-Handler-"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/device/v1/CameraHandler;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorCallbackMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private static getPanelSizeStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x11
    .end annotation

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sendCommand(Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCameraEx:Lcom/mediatek/camera/portability/CameraEx;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget v2, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;->mCommand:I

    iget v3, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;->mArg1:I

    iget p1, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;->mArg2:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/mediatek/camera/portability/CameraEx;->sendCommand(Landroid/hardware/Camera;III)V

    return-void
.end method

.method private setPanelSizeToNative(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "disp-rot-supported"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "panel-size"

    invoke-static {p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->getPanelSizeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "isDisplayRotateSupported: false."

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private setVendorDataCallback(Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->mArg1:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorCallbackMap:Ljava/util/HashMap;

    iget v1, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->mMsgId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorCallbackMap:Ljava/util/HashMap;

    iget v1, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->mMsgId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorCallbackMap:Ljava/util/HashMap;

    iget v1, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->mMsgId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->mArg1:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCameraEx:Lcom/mediatek/camera/portability/CameraEx;

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget p1, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;->mMsgId:I

    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorExDataCallback:Lcom/mediatek/camera/portability/CameraEx$VendorDataCallback;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mediatek/camera/portability/CameraEx;->setVendorDataCallback(Landroid/hardware/Camera;ILcom/mediatek/camera/portability/CameraEx$VendorDataCallback;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method private takePicture(Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->mPostViewCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object p1, p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method


# virtual methods
.method protected doHandleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x259

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    packed-switch v0, :pswitch_data_6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unimplemented msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->setVendorDataCallback(Lcom/freeme/camera/common/device/v1/CameraProxy$VendCallbackInfo;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->sendCommand(Lcom/freeme/camera/common/device/v1/CameraProxy$CommandInfo;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_0

    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Z

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    aget-boolean v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    move-result v0

    aput-boolean v0, p1, v2

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopFaceDetection()V

    iput-boolean v2, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mFaceDetectionRunning:Z

    goto/16 :goto_0

    :pswitch_5
    iget-boolean p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mFaceDetectionRunning:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "Face detection is already running"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startFaceDetection()V

    iput-boolean v1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mFaceDetectionRunning:Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/Camera$Parameters;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    aput-object p1, v0, v2

    aget-object p1, v0, v2

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;

    aput-object p1, v0, v2

    goto/16 :goto_0

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Landroid/hardware/Camera$Parameters;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    aput-object v0, p1, v2

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    :pswitch_12
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_13
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_0

    :pswitch_15
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    iput-boolean v2, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mFaceDetectionRunning:Z

    goto/16 :goto_0

    :pswitch_16
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_0

    :pswitch_17
    :try_start_1
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_18
    :try_start_2
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/loader/DeviceSpec;->getDeviceDescriptionMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/common/loader/DeviceDescription;

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/loader/DeviceDescription;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->setPanelSizeToNative(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_19
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->lock()V

    goto :goto_0

    :pswitch_1a
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->unlock()V

    goto :goto_0

    :pswitch_1b
    :try_start_3
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_1c
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_4
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCameraEx:Lcom/mediatek/camera/portability/CameraEx;

    iput-boolean v2, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mFaceDetectionRunning:Z

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mIDeviceInfoListener:Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;

    invoke-interface {p1}, Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;->onClosed()V

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->takePicture(Lcom/freeme/camera/common/device/v1/CameraProxy$CaptureCallbackGroup;)V

    iput-boolean v2, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mFaceDetectionRunning:Z

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc9
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x12d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1cd
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1f5
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOriginalParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mOriginalParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/freeme/camera/common/device/HistoryHandler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mMsgStartTime:J

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mMsgStartTime:J

    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/freeme/camera/common/device/v1/CameraHandler;->printStartMsg(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mDeviceStateSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {v0}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera is closed ,ignore this :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/freeme/camera/common/device/v1/CameraHandler;->printStopMsg(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/device/v1/CameraHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    :try_start_2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    iput-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCameraEx:Lcom/mediatek/camera/portability/CameraEx;

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mVendorCallbackMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    :try_start_5
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "Fail to release the camera."

    invoke-static {p1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mLockMap:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mIDeviceInfoListener:Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;

    invoke-interface {p1}, Lcom/freeme/camera/common/device/v1/CameraHandler$IDeviceInfoListener;->onError()V

    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mMsgStopTime:J

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    invoke-virtual {p1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/freeme/camera/common/device/v1/CameraActions;->stringify(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mMsgStopTime:J

    iget-wide v3, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mMsgStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/freeme/camera/common/device/v1/CameraHandler;->printStopMsg(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public notifyDeviceError(I)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mDeviceStateSync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/freeme/camera/common/device/v1/CameraHandler;->mCamera:Landroid/hardware/Camera;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
