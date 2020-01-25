.class public Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "SaveSdcard.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView$OnSaveSdcardClickListener;


# static fields
.field private static final MAX_PEEK_BITMAP_PIXELS:I = 0x61a80

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

.field private mIsSaveLocationSupported:Z

.field private mIsThirdParty:Z

.field private final mSdcardStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

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

    const-class v1, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mIsSaveLocationSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mIsThirdParty:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSupportValues:Ljava/util/List;

    new-instance v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$2;-><init>(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSdcardStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/CameraDataAdapter;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->reloadThumbnailData()V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method private initSettingValue()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mIsSaveLocationSupported:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSupportValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSupportValues:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private registerSdcardStateReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSdcardStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private reloadThumbnailData()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    new-instance v1, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard$1;-><init>(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraDataAdapter;->requestLoad(Lcom/freeme/camera/util/Callback;)V

    return-void
.end method

.method private unregisterSdcardStateReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSdcardStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mIsSaveLocationSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;->setSaveSdcardOnClickListener(Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView$OnSaveSdcardClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_save_sdcard"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mIsThirdParty:Z

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->initSettingValue()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/utils/StorageUtil;->initialize(Landroid/content/Context;Lcom/freeme/camera/common/ICameraContext;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->registerSdcardStateReceiver()V

    new-instance p1, Lcom/freeme/camera/CameraDataAdapter;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mActivity:Landroid/app/Activity;

    const p3, 0x7f06005d

    invoke-direct {p1, p2, p3}, Lcom/freeme/camera/CameraDataAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataAdapter:Lcom/freeme/camera/CameraDataAdapter;

    return-void
.end method

.method public onSaveSdcardClicked(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZsdClicked], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v2}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->reloadThumbnailData()V

    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mIsSaveLocationSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/StorageUtil;->initialize(Landroid/content/Context;Lcom/freeme/camera/common/ICameraContext;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v3}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/utils/DroiSDCardManager;->isSDCardMount()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;->refreshView()V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->mSettingView:Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcardSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/savesdcard/SaveSdcard;->unregisterSdcardStateReceiver()V

    return-void
.end method
