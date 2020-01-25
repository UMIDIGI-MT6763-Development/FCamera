.class public Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "SelfTimer.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# static fields
.field private static final HIGHEST_PRIORITY:I = 0xa

.field private static final MODE_DEVICE_STATE_PREVIEWING:Ljava/lang/String; = "previewing"

.field private static final MODE_DEVICE_STATE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final SELFTIMER_OFF_VALUE:Ljava/lang/String; = "0"

.field private static final SELF_TIMER_STATE_KEY:Ljava/lang/String; = "self_timer_key"

.field private static final STATE_START:Ljava/lang/String; = "start"

.field private static final STATE_STOP:Ljava/lang/String; = "stop"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mBackPressedListener:Lcom/freeme/camera/common/app/IApp$BackPressedListener;

.field public mCameraId:Ljava/lang/String;

.field private mCurrentMode:I

.field private mIsTimerStarted:Z

.field private mModeDeviceState:Ljava/lang/String;

.field private mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

.field private mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

.field private mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

.field private mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

.field private mSelfTimerStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

.field private mSupportValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValueChangeListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mModeDeviceState:Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSupportValues:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mIsTimerStarted:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$1;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mValueChangeListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$3;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$4;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mBackPressedListener:Lcom/freeme/camera/common/app/IApp$BackPressedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mIsTimerStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mCurrentMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method private initSelfTimerResBySwitch(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->initResBySwitch(Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[initSelfTimerResBySwitch] is off"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->needSelfTimerStart(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->initResBySwitch(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initSettingValue()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSupportValues:Ljava/util/List;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSupportValues:Ljava/util/List;

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSupportValues:Ljava/util/List;

    const-string v1, "10"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private needSelfTimerStart(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private startSelfTimer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->showSelfTimerView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->getSelfTimerSettingView()Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mValueChangeListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->setOnValueChangeListener(Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnValueChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addViewEntry] getValue() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->addQuickSwitchIcon()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->showQuickSwitchIcon(Z)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "self_timer_key"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->init(Lcom/freeme/camera/common/app/IApp;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerListener:Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->setSelfTimerListener(Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->initSettingValue()V

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mCameraId:Ljava/lang/String;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 p3, 0xa

    invoke-interface {p2, p0, p3}, Lcom/freeme/camera/common/IAppUi;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mBackPressedListener:Lcom/freeme/camera/common/app/IApp$BackPressedListener;

    invoke-interface {p2, v0, p3}, Lcom/freeme/camera/common/app/IApp;->registerBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;I)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/freeme/camera/common/ICameraContext;->getStatusMonitor(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor;

    move-result-object p2

    const-string p3, "self_timer_key"

    invoke-virtual {p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    if-nez p2, :cond_0

    new-instance p2, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;Lcom/freeme/camera/common/app/IApp;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    :cond_0
    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->hideSelfTimerChoiceView()V

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeClosed modeKey :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeOpened modeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "0"

    invoke-virtual {p0, p1, v0, p2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onSelfTimerValueChanged(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFlashValueChanged] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "self_timer_key"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public onSelfTimerValueChanged(Ljava/lang/String;Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onFlashValueChanged] value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->setValue(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "self_timer_key"

    sget-object v3, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->backStoreScope:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v6, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v7, "self_timer_key"

    sget-object v9, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->frontStoreScope:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v2, 0x67

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mIsTimerStarted:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->needSelfTimerStart(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "previewing"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mModeDeviceState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->startSelfTimer(Ljava/lang/String;)V

    :cond_2
    return v3

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 7

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getEntryValues()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->setEntryValues(Ljava/util/List;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    if-le v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->showQuickSwitchIcon(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {v1, v3}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->showQuickSwitchIcon(Z)V

    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v4, "key_restore_settings"

    const-string v5, "off"

    const-string v6, "_global_scope"

    invoke-virtual {v1, v4, v5, v6}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    const-string v4, "0"

    invoke-virtual {v1, v4}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->updateSelfTimerEntryView(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {p0, v1, v3}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->onSelfTimerValueChanged(Ljava/lang/String;Z)V

    :cond_3
    if-gt v0, v3, :cond_4

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[overrideValues], self timer remove from UI"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->initSelfTimerResBySwitch(Z)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v3}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->initSelfTimerResBySwitch(Z)V

    :goto_2
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerSettingView:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->initSelfTimerResBySwitch(Z)V

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mIsTimerStarted:Z

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[removeViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerViewController:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->removeQuickSwitchIcon()V

    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mSelfTimerCtrl:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerCtrl;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mBackPressedListener:Lcom/freeme/camera/common/app/IApp$BackPressedListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unRegisterBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;)V

    return-void
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->mModeDeviceState:Ljava/lang/String;

    return-void
.end method
