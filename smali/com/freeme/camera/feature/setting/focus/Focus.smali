.class public Lcom/freeme/camera/feature/setting/focus/Focus;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "Focus.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/focus/IFocus;
.implements Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;
    }
.end annotation


# static fields
.field private static final AE_REGION_BOX:F = 0.3f

.field private static final AF_REGION_BOX:F = 0.15f

.field private static final EXPOSURE_VIEW_KEY:Ljava/lang/String; = "key_exposure_view"

.field private static final FACE_EXIST_KEY:Ljava/lang/String; = "key_face_exist"

.field private static final FLASH_KEY:Ljava/lang/String; = "key_flash"

.field private static final FOCUS_KEY:Ljava/lang/String; = "key_focus"

.field private static final FOCUS_LOCK:Ljava/lang/String; = "focus-lock"

.field private static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continuous-picture"

.field private static final FOCUS_MODE_CONTINUOUS_VIDEO:Ljava/lang/String; = "continuous-video"

.field private static final FOCUS_MODE_KEY:Ljava/lang/String; = "key_focus_mode"

.field private static final FOCUS_MODE_MULTI:Ljava/lang/String; = "multi"

.field private static final FOCUS_MODE_SINGLE:Ljava/lang/String; = "single"

.field private static final FOCUS_SHUTTER_PRIORITY:I = 0x14

.field private static final FOCUS_SOUND:Ljava/lang/String; = "focus-sound"

.field private static final FOCUS_STATE_KEY:Ljava/lang/String; = "key_focus_state"

.field private static final FOCUS_STATE_UPDATE:I = 0x2

.field private static final FOCUS_UI:Ljava/lang/String; = "focus-ui"

.field private static final FOCUS_VIEW_PRIORITY:I = 0xa

.field private static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final RESET_TOUCH_FOCUS:I = 0x1

.field private static final ROI_DEBUG_PROPERTY:Ljava/lang/String; = "vendor.mtk.camera.app.3a.debug"

.field private static final VALUE_CSHOT_START:Ljava/lang/String; = "start"

.field private static final VALUE_CSHOT_STOP:Ljava/lang/String; = "stop"

.field private static sFocusHoldMills:I = 0xbb8


# instance fields
.field private mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

.field private mCurrentMode:Ljava/lang/String;

.field private volatile mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

.field private mDisplayOrientation:I

.field private mFlashCalibrationInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusController:Lcom/freeme/camera/feature/setting/focus/IFocusController;

.field private mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

.field private mFocusParameterConfigure:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

.field private mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

.field private final mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

.field private mFocusStateStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

.field private mFocusStateUpdateDisabled:Z

.field private mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

.field private mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

.field private mInitialized:Z

.field private mIsAutoFocusTriggered:Z

.field private mIsEvChanging:Z

.field private mIsFaceExist:Z

.field private mLastFocusState:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

.field private mLastModeDeviceState:Ljava/lang/String;

.field private mLockIndicator:Ljava/lang/String;

.field private mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

.field private mLockPoint:Landroid/graphics/Point;

.field private mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMirror:Z

.field private mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

.field private mNeedDoAfLock:Z

.field private volatile mNeedDoCancelAutoFocus:Z

.field private mNeedPlayFocusSound:Z

.field private mNeedResetTouchFocus:Z

.field private mNeedShowFocusUi:Z

.field private volatile mNeedTriggerShutterButton:Z

.field private mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

.field private mPrevFocusSound:Ljava/lang/String;

.field private mPrevTouchCapture:Ljava/lang/String;

.field private mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

.field private final mPreviewRect:Landroid/graphics/RectF;

.field private mPreviewStarted:Z

.field private mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicator:Ljava/lang/String;

    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    const-string v0, "com.freeme.camera.common.mode.photo.PhotoMode"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->INACTIVE:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastFocusState:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastModeDeviceState:Ljava/lang/String;

    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMirror:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsFaceExist:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoAfLock:Z

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPrevFocusSound:Ljava/lang/String;

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPrevTouchCapture:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockPoint:Landroid/graphics/Point;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_INVALID:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    new-instance v0, Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-direct {v0}, Lcom/freeme/camera/common/IAppUi$HintInfo;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFlashCalibrationInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$7;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$7;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$8;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$8;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$9;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$9;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$10;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$10;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$11;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$11;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/focus/Focus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoAfLock:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoAfLock:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/focus/Focus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPrevTouchCapture:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->triggerAfLock()V

    return-void
