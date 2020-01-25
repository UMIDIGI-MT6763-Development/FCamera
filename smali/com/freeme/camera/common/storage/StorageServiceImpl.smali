.class public Lcom/freeme/camera/common/storage/StorageServiceImpl;
.super Ljava/lang/Object;
.source "StorageServiceImpl.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/IStorageService;


# static fields
.field private static final BACK_CAMERA_ID:Ljava/lang/String; = "0"


# instance fields
.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private final mAppUi:Lcom/freeme/camera/common/IAppUi;

.field private mCurrentMode:I

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private final mStorage:Lcom/freeme/camera/common/storage/Storage;

.field private mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private final mStorageMonitor:Lcom/freeme/camera/common/storage/StorageMonitor;

.field protected mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/CameraContext;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/storage/StorageServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/storage/StorageServiceImpl$1;-><init>(Lcom/freeme/camera/common/storage/StorageServiceImpl;)V

    iput-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    new-instance v0, Lcom/freeme/camera/common/storage/StorageServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/storage/StorageServiceImpl$2;-><init>(Lcom/freeme/camera/common/storage/StorageServiceImpl;)V

    iput-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/storage/Storage;->getStorage(Landroid/content/Context;)Lcom/freeme/camera/common/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    new-instance v0, Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/common/storage/StorageMonitor;-><init>(Landroid/content/Context;Lcom/freeme/camera/common/storage/Storage;)V

    iput-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageMonitor:Lcom/freeme/camera/common/storage/StorageMonitor;

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/Storage;->updateDefaultDirectory()V

    iput-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-virtual {p2}, Lcom/freeme/camera/common/CameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/common/storage/MediaSaver;->addMediaSaverListener(Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V

    new-instance p2, Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-direct {p2}, Lcom/freeme/camera/common/IAppUi$HintInfo;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "hint_text_background"

    const-string v1, "drawable"

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    sget-object p2, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_ALWAYS_BOTTOM:Lcom/freeme/camera/common/IAppUi$HintType;

    iput-object p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/storage/StorageServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->updateStorageHint()V

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/storage/StorageServiceImpl;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/common/storage/StorageServiceImpl;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mCurrentMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/storage/StorageServiceImpl;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/storage/StorageServiceImpl;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method private computeStorage(J)J
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/Storage;->getCaptureThreshold()J

    move-result-wide v0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/Storage;->getCaptureThreshold()J

    move-result-wide v0

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    cmp-long v0, p1, v1

    if-lez v0, :cond_1

    move-wide p1, v1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method private updateStorageHint()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->computeStorage(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "can_not_use_storage"

    const-string v2, "string"

    iget-object v3, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v2, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "storage_full"

    const-string v2, "string"

    iget-object v3, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v3}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object v2, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCaptureStorageSpace()J
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    iget-object v2, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v2}, Lcom/freeme/camera/common/storage/Storage;->getCaptureThreshold()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v2}, Lcom/freeme/camera/common/storage/Storage;->getCaptureThreshold()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    move-wide v0, v3

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getFileDirectory()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/storage/Storage;->getFileDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordStorageSpace()J
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/Storage;->getAvailableSpace()J

    move-result-wide v0

    iget-object v2, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v2}, Lcom/freeme/camera/common/storage/Storage;->getRecordThreshold()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorage:Lcom/freeme/camera/common/storage/Storage;

    invoke-virtual {v2}, Lcom/freeme/camera/common/storage/Storage;->getRecordThreshold()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    move-wide v0, v3

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageMonitor:Lcom/freeme/camera/common/storage/StorageMonitor;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/storage/StorageMonitor;->unRegisterStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageMonitor:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/StorageMonitor;->unregisterIntentFilter()V

    return-void
.end method

.method public registerStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageMonitor:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/storage/StorageMonitor;->registerStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    return-void
.end method

.method public resume()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/storage/StorageServiceImpl;->updateStorageHint()V

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageMonitor:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-virtual {v0}, Lcom/freeme/camera/common/storage/StorageMonitor;->registerIntentFilter()V

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageMonitor:Lcom/freeme/camera/common/storage/StorageMonitor;

    iget-object v1, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageStateListener:Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/storage/StorageMonitor;->registerStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    return-void
.end method

.method public unRegisterStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/storage/StorageServiceImpl;->mStorageMonitor:Lcom/freeme/camera/common/storage/StorageMonitor;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/storage/StorageMonitor;->unRegisterStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V

    return-void
.end method
