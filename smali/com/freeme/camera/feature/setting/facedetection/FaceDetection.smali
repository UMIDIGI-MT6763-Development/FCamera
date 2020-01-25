.class public Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "FaceDetection.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView$OnFaceDetectionClickListener;


# static fields
.field private static final FACE_EXIST_KEY:Ljava/lang/String; = "key_face_exist"

.field private static final FOCUS_STATE_KEY:Ljava/lang/String; = "key_focus_state"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

.field private mFaceExistStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

.field private mIsFaceExistLastTime:Z

.field private mModeHandler:Landroid/os/Handler;

.field private mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

.field private mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

.field private mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

.field private mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

.field private mPreviewSize:Lcom/freeme/camera/common/utils/Size;

.field private mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

.field private mSupportValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSupportValues:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mIsFaceExistLastTime:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$1;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$2;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$3;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$4;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection$5;-><init>(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->updateFaceDisplayOrientation()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->updateImageOrientation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mIsFaceExistLastTime:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mIsFaceExistLastTime:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceExistStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mOnDetectedFaceUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnDetectedFaceUpdateListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->requestFaceDetection()V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mModeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/utils/Size;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    return-object p0
.end method

.method static synthetic access$302(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;Lcom/freeme/camera/common/utils/Size;)Lcom/freeme/camera/common/utils/Size;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mPreviewSize:Lcom/freeme/camera/common/utils/Size;

    return-object p1
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method private initSettingValue()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSupportValues:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSupportValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private requestFaceDetection()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method private updateFaceDisplayOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayOrientationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-virtual {v2, v1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->updateFaceDisplayOrientation(II)V

    return-void
.end method

.method private updateImageOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->updateImageOrientation()V

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;->setFaceDetectionOnClickListener(Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView$OnFaceDetectionClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->getCaptureRequestConfigure(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/facedetection/FaceCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_face_detection"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->getParametersConfigure(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/facedetection/FaceParameterConfig;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mModeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->init()V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p2, p1, p3}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/relation/DataStore;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mOnFaceValueUpdateListener:Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;

    invoke-virtual {p2, p3}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->setFaceValueUpdateListener(Lcom/freeme/camera/feature/setting/facedetection/IFaceConfig$OnFaceValueUpdateListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/IAppUi;->registerOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->initSettingValue()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->updateFaceDisplayOrientation()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_face_exist"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceExistStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_focus_state"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public onFaceDetectionClicked(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFaceDetectionClicked], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeClosed] modeKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mIsFaceExistLastTime:Z

    const-string v0, "com.freeme.camera.feature.mode.pip."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 2

    sget-object p2, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onModeOpened] modeKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getValue()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "off"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getValue()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object p3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-virtual {p3, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->isFaceDetectionStatusChanged(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[overrideValues] curValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headerKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceDeviceCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDeviceCtrl;->updateFaceDetectionStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    const-string p3, "on"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->enableFaceView(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->requestFaceDetection()V

    :cond_1
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_restore_settings"

    const-string v2, "off"

    const-string v3, "_global_scope"

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mSettingView:Lcom/freeme/camera/feature/setting/facedetection/FaceDetectionSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mIsFaceExistLastTime:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->unregisterOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_focus_state"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/facedetection/FaceDetection;->mFaceViewCtrl:Lcom/freeme/camera/feature/setting/facedetection/FaceViewCtrl;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