.end method

.method static synthetic access$2800(Lcom/freeme/camera/feature/setting/focus/Focus;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi$HintInfo;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFlashCalibrationInfo:Lcom/freeme/camera/common/IAppUi$HintInfo;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/freeme/camera/feature/setting/focus/Focus;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isRestrictedToAutoOnly()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/freeme/camera/feature/setting/focus/Focus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    return p0
.end method

.method static synthetic access$3602(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastFocusState:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/freeme/camera/feature/setting/focus/Focus;Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastFocusState:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->handleAfLockRestore()V

    return-void
.end method

.method static synthetic access$4000(Lcom/freeme/camera/feature/setting/focus/Focus;Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->onFocusStateUpdate(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewStarted:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->updateAfModeState()Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/freeme/camera/feature/setting/focus/Focus;)Z
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isContinuousFocusMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/freeme/camera/feature/setting/focus/Focus;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->setPreviewRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->setDisplayOrientation()V

    return-void
.end method

.method static synthetic access$4700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/freeme/camera/feature/setting/focus/Focus;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->onExposureViewStatusChanged(Z)V

    return-void
.end method

.method static synthetic access$4902(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsFaceExist:Z

    return p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/freeme/camera/feature/setting/focus/Focus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoCancelAutoFocus:Z

    return p0
.end method

.method static synthetic access$5002(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoCancelAutoFocus:Z

    return p1
.end method

.method static synthetic access$5102(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->resetFocusArea()V

    return-void
.end method

.method static synthetic access$5400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/freeme/camera/feature/setting/focus/Focus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/focus/Focus;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/focus/Focus;->initializeFocusAreas(FF)V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/focus/Focus;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/feature/setting/focus/Focus;->initializeMeteringArea(FF)V

    return-void
.end method

.method private checkAfEnv()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[checkAfEnv] ignore focus event in MultiWindowMode"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "capturing"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastModeDeviceState:Ljava/lang/String;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkAfEnv] touch focus has been disabled mLastModeDeviceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastModeDeviceState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewStarted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[checkAfEnv] preview not started "

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mInitialized:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[checkAfEnv] preview not initialized "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->isReadyTodoFocus()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->isFocusCanDo()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getEntryValues()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    const-string v3, "continuous-picture"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "continuous-video"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method private handleAfLockRestore()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleAfLockRestore] mLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "focus unlock"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getAeAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "focus unlock"

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    return-void
.end method

.method private initializeFocusAreas(FF)V
    .locals 10

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[initializeFocusAreas]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0, v5}, Lcom/freeme/camera/common/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    instance-of v0, v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const p1, 0x3e19999a    # 0.15f

    iget-boolean p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMirror:Z

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDisplayOrientation:I

    invoke-static {v1, v5, p1, p2, v2}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->uiToNormalizedPreview(Landroid/graphics/Point;Landroid/graphics/Rect;FZI)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const v7, 0x3e19999a    # 0.15f

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getCropRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->uiToSensor(Landroid/graphics/Point;Landroid/graphics/Rect;IFLandroid/graphics/Rect;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method private initializeMeteringArea(FF)V
    .locals 10

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[initializeMeteringArea]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewRect:Landroid/graphics/RectF;

    invoke-static {v0, v5}, Lcom/freeme/camera/common/utils/CameraUtil;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    instance-of v0, v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    new-instance v1, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const p1, 0x3e99999a    # 0.3f

    iget-boolean p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMirror:Z

    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDisplayOrientation:I

    invoke-static {v1, v5, p1, p2, v2}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->uiToNormalizedPreview(Landroid/graphics/Point;Landroid/graphics/Rect;FZI)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const v7, 0x3e99999a    # 0.3f

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getCropRegion()Landroid/graphics/Rect;

    move-result-object v8

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->uiToSensor(Landroid/graphics/Point;Landroid/graphics/Rect;IFLandroid/graphics/Rect;Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method private isContinuousFocusMode()Z
    .locals 4

    const-string v0, "continuous-picture"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v1}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->getCurrentFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "continuous-video"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v1}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->getCurrentFocusMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isContinuousFocusMode] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private isLockActive()Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->equals(Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isLockActive] isLockActive =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private isRestrictedToAutoOnly()Z
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getEntryValues()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private needCancelAutoFocus()Z
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "[needCancelAutoFocus] mFocusViewController is null"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_ACTIVE_FOCUSING:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[needCancelAutoFocus] no need cancelAutoFocus mFocusArea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",state=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method private onExposureViewStatusChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewStarted:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onExposureViewStatusChanged] mPreviewStarted not started"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->highlightFocusView()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->lowlightFocusView()V

    :goto_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isContinuousFocusMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$14;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$14;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onExposureViewStatusChanged] mNeedResetTouchFocus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->removeMessages(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    sget v1, Lcom/freeme/camera/feature/setting/focus/Focus;->sFocusHoldMills:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private onFocusStateUpdate(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    const-string v1, "key_focus_state"

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onFocusStateUpdate] mFocusViewController is null"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onFocusStateUpdate] mIsEvChanging when not touch"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/Focus$15;->$SwitchMap$com$freeme$camera$feature$setting$focus$IFocusController$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFocusStateUpdate] active focus done with state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , mNeedTriggerShutterButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedTriggerShutterButton:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mNeedPlayFocusSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mLockState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mNeedDoAfLock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoAfLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsAutoFocusTriggered:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    new-instance v2, Lcom/freeme/camera/feature/setting/focus/Focus$13;

    invoke-direct {v2, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$13;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedTriggerShutterButton:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->stopFocusAnimationsByState(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V

    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->triggerShutterButtonClick(I)V

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedTriggerShutterButton:Z

    goto/16 :goto_4

    :cond_3
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFocusSoundSupport:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFocusSoundSupport:Ljava/lang/String;

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "off"

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/Focus;->DEFAULT_FOCUS_SOUND:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFocusSoundDefault:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraFocusSoundDefault:Ljava/lang/String;

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/Focus;->DEFAULT_FOCUS_SOUND:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v0, "off"

    sput-object v0, Lcom/freeme/camera/feature/setting/focus/Focus;->DEFAULT_FOCUS_SOUND:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_focus_sound"

    sget-object v3, Lcom/freeme/camera/feature/setting/focus/Focus;->DEFAULT_FOCUS_SOUND:Ljava/lang/String;

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/freeme/camera/common/relation/DataStore;->getCameraScope(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPrevFocusSound:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getSoundPlayback()Lcom/freeme/camera/common/sound/ISoundPlayback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/sound/ISoundPlayback;->play(I)V

    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->stopFocusAnimationsByState(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    goto/16 :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->resetTouchFocus()V

    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFocusStateUpdate] passive unfocused done with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFocusStateUpdate] isLockActive ignore the state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->stopFocusAnimationsByState(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFocusStateUpdate] passive focused done with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->isActiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->stopFocusAnimationsByState(Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)V

    goto/16 :goto_4

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFocusStateUpdate] ignore the state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onFocusStateUpdate] passive focus start with state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , mNeedShowFocusUi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->isActiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onFocusStateUpdate] disable update passive focus state "

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$12;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$12;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    iget-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsFaceExist:Z

    if-nez p1, :cond_e

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isRestrictedToAutoOnly()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->showPassiveFocusAtCenter()V

    goto :goto_4

    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFocusStateUpdate] ignore the state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_e
    :goto_4
    :pswitch_4
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onFocusStateUpdate]-"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resetFocusArea()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private resetTouchFocus()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetTouchFocus] mIsEvChanging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mNeedDoCancelAutoFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoCancelAutoFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isContinuousFocusMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoCancelAutoFocus:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    sget v2, Lcom/freeme/camera/feature/setting/focus/Focus;->sFocusHoldMills:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    instance-of v2, v2, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayOrientationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getV2DisplayOrientation(IILandroid/content/Context;)I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDisplayOrientation:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDisplayOrientation:I

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDisplayOrientation] : mDisplayOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mMirror = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMirror:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setMirror(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMirror:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMirror:Z

    :goto_0
    return-void
.end method

.method private setPreviewRect(Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[setPreviewRect] "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->onPreviewChanged(Landroid/graphics/RectF;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mInitialized:Z

    :cond_0
    return-void
.end method

.method private triggerAfLock()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[triggerAfLock]+ "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "auto"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->initializeFocusAreas(FF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->initializeMeteringArea(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->showActiveFocusAt(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->showScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusArea:Ljava/util/List;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    invoke-virtual {v0, v3}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "focus unlock"

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->autoFocus()V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoAfLock:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[Lock]-"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "triggerAfLock IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateAfModeState()Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    const-string v1, "key_focus_mode"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateAfModeState]+ currentAfMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "single"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_SINGLE:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    goto :goto_0

    :cond_0
    const-string v1, "multi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_MULTI:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_INVALID:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAfModeState]- mAfModeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    return-object v0
.end method


# virtual methods
.method public addViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[addViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->addFocusView()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_exposure_view"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->registerOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    return-void
.end method

.method protected getCameraId()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusController:Lcom/freeme/camera/feature/setting/focus/IFocusController;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusController:Lcom/freeme/camera/feature/setting/focus/IFocusController;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocusController;->setFocusStateListener(Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewStarted:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    return-object v0
.end method

.method protected getCurrentFlashValue()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash"

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCurrentFlashValue] flashValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getCurrentMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_focus"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusController:Lcom/freeme/camera/feature/setting/focus/IFocusController;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusController:Lcom/freeme/camera/feature/setting/focus/IFocusController;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateListener:Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocusController;->setFocusStateListener(Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusParameterConfigure:Lcom/freeme/camera/feature/setting/focus/FocusParameterConfigure;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO_AND_VIDEO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    new-instance p1, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]+"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 p2, 0xa

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/IAppUi;->registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 p2, 0x14

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/IAppUi;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->setMirror(I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->setDisplayOrientation()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_focus_state"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/relation/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateStatusResponder:Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_focus_mode"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_face_exist"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string p2, "key_continuous_shot"

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, p2, p3}, Lcom/freeme/camera/common/relation/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {p1, p2, p0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;-><init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/focus/Focus;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    const p2, 0x7f0f003e

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicator:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init]-"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-direct {p1}, Lcom/freeme/camera/common/IAppUi$HintInfo;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    const p3, 0x7f080222

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    sget-object p2, Lcom/freeme/camera/common/IAppUi$HintType;->TYPE_ALWAYS_TOP:Lcom/freeme/camera/common/IAppUi$HintType;

    iput-object p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mType:Lcom/freeme/camera/common/IAppUi$HintType;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicator:Ljava/lang/String;

    iput-object p2, p1, Lcom/freeme/camera/common/IAppUi$HintInfo;->mHintText:Ljava/lang/String;

    const-string p1, "vendor.mtk.camera.app.3a.debug"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[init] in roi debug mode, set sFocusHoldMills = 5000"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/16 p1, 0x1388

    sput p1, Lcom/freeme/camera/feature/setting/focus/Focus;->sFocusHoldMills:I

    :cond_0
    return-void
.end method

.method public initAppSupportedEntryValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->setSupportedEntryValues(Ljava/util/List;)V

    return-void
.end method

.method public initPlatformSupportedValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->setSupportedPlatformValues(Ljava/util/List;)V

    return-void
.end method

.method public initSettingEntryValues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->setEntryValues(Ljava/util/List;)V

    return-void
.end method

.method protected isMultiZoneAfEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_MULTI:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSingleAfEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAfModeState:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    sget-object v1, Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;->STATE_SINGLE:Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDoubleTap(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(FF)Z
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedTriggerShutterButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[onLongPress] ignore,wait trigger shutter button"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->checkAfEnv()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->needCancelAutoFocus()Z

    move-result v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    new-instance v3, Lcom/freeme/camera/feature/setting/focus/Focus$3;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/freeme/camera/feature/setting/focus/Focus$3;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;FFZ)V

    invoke-virtual {v2, v3}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onModeClosed]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "focus unlock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getAeAfLockRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "focus unlock"

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    sget-object p1, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->resetConfiguration()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->resetFocusArea()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    iput-boolean v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsFaceExist:Z

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoAfLock:Z

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onModeOpened] modeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",modeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCurrentMode:Ljava/lang/String;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShutterButtonClick()Z
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastModeDeviceState:Ljava/lang/String;

    const-string v2, "previewing"

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKED:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->isFocusCanDo()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v2, "onShutterButtonClick can not do focus "

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_4
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->getFocusState()Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    move-result-object v0

    sget-object v2, Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;->STATE_ACTIVE_FOCUSING:Lcom/freeme/camera/feature/setting/focus/IFocusView$FocusViewState;

    const/4 v3, 0x1

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onShutterButtonClick] still do touch focus"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedTriggerShutterButton:Z

    return v3

    :cond_5
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->needWaitAfTriggerDone()Z

    move-result v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onShutterButtonClick] isNeedAfTriggerDone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedTriggerShutterButton:Z

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    invoke-virtual {v0, v3}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/Focus$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$4;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_7
    return v1
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/Focus$5;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$5;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(FF)Z
    .locals 12

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSingleTapUp] + x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedTriggerShutterButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[onSingleTapUp] ignore,wait trigger shutter button"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusRequestConfigure:Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusCaptureRequestConfigure;->getSession()Lcom/freeme/camera/common/device/v2/Camera2CaptureSessionProxy;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "[onSingleTapUp] + session is null "

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v3, "key_touch_capture"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v5}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->checkAfEnv()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPrevTouchCapture:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/16 p2, 0x67

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/16 p2, 0x68

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/16 p2, 0x69

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/freeme/camera/feature/setting/focus/Focus$1;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$1;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return v1

    :cond_4
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->needCancelAutoFocus()Z

    move-result v8

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    new-instance v2, Lcom/freeme/camera/feature/setting/focus/Focus$2;

    move-object v6, v2

    move-object v7, p0

    move v9, p1

    move v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/freeme/camera/feature/setting/focus/Focus$2;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;ZFFLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[overrideValues] + headerKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",supportValues "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "focus-sound"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    return-void

    :cond_0
    const-string v0, "focus-ui"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    return-void

    :cond_1
    const-string v0, "focus-lock"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->getEntryValues()Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "continuous-picture"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[removeViewEntry]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->removeFocusView()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v1, "key_exposure_view"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mPreviewAreaChangedListener:Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->unregisterOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    return-void
