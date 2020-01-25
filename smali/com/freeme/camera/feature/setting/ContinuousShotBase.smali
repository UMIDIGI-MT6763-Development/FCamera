.class public Lcom/freeme/camera/feature/setting/ContinuousShotBase;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "ContinuousShotBase.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;
.implements Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;


# static fields
.field protected static final CONTINUOUSSHOT_OFF:Ljava/lang/String; = "off"

.field protected static final CONTINUOUSSHOT_ON:Ljava/lang/String; = "on"

.field protected static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field protected static final KEY_CSHOT_START:Ljava/lang/String; = "start"

.field protected static final KEY_CSHOT_STOP:Ljava/lang/String; = "stop"

.field private static final KEY_FOCUS:Ljava/lang/String; = "key_focus_state"

.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "key_picture_size"

.field private static final KEY_SCENE_MODE:Ljava/lang/String; = "key_scene_mode"

.field private static final KEY_ZSD:Ljava/lang/String; = "key_zsd"

.field protected static final SHUTTER_BUTTON_PRIORITY:I = 0x32

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VALUE_OF_AUTO_SCENE_DETECTION:Ljava/lang/String; = "auto-scene-detection"

.field private static volatile mIsCshotStopped:Z


# instance fields
.field protected JPEG_QUALITY_VALUE:Ljava/lang/Byte;

.field protected MAX_CAPTURE_NUMBER:I

.field private mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field public mCameraId:Ljava/lang/String;

.field private mCaptureSound:Lcom/freeme/camera/feature/setting/CaptureSound;

.field private mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

.field private mCsNamingRule:Lcom/freeme/camera/feature/setting/CsNamingRule;

.field private volatile mCurrentShotsNum:I

.field private mFileDirectory:Ljava/lang/String;

.field private mFreeStorageForCapture:J

.field private mIsCshotSupported:Z

.field private mIsLongPressed:Z

.field mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

.field private mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field private final mNumlock:Ljava/lang/Object;

.field private volatile mSavedNum:I

.field private mSavingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShutterTime:J

