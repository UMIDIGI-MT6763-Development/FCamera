.class Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;
.super Landroid/os/Handler;
.source "SupDefinitionDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupDefinitionDeviceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$CameraDeviceProxyStateCallback;
    }
.end annotation


# static fields
.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final KEY_CONTINUOUS_SHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final KEY_DISP_ROT_SUPPORTED:Ljava/lang/String; = "disp-rot-supported"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final KEY_ZSD:Ljava/lang/String; = "key_zsd"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenedCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$PreviewSizeCallback;

.field private mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

.field private final mCameraProxyStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

.field private mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCaptureStartTime:J

.field private mCaptureSync:Ljava/lang/Object;

.field private final mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mIsNeedStartPreviewAfterCapture:Z

.field private mIsPreviewStarted:Z

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpegReceivedCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;

.field private mJpegRotation:I

.field private mModeDeviceCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;

.field private mNeedQuitHandler:Z

.field private mNeedSubSectionInitSetting:Z

.field private mP2DoneCallBackCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPostViewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPreviewFormat:I

.field private volatile mPreviewHeight:I

.field private volatile mPreviewWidth:I

.field private final mRawCallback:Landroid/hardware/Camera$PictureCallback;

.field private mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

.field private mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSurfaceObject:Ljava/lang/Object;

.field private final mUncompressedImageCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

.field private mWaitCameraOpenDone:Ljava/lang/Object;

