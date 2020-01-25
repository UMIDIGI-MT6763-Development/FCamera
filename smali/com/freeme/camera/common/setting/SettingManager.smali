.class public Lcom/freeme/camera/common/setting/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ISettingManager;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;
.implements Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;


# static fields
.field private static final MAIN_THREAD:Ljava/lang/String; = "main"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mAppUi:Lcom/freeme/camera/common/IAppUi;

.field private mBindModeEventLock:Ljava/lang/Object;

.field private mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

.field private mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mCameraId:Ljava/lang/String;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mInitialized:Z

.field private mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field private mPendingBindModeEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/mode/ICameraMode$ModeType;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictionDispatcher:Lcom/freeme/camera/common/relation/RestrictionDispatcher;

.field private mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

.field private mSettingDevice2RequesterProxy:Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;

.field private mSettingDeviceRequesterProxy:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

.field private final mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

.field private final mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

.field private mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/common/setting/SettingTable;

    invoke-direct {v0}, Lcom/freeme/camera/common/setting/SettingTable;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    new-instance v0, Lcom/freeme/camera/common/relation/StatusMonitor;

    invoke-direct {v0}, Lcom/freeme/camera/common/relation/StatusMonitor;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    new-instance v0, Lcom/freeme/camera/common/relation/RestrictionDispatcher;

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/relation/RestrictionDispatcher;-><init>(Lcom/freeme/camera/common/setting/SettingTable;)V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/freeme/camera/common/relation/RestrictionDispatcher;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    new-instance v0, Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-direct {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingAccessManager;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/common/setting/SettingManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/mode/ICameraMode$ModeType;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/common/setting/SettingManager;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/common/setting/SettingManager;)Lcom/freeme/camera/common/setting/SettingTable;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    return-object p0
.end method