.field private mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotStopped:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->JPEG_QUALITY_VALUE:Ljava/lang/Byte;

    const/16 v0, 0xa

    iput v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->MAX_CAPTURE_NUMBER:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mNumlock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mShutterTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsLongPressed:Z

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavingList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotSupported:Z

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase$1;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase$2;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase$3;-><init>(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mNumlock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavedNum:I

    return p0
.end method

.method static synthetic access$1108(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavedNum:I

    return v0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    return p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->dismissSavingProcess()V

    return-void
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsLongPressed:Z

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotSupported:Z

    return p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->isContinuousShotSupport()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/ContinuousShotBase;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private disableAllUIExceptShutter()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v2, 0x7

    invoke-interface {v0, v2, v1}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    return-void
.end method

.method private dismissSavingProcess()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavingList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavingList:Ljava/util/ArrayList;

    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[dismissSavingProcess]"

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->hideSavingDialog()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isContinousShotStop()Z
    .locals 1

    sget-boolean v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotStopped:Z

    return v0
.end method

.method private isContinuousShotSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReadyForCapture()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavingList:Ljava/util/ArrayList;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getCaptureStorageSpace()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mFreeStorageForCapture:J

    iget-wide v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mFreeStorageForCapture:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isReadyForCapture] there is not enough storage space!"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    const-string v2, "key_picture_size"

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isReadyForCapture] there is no picture size,need check"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private showSavingProgress(Z)V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavingList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavingList:Ljava/util/ArrayList;

    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0f0064

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object v3, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[showSavingProgress],isShotDone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",msg = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p1, v1, v2}, Lcom/freeme/camera/common/IAppUi;->showSavingDialog(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateThumbnail([B)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "updateThumbnail()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getThumbnailViewWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromJpeg([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/IAppUi;->updateThumbnail(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected disableIndicator()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "disableIndicator()"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->disableIndicator()V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_continuous_shot"

    return-object v0
.end method

.method protected getModeType()Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

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

.method protected getSuitableSpeed()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->getSuitableSpeed()I

    move-result v0

    return v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p2}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mFileDirectory:Ljava/lang/String;

    new-instance p2, Lcom/freeme/camera/feature/setting/CsNamingRule;

    invoke-direct {p2}, Lcom/freeme/camera/feature/setting/CsNamingRule;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCsNamingRule:Lcom/freeme/camera/feature/setting/CsNamingRule;

    new-instance p2, Lcom/freeme/camera/feature/setting/CaptureSound;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/freeme/camera/feature/setting/CaptureSound;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCaptureSound:Lcom/freeme/camera/feature/setting/CaptureSound;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCaptureSound:Lcom/freeme/camera/feature/setting/CaptureSound;

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/CaptureSound;->load()V

    new-instance p2, Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    new-instance p2, Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-direct {p2}, Lcom/freeme/camera/feature/setting/ContinuousShotView;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->initIndicatorView(Lcom/freeme/camera/common/app/IApp;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_focus_state"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, v0}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method protected initializeValue(Z)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotSupported:Z

    if-eqz p1, :cond_0

    const-string v1, "on"

    :cond_0
    const-string p1, "on"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "off"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->setEntryValues(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected onContinuousShotDone(I)V
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotDone(), captureNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mNumlock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    const/16 v3, 0x3ea

    invoke-virtual {v1, v3}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->clearIndicatorMessage(I)V

    iget v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavedNum:I

    if-ge v1, p1, :cond_0

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->showSavingProgress(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->dismissSavingProcess()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onContinuousShotStarted()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mNumlock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    iput v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavedNum:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotStopped:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mShutterTime:J

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSavingList:Ljava/util/ArrayList;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->disableAllUIExceptShutter()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->setIndicatorViewOrientation(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->disableGSensorOrientation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mFileDirectory:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->addListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    iget-wide v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mFreeStorageForCapture:J

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->initStateForCapture(J)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->initStartTime()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/storage/IStorageService;->registerStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    const-string v0, "on"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->postRestriction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mModePickerManager:Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v0, v0, Lcom/freeme/camera/ui/CameraAppUI;->mQuickSwitcherManager:Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/QuickSwitcherManager;->setVisibility(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onContinuousShotStopped()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->enableGSensorOrientation()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->hideIndicatorView()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->showZoomRatioHint(Z)V

    sput-boolean v1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotStopped:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/storage/IStorageService;->unRegisterStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->postRestriction(Ljava/lang/String;)V

    return-void
.end method

.method public onMemoryStateChanged(Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onMemoryStateChanged] memory state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase$4;->$SwitchMap$com$freeme$camera$common$memory$IMemoryManager$MemoryAction:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/memory/IMemoryManager$MemoryAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->stopContinuousShot()Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->slowDownContinuousShot()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onModeClosed]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    sput-boolean p1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotStopped:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    const/16 v0, 0x3ea

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->clearIndicatorMessage(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->hideIndicatorView()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    invoke-virtual {p1, p0}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->removeListener(Lcom/freeme/camera/common/memory/IMemoryManager$IMemoryListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/storage/IStorageService;->unRegisterStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->dismissSavingProcess()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/setting/SettingBase;->onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onModeOpened] modeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    sget-object p1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 p2, 0x32

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/IAppUi;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    :cond_0
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onShutterButtonClick]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onShutterButtonFocus], pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne p1, v1, :cond_0

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsLongPressed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v1, "key_continuous_shot"

    const-string v2, "stop"

    invoke-virtual {p1, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->stopContinuousShot()Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsLongPressed:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onShutterButtonLongPressed()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->isReadyForCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/IAppUi;->showZoomRatioHint(Z)V

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onShutterButtonLongPressed]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsLongPressed:Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v2, "key_continuous_shot"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    return v2
.end method

.method protected playSound()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCaptureSound:Lcom/freeme/camera/feature/setting/CaptureSound;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CaptureSound;->play()V

    return-void
.end method

.method protected postRestriction(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/freeme/camera/feature/setting/ContinuousShotEntry;->mIsBurstMode:Z

    if-eqz v2, :cond_0

    const-string v2, "key_zsd"

    const-string v3, "off"

    const-string v4, "off, on"

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "key_zsd"

    const-string v3, "on"

    const-string v4, "off, on"

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v2, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotRestriction;->getFocusUiRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotRestriction;->getFocusSoundRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "auto-scene-detection"

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    const-string v2, "key_scene_mode"

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotRestriction;->getAsdRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/ContinuousShotRestriction;->getAsdRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v2, "off"

    invoke-virtual {v0, v2, v1}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->requestChangeOverrideValues()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method protected requestChangeOverrideValues()V
    .locals 0

    return-void
.end method

.method protected saveJpeg([B)V
    .locals 10

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mNumlock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveJpeg] data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentShotsNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->stopContinuousShot()Z

    return-void

    :cond_0
    sget-boolean v1, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mIsCshotStopped:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->MAX_CAPTURE_NUMBER:I

    if-gt v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->updateThumbnail([B)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    iget v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->showIndicatorView(I)V

    :cond_1
    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    invoke-static {p1}, Lcom/freeme/camera/common/exif/Exif;->getExif([B)Lcom/freeme/camera/common/exif/ExifInterface;

    move-result-object v9

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCsNamingRule:Lcom/freeme/camera/feature/setting/CsNamingRule;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mFileDirectory:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v5

    iget-wide v6, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mShutterTime:J

    iget v8, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    move-object v1, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/freeme/camera/feature/setting/CsNamingRule;->createContentValues([BLjava/lang/String;IIJI)Landroid/content/ContentValues;

    move-result-object v3

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;Lcom/freeme/camera/common/exif/ExifInterface;)V

    iget v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCurrentShotsNum:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->MAX_CAPTURE_NUMBER:I

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v1, "key_continuous_shot"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->stopContinuousShot()Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mMemoryManager:Lcom/freeme/camera/common/memory/MemoryManagerImpl;

    array-length v0, p1

    int-to-long v2, v0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/MediaSaver;->getBytesWaitingToSave()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/freeme/camera/common/memory/MemoryManagerImpl;->checkContinuousShotMemoryAction(JJ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected slowDownContinuousShot()V
    .locals 0

    return-void
.end method

.method protected startContinuousShot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected stopContinuousShot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected stopSound()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCaptureSound:Lcom/freeme/camera/feature/setting/CaptureSound;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CaptureSound;->stop()V

    return-void
.end method

.method public unInit()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mCaptureSound:Lcom/freeme/camera/feature/setting/CaptureSound;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/CaptureSound;->release()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->dismissSavingProcess()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->clearIndicatorAllMessage()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mContinuousShotView:Lcom/freeme/camera/feature/setting/ContinuousShotView;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/ContinuousShotView;->unInitIndicatorView()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_focus_state"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/ContinuousShotBase;->mStatusListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