.field final synthetic this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;Landroid/os/Looper;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mWaitCameraOpenDone:Ljava/lang/Object;

    new-instance p1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$CameraDeviceProxyStateCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$CameraDeviceProxyStateCallback;-><init>(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$1;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxyStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mP2DoneCallBackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureSync:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureStartTime:J

    iput p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegRotation:I

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedSubSectionInitSetting:Z

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedQuitHandler:Z

    iput-boolean p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsNeedStartPreviewAfterCapture:Z

    new-instance p1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$1;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$1;-><init>(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    new-instance p1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$2;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$2;-><init>(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mUncompressedImageCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    new-instance p1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$3;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$3;-><init>(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    new-instance p1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$4;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$4;-><init>(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance p1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$5;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$5;-><init>(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPostViewCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance p1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$6;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler$6;-><init>(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegReceivedCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;Lcom/freeme/camera/common/device/v1/CameraProxy;)Lcom/freeme/camera/common/device/v1/CameraProxy;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsNeedStartPreviewAfterCapture:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsNeedStartPreviewAfterCapture:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mP2DoneCallBackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)J
    .locals 2

    iget-wide v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;[BZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->notifyCaptureDone([BZZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mWaitCameraOpenDone:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->captureDone()V

    return-void
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    return-object p0
.end method

.method static synthetic access$802(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewFormat:I

    return p0
.end method

.method private canDoOpenCamera(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[canDoOpenCamera], mCameraState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v3}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",new Camera: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",current camera : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v2
.end method

.method private cancelDealMessage(I)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private captureDone()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[captureDone], mCaptureCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private checkIsCapturing()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkIsCapturing] mCaptureCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    :try_start_1
    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    const-string v2, "[checkIsCapturing] wait +"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    const-string v2, "[checkIsCapturing] wait -"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private createSettingSecond(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager;->createSettingsByStage(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->setOriginalParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->stopPreview()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startPreview()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_0
    return-void
.end method

.method private doCloseCamera(Z)V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doCloseCamera] isSwitchCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",camera proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    return-void

    :cond_0
    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v4}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mWaitCameraOpenDone:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->hasDeviceStateCallback()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mWaitCameraOpenDone:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    sget-object v4, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    invoke-static {v3, v4}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$202(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->checkIsCapturing()V

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;

    invoke-interface {v3}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;->beforeCloseCamera()V

    :cond_3
    iget-object v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->close()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->closeAsync()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :goto_1
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedQuitHandler:Z

    if-eqz p1, :cond_6

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedQuitHandler:Z

    if-eqz p1, :cond_6

    :goto_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->resetCountNumber()V

    return-void

    :goto_3
    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iput-boolean v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    iput-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedQuitHandler:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->resetCountNumber()V

    throw p1
.end method

.method private doDestroyHandler()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doDestroyHandler] mCameraState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mIsPreviewStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedQuitHandler:Z

    sget-object v0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedQuitHandler:Z

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :goto_1
    return-void
.end method

.method private doGetPreviewSize(Landroid/os/Message;)V
    .locals 7

    iget v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [D

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    invoke-direct {p0, v3, v4}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    iget v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    int-to-double v3, v3

    const/4 v5, 0x1

    aput-wide v3, p1, v5

    iget v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    int-to-double v3, v3

    const/4 v6, 0x2

    aput-wide v3, p1, v6

    iget p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    if-ne v1, p1, :cond_0

    iget p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    if-eq v0, p1, :cond_1

    :cond_0
    move v2, v5

    :cond_1
    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getPreviewSize], old size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " X "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", new  size :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " X "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",is size changed: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doStopPreview()V

    :cond_2
    return-void
.end method

.method private doOnDisconnected()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$400(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    return-void
.end method

.method private doOnError(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    sget-object v1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$202(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$400(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    return-void
.end method

.method private doOnOpened(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doOnOpened] cameraProxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[doOnOpened] state is error, don\'t need do on camera opened"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    sget-object v1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$202(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;->onCameraOpened(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$1900(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/common/ICameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/freeme/camera/common/loader/FeatureProvider;->updateCameraParameters(Ljava/lang/String;Landroid/hardware/Camera$Parameters;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedSubSectionInitSetting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager;->createSettingsByStage(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->createAllSettings()V

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->setOriginalParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewFormat:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->updatePreviewSize()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraOpenedCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$PreviewSizeCallback;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    iget v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    iget v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    invoke-direct {v1, v2, v3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$PreviewSizeCallback;->onPreviewSizeReady(Lcom/freeme/camera/common/utils/Size;)V

    :cond_3
    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedSubSectionInitSetting:Z

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->prePareAndStartPreview(Landroid/hardware/Camera$Parameters;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->addViewEntry()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    return-void
.end method

.method private doOpenCamera(Lcom/freeme/camera/feature/mode/supdefinition/DeviceInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/supdefinition/DeviceInfo;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/supdefinition/DeviceInfo;->getNeedOpenCameraSync()Z

    move-result v1

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doOpenCamera] id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", sync = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",camera state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v4}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->canDoOpenCamera(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[doOpenCamera], condition is not ready, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/supdefinition/DeviceInfo;->getNeedFastStartPreview()Z

    move-result v0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedSubSectionInitSetting:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    sget-object v2, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENING:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    invoke-static {v0, v2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$202(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/supdefinition/DeviceInfo;->getSettingManager()Lcom/freeme/camera/common/setting/ISettingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager;->updateModeDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingDeviceConfigurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->resetCountNumber()V

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$300(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxyStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCameraSync(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$300(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/common/device/CameraDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxyStateCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$StateCallback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/freeme/camera/common/device/CameraDeviceManager;->openCamera(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraStateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/freeme/camera/common/device/CameraOpenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;->SECURITY_EXCEPTION:Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/CameraOpenException;->getExceptionType()Lcom/freeme/camera/common/device/CameraOpenException$ExceptionType;

    move-result-object p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$400(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/app/Activity;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/CameraUtil;->showErrorInfoAndFinish(Landroid/app/Activity;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private doRequestChangeCommand(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v1, p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    :cond_0
    return-void
.end method

.method private doRequestChangeCommandImmediately(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v1, p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configCommand(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    :cond_0
    return-void
.end method

.method private doRequestChangeSettingSelf(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doRequestChangeSettingSelf] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreviewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPreviewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v1, v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParametersByKey(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doStopPreview()V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doStartPreview()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private doRequestChangeSettingValue(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doRequestChangeSettingValue] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mPreviewWidth = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mPreviewHeight = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iget v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doStopPreview()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doStartPreview()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private doSetPictureSize(Lcom/freeme/camera/common/utils/Size;)V
    .locals 0

    return-void
.end method

.method private doStartPreview()V
    .locals 3

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->isCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startPreview()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/16 v1, 0x17

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mUncompressedImageCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    :cond_0
    return-void
.end method

.method private doStopPreview()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->checkIsCapturing()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->isCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;->afterStopPreview()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->stopPreviewAsync()V

    :cond_1
    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mNeedQuitHandler:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->resetCountNumber()V

    return-void
.end method

.method private doTakePicture(Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;)V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doTakePicture] mCameraProxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureStartTime:J

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegReceivedCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;

    iget p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegRotation:I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->setCaptureParameters(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->onPreviewStopped()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsNeedStartPreviewAfterCapture:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPostViewCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/freeme/camera/common/device/v1/CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method private doUpdatePreviewSurface(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[doUpdatePreviewSurface],surfaceHolder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",camera proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->setSurfaceHolderParameters()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    invoke-direct {p0, p1, v3}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->prePareAndStartPreview(Landroid/hardware/Camera$Parameters;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;
    .locals 12

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getOriginalParameters(Z)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v1, v3, :cond_0

    new-instance v4, Lcom/freeme/camera/common/utils/Size;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v4, v6, v7}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-interface {v5, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->isDisplayRotateSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v8

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$400(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/app/Activity;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    move-wide v6, p1

    invoke-static/range {v4 .. v11}, Lcom/freeme/camera/common/utils/CameraUtil;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZZZLjava/lang/String;)Lcom/freeme/camera/common/utils/Size;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    invoke-virtual {p1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p2

    iput p2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    return-object p1
.end method

.method private hasDeviceStateCallback()Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$500(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[hasDeviceStateCallback] value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private isCameraAvailable()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_OPENED:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDisplayRotateSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 1

    const-string v0, "disp-rot-supported"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "false"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private isReadyForCapture()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isReadyForCapture] proxy is null : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-nez v5, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isPreview Started = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mIsPreviewStarted:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private notifyCaptureDone([BZZ)V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->captureDone()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegReceivedCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DataCallbackInfo;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DataCallbackInfo;-><init>()V

    iput-object p1, v0, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DataCallbackInfo;->data:[B

    iput-boolean p2, v0, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DataCallbackInfo;->needUpdateThumbnail:Z

    iput-boolean p3, v0, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DataCallbackInfo;->needRestartPreview:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegReceivedCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;->onDataReceived(Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DataCallbackInfo;)V

    :cond_0
    return-void
.end method

.method private prePareAndStartPreview(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[prePareAndStartPreview] state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mSurfaceObject = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->setSurfaceHolderParameters()V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->setPreviewParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->startPreview()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mUncompressedImageCallback:Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->createSettingSecond(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method private resetCountNumber()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mP2DoneCallBackCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPostViewCallbackNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private restoreStateForCShot(Ljava/lang/String;)V
    .locals 2

    const-string v0, "key_continuous_shot"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureSync:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCaptureSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private setCaptureParameters(I)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$400(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotationFromDeviceSpec(IILandroid/content/Context;)I

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingDeviceConfigurator:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeByTargetSize(Ljava/util/List;Landroid/hardware/Camera$Size;Z)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$400(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$400(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayOrientationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setDisplayOrientation(I)V

    return-void
.end method

.method private setPreviewParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPreviewParameters] mPreviewWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mPreviewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->setDisplayOrientation()V

    iget v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewWidth:I

    iget v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mPreviewHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private setSurfaceHolderParameters()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mFrameworkPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSurfaceObject:Ljava/lang/Object;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "set preview display exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updatePreviewSize()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mSettingManager:Lcom/freeme/camera/common/setting/ISettingManager;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager;->getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    const-string v1, "key_picture_size"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->getTargetPreviewSize(D)Lcom/freeme/camera/common/utils/Size;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->cancelDealMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] - msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceAction;->stringify(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[dismiss]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_6

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[handleMessage] the message don\'t defined in photodeviceaction, need check"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doOnError(I)V

    goto/16 :goto_3

    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doOnDisconnected()V

    goto/16 :goto_3

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doRequestChangeSettingSelf(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    :goto_0
    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera is closed or in opening state, can\'t request change self setting value,key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doDestroyHandler()V

    goto/16 :goto_3

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->isReadyForCapture()Z

    move-result v0

    aput-boolean v0, p1, v1

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doRequestChangeCommandImmediately(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doRequestChangeCommand(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->restoreStateForCShot(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraProxy:Lcom/freeme/camera/common/device/v1/CameraProxy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;)Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;->CAMERA_UNKNOWN:Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$CameraState;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doRequestChangeSettingValue(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    :goto_1
    invoke-static {}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera is closed or in opening state, can\'t request change setting value,key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doSetPictureSize(Lcom/freeme/camera/common/utils/Size;)V

    goto :goto_3

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$PreviewSizeCallback;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mCameraOpenedCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$PreviewSizeCallback;

    goto :goto_3

    :pswitch_a
    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doGetPreviewSize(Landroid/os/Message;)V

    goto :goto_3

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doCloseCamera(Z)V

    goto :goto_3

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mJpegRotation:I

    goto :goto_3

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doTakePicture(Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$CaptureDataCallback;)V

    goto :goto_3

    :pswitch_e
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doStopPreview()V

    goto :goto_3

    :pswitch_f
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doStartPreview()V

    goto :goto_3

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->mModeDeviceCallback:Lcom/freeme/camera/feature/mode/supdefinition/device/IDeviceController$DeviceCallback;

    goto :goto_3

    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doUpdatePreviewSurface(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/feature/mode/supdefinition/DeviceInfo;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doOpenCamera(Lcom/freeme/camera/feature/mode/supdefinition/DeviceInfo;)V

    goto :goto_3

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/common/device/v1/CameraProxy;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/supdefinition/device/SupDefinitionDeviceController$SupDefinitionDeviceHandler;->doOnOpened(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