.method private getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freeme/camera/common/mode/ICameraMode$ModeType;",
            ")",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/setting/ICameraSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/freeme/camera/common/setting/SettingManager$3;->$SwitchMap$com$freeme$camera$common$mode$ICameraMode$ModeType:[I

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingTable;->getSettingListByType(Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingTable;->getSettingListByType(Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addViewEntry()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addViewEntry], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addViewEntry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ICameraSetting;->addViewEntry()V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    sget-object v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    :goto_2
    invoke-direct {p0, v1}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    sget-object v3, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    invoke-virtual {v2, v3}, Lcom/freeme/camera/common/setting/SettingTable;->getSettingListByType(Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ICameraSetting;->removeViewEntry()V

    goto :goto_3

    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->registerQuickIconDone()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->attachSwitchCameraViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->attachSwitchWideAngleViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->attachSwitchMicroLenViewEntry()V

    return-void
.end method

.method public bindMode(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[bindMode] modeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", modeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/setting/ICameraSetting;->onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CaptureRequest$Builder;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCaptureRequest], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCaptureRequest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v2}, Lcom/freeme/camera/common/setting/SettingTable;->getAllCaptureRequestSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ICameraSetting;->getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;->configCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public configCommand(Ljava/lang/String;Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;->configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V

    :cond_0
    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 9

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v2, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v3}, Lcom/freeme/camera/common/setting/SettingTable;->getAllConfigParametersSettings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Lcom/freeme/camera/common/setting/ICameraSetting;->getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[configParameters], need restart preview:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_3
    if-nez v5, :cond_5

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configParameters]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v3
.end method

.method public configParametersByKey(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParametersByKey]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v2, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v1, p2}, Lcom/freeme/camera/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/setting/ICameraSetting;->getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;->configParameters(Landroid/hardware/Camera$Parameters;)Z

    move-result p1

    iget-object p2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {p2, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object p2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configParameters]-"

    invoke-static {p2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return p1
.end method

.method public configSessionSurface(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configSessionSurface], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configSessionSurface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v2}, Lcom/freeme/camera/common/setting/SettingTable;->getAllCaptureRequestSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ICameraSetting;->getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;->configSessionSurface(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public createAllSettings()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createAllSettings]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    const-class v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/loader/FeatureProvider;->getAllBuildInInstance(Ljava/lang/Class;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[createAllSettings], there is no setting created, so return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v1}, Lcom/freeme/camera/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    move v4, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-interface {v5}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-interface {v6}, Lcom/freeme/camera/common/setting/ICameraSetting;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[createAllSettings], setting has created, so return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    goto :goto_3

    :cond_6
    move-object v2, v3

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAllSettings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v1

    iget-object v4, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v4, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[createAllSettings], access active failed, return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_7
    iget-boolean v4, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v4, :cond_8

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[createAllSettings], setting is uninitialized, return"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    return-void

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_5

    :cond_a
    iget-object v5, p0, Lcom/freeme/camera/common/setting/SettingManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v6, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v4, v5, v6, p0}, Lcom/freeme/camera/common/setting/ICameraSetting;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object v5, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v5, v4}, Lcom/freeme/camera/common/setting/SettingTable;->add(Lcom/freeme/camera/common/setting/ICameraSetting;)V

    iget-object v5, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    iget-object v6, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDevice2RequesterProxy:Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;

    invoke-interface {v4, v5, v6}, Lcom/freeme/camera/common/setting/ICameraSetting;->setSettingDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    invoke-interface {v4, v3, v2}, Lcom/freeme/camera/common/setting/ICameraSetting;->onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    goto :goto_4

    :cond_b
    :goto_5
    invoke-virtual {v1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/setting/SettingTable;->classify(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    :cond_c
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[createAllSettings]-"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createSettingsByStage(I)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createSettingsByStage]+, stage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object v0

    const-class v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, v1, v2, p1}, Lcom/freeme/camera/common/loader/FeatureProvider;->getInstancesByStage(Ljava/lang/Class;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSettingsByStage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object p1

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, p1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[createSettingsByStage], access active failed, return"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[createSettingsByStage], setting is uninitialized, return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {p1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/freeme/camera/common/setting/SettingManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v5, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v1, v4, v5, p0}, Lcom/freeme/camera/common/setting/ICameraSetting;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object v4, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v4, v1}, Lcom/freeme/camera/common/setting/SettingTable;->add(Lcom/freeme/camera/common/setting/ICameraSetting;)V

    iget-object v4, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    iget-object v5, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDevice2RequesterProxy:Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;

    invoke-interface {v1, v4, v5}, Lcom/freeme/camera/common/setting/ICameraSetting;->setSettingDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    invoke-interface {v1, v3, v2}, Lcom/freeme/camera/common/setting/ICameraSetting;->onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingTable;->classify(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V

    :cond_7
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[createSettingsByStage]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getRawOutputConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    const-string v1, "key_dng"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting;->getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;->configRawSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v1, v0}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    :cond_1
    return-object v1
.end method

.method public getRepeatingCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/common/setting/SettingManager$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/common/setting/SettingManager$2;-><init>(Lcom/freeme/camera/common/setting/SettingManager;)V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object v0
.end method

.method public getSettingController()Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    return-object p0
.end method

.method public getSettingDevice2Configurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Configurator;
    .locals 0

    return-object p0
.end method

.method public getSettingDeviceConfigurator()Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceConfigurator;
    .locals 0

    return-object p0
.end method

.method public getStatusMonitor()Lcom/freeme/camera/common/relation/StatusMonitor;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 3

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/freeme/camera/common/setting/SettingManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[init]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p3, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    iput-object p4, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraApi:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mActivity:Landroid/app/Activity;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    sget-object p1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API1:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne p1, p4, :cond_0

    new-instance p1, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    invoke-direct {p1}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->API2:Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    if-ne p1, p4, :cond_1

    new-instance p1, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;

    invoke-direct {p1}, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDevice2RequesterProxy:Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]-"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStarted()V
    .locals 5

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewStarted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;->onPreviewStarted()V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPreviewStopped], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewStopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v2}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting;->getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;->onPreviewStopped()V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method public postRestriction(Lcom/freeme/camera/common/relation/Relation;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[postRestriction], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/Relation;->getHeaderKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/freeme/camera/common/relation/Relation;->getHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " post relation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postRestriction"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mRestrictionDispatcher:Lcom/freeme/camera/common/relation/RestrictionDispatcher;

    invoke-virtual {v1, p1}, Lcom/freeme/camera/common/relation/RestrictionDispatcher;->dispatch(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUi;->attachSwitchCameraViewEntry()V

    return-void
.end method

.method public querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getSupportedPlatformValues()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public queryValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public refreshViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[refreshViewEntry], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/freeme/camera/common/setting/SettingManager$1;

    invoke-direct {v2, p0, v0}, Lcom/freeme/camera/common/setting/SettingManager$1;-><init>(Lcom/freeme/camera/common/setting/SettingManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerSettingItem(Lcom/freeme/camera/common/setting/ICameraSetting;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingTable;->add(Lcom/freeme/camera/common/setting/ICameraSetting;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[removeViewEntry], mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeViewEntry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lcom/freeme/camera/common/setting/ICameraSetting;->removeViewEntry()V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    return-void
.end method

.method public setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCharacteristics]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCharacteristics"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v2}, Lcom/freeme/camera/common/setting/SettingTable;->getAllCaptureRequestSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting;->getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;->setCameraCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getSettingsKeepSavingTime(I)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/freeme/camera/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->postRestrictionAfterInitialized()V

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[setCameraCharacteristics]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOriginalParameters]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOriginalParameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v1}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v2}, Lcom/freeme/camera/common/setting/SettingTable;->getAllConfigParametersSettings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/freeme/camera/common/setting/ICameraSetting;->getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;->setOriginalParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getDataStore()Lcom/freeme/camera/common/relation/DataStore;

    move-result-object p1

    iget-object v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/freeme/camera/common/relation/DataStore;->getSettingsKeepSavingTime(I)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/freeme/camera/common/setting/SettingTable;->get(Ljava/lang/String;)Lcom/freeme/camera/common/setting/ICameraSetting;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->postRestrictionAfterInitialized()V

    goto :goto_3

    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[setOriginalParameters]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unInit]+, mInitialized:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mInitialized:Z

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->unInit()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->startControl()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->removeViewEntry()V

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ICameraSetting;->unInit()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingTable;->removeAll()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->stopControl()V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]-"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unRegisterSettingItem(Lcom/freeme/camera/common/setting/ICameraSetting;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingTable;->remove(Lcom/freeme/camera/common/setting/ICameraSetting;)V

    return-void