.end method

.method protected resetTouchFocusWhenCaptureDone()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetTouchFocusWhenCaptonureDone] mNeedResetTouchFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isContinuousFocusMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method protected setAfData([B)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->setAfData([B)V

    return-void
.end method

.method protected showFlashCalibrationResult(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/focus/Focus$6;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus$6;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unInit()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]+"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;->INACTIVE:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastFocusState:Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastModeDeviceState:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusController:Lcom/freeme/camera/feature/setting/focus/IFocusController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/focus/IFocusController;->setFocusStateListener(Lcom/freeme/camera/feature/setting/focus/IFocusController$FocusStateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mModeHandler:Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockIndicatorHint:Lcom/freeme/camera/common/IAppUi$HintInfo;

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/IAppUi;->hideScreenHint(Lcom/freeme/camera/common/IAppUi$HintInfo;)V

    sget-object v0, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_UNLOCKED:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLockState:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v2, "key_focus_mode"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v2, "key_face_exist"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mStatusMonitor:Lcom/freeme/camera/common/relation/StatusMonitor;

    const-string v2, "key_continuous_shot"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStatusChangeListener:Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;)V

    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->PHOTO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mCurrentModeType:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoCancelAutoFocus:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsEvChanging:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mIsFaceExist:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedResetTouchFocus:Z

    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedDoAfLock:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[unInit]-"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateModeDeviceState(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateModeDeviceState] + newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mLastModeDeviceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastModeDeviceState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastModeDeviceState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mLastModeDeviceState:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5be4d57d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x27b40e6

    if-eq v1, v2, :cond_2

    const v2, 0x3b387df1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "recording"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "previewing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "capturing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    :cond_4
    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput-boolean v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    iput-boolean v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {p1, v3}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->disableUpdateFocusState(Z)V

    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isContinuousFocusMode()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->restoreContinue()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearAfData()V

    :cond_5
    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    iput-boolean v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isRestrictedToAutoOnly()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {p1, v4}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->disableUpdateFocusState(Z)V

    iput-boolean v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/focus/Focus;->isLockActive()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusViewController:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearAfData()V

    :cond_6
    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    iput-boolean v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusListener:Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    invoke-interface {p1, v4}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->disableUpdateFocusState(Z)V

    iput-boolean v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mFocusStateUpdateDisabled:Z

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateModeDeviceState] - mNeedPlayFocusSound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedPlayFocusSound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mNeedShowFocusUi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/freeme/camera/feature/setting/focus/Focus;->mNeedShowFocusUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
