.class public Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;
.super Ljava/lang/Object;
.source "FocusParameterConfigure.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;
.implements Lcom/freeme/camera/feature/setting/focus/IFocusController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$VendorDataCallback;
    }
.end annotation


# static fields
.field private static final AUTOFOCUS:Ljava/lang/String; = "autoFocus"

.field private static final CANCEL_AUTOFOCUS:Ljava/lang/String; = "cancelAutoFocus"

.field private static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field private static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field private static final FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field private static final FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field private static final MTK_CAMERA_MSG_EXT_DATA_AF:I = 0x20

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAppSupportedFocusModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mCurrentFocusMode:Ljava/lang/String;

.field private mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

.field private mDisableUpdateFocusState:Z

.field private final mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mIsSupportedFocus:Z

.field private final mLock:Ljava/lang/Object;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mSettingSupportedFocusModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFocusModeList:Ljava/util/List;
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

    const-class v1, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "continuous-picture"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mAppSupportedFocusModeList:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSettingSupportedFocusModeList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$1;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$2;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    return p0
.end method

.method static synthetic access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;)Lcom/freeme/camera/feature/setting/focus/Focus;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    return-object p0
.end method

.method private initAppSupportedEntryValues()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mAppSupportedFocusModeList:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mAppSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->initAppSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private initFocusMode(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[initFocusMode] + "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "continuous-picture"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    const-string p1, "continuous-picture"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    const-string p1, "auto"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->setValue(Ljava/lang/String;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mCurrentFocusMode] -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private initPlatformSupportedValues(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    :cond_0
    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->initPlatformSupportedValues(Ljava/util/List;)V

    :cond_1
    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initPlatformSupportedValues] mSupportedFocusModeList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initSettingEntryValues()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mAppSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSettingSupportedFocusModeList:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSettingSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->initSettingEntryValues(Ljava/util/List;)V

    return-void
.end method

.method private isMzafEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isMultiZoneAfEnabled()Z

    move-result v0

    return v0
.end method

.method private isSingleAfEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isSingleAfEnabled()Z

    move-result v0

    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private updateAfCallback(Lcom/freeme/camera/common/device/v1/CameraProxy;Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAfCallback] + isContinueAf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/16 v0, 0x20

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->isMzafEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$VendorDataCallback;

    invoke-direct {p2, p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$VendorDataCallback;-><init>(Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure$1;)V

    invoke-virtual {p1, v0, p2}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->isSingleAfEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->isMzafEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->isSingleAfEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->setVendorDataCallback(ILcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "autoFocus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[updateAfCallback] call framework autoFocus"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/device/v1/CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_1

    :cond_4
    const-string v1, "cancelAutoFocus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[updateAfCallback] call framework cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/freeme/camera/common/device/v1/CameraProxy;->cancelAutoFocus()V

    :cond_5
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[updateAfCallback] -"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private updateCapabilities(Landroid/hardware/Camera$Parameters;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const-string v0, "auto"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateCapabilities] mFocusAreaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mMeteringAreaSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[autoFocus]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v2, "autoFocus"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cancelAutoFocus()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[cancelAutoFocus] mFocusQueue size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", peek  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "autoFocus"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v2, "cancelAutoFocus"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public configCommand(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configCommand] configCommand mCurrentFocusMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configCommand] - mCurrentFocusMode does not supported with mSupportedFocusModeList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "auto"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->updateAfCallback(Lcom/freeme/camera/common/device/v1/CameraProxy;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->updateAfCallback(Lcom/freeme/camera/common/device/v1/CameraProxy;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public configParameters(Landroid/hardware/Camera$Parameters;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusArea:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringArea:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[configParameters] mCurrentFocusMode is not supported in current platform"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public disableUpdateFocusState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    return-void
.end method

.method public doAfTriggerBeforeCapture()V
    .locals 0

    return-void
.end method

.method public getCurrentFocusMode()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFocusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    return-object v0
.end method

.method public isFocusCanDo()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isFocusCanDo] + focusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "infinity"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFocusCanDo] - focusMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusAreaSupported:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isFocusCanDo] - mFocusAreaSupported is false"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringAreaSupported:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[isFocusCanDo] - mMeteringAreaSupported is false"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_2
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[isFocusCanDo] - return true"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public needWaitAfTriggerDone()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideFocusMode] currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mCurrentFocusMode ="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSettingSupportedFocusModeList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    if-eq p2, p1, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetConfiguration()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_0
    return-void
.end method

.method public restoreContinue()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[restoreContinue] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/focus/Focus;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-picture"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "continuous-video"

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->sendSettingChangeRequest()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setFocusStateListener(Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setOriginalParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDisableUpdateFocusState:Z

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->updateCapabilities(Landroid/hardware/Camera$Parameters;)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->initPlatformSupportedValues(Landroid/hardware/Camera$Parameters;)V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mIsSupportedFocus:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->initAppSupportedEntryValues()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->initSettingEntryValues()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSettingSupportedFocusModeList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->initFocusMode(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setWaitCancelAutoFocus(Z)V
    .locals 0

    return-void
.end method

.method public updateFocusArea(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocusArea:Ljava/util/List;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mMeteringArea:Ljava/util/List;

    return-void
.end method

.method public updateFocusCallback()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mFocus:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public updateFocusMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mSettingSupportedFocusModeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->mCurrentFocusMode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method