.end method

.method public unbindMode(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unbindMode] modeKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingTable:Lcom/freeme/camera/common/setting/SettingTable;

    invoke-virtual {v0}, Lcom/freeme/camera/common/setting/SettingTable;->getAllSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-interface {v1, p1}, Lcom/freeme/camera/common/setting/ICameraSetting;->onModeClosed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mBindModeEventLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mPendingBindModeEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 1
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDevice2RequesterProxy:Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingDevice2RequesterProxy;->updateModeDevice2Requester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    return-void
.end method

.method public updateModeDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingDeviceRequesterProxy:Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingDeviceRequesterProxy;->updateModeDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    return-void
.end method

.method public updateModeDeviceStateToSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeDeviceStateToSetting] mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",state:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateModeDeviceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/setting/SettingAccessManager;->getAccess(Ljava/lang/String;)Lcom/freeme/camera/common/setting/SettingAccessManager$Access;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->activeAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/setting/SettingManager;->mModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-direct {p0, v0}, Lcom/freeme/camera/common/setting/SettingManager;->getSettingByModeType(Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/setting/ICameraSetting;

    invoke-virtual {p1}, Lcom/freeme/camera/common/setting/SettingAccessManager$Access;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1, p2}, Lcom/freeme/camera/common/setting/ICameraSetting;->updateModeDeviceState(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/freeme/camera/common/setting/SettingManager;->mSettingAccessManager:Lcom/freeme/camera/common/setting/SettingAccessManager;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/common/setting/SettingAccessManager;->recycleAccess(Lcom/freeme/camera/common/setting/SettingAccessManager$Access;)V

    return-void
.end method
