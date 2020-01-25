.class public Lcom/freeme/camera/CameraActivity;
.super Lcom/freeme/camera/PermissionActivity;
.source "CameraActivity.java"

# interfaces
.implements Lcom/freeme/camera/common/app/IApp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/CameraActivity$WorkerHandler;,
        Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;,
        Lcom/freeme/camera/CameraActivity$ScreenHandler;,
        Lcom/freeme/camera/CameraActivity$MainHandler;
    }
.end annotation


# static fields
.field private static final BATTERY_LOW_THRESHOLD:I = 0xf

.field private static final DELAY_MSG_SCREEN_SWITCH:I = 0x1d4c0

.field private static final IS_CAMERA:Ljava/lang/String; = "isCamera"

.field private static final IS_IKO_START:Ljava/lang/String; = "isIkoStart"

.field private static final MSG_CLEAR_SCREEN_ON_FLAG:I = 0x0

.field private static final MSG_INIT_FACEBEAUTY_UTIL:I = 0x6

.field private static final MSG_LOAD_DECODE_THUMBNAIL:I = 0x2

.field private static final MSG_NEW_PLUGINMANAGER_AGENT:I = 0x4

.field private static final MSG_NOT_READY_IMAGE_THUMBNAIL:I = 0x3

.field private static final MSG_SAVE_THUMBNAIL:I = 0x1

.field private static final MSG_SET_SCREEN_BRIGHTNESS:I = 0x2

.field private static final MSG_SET_SCREEN_ON_FLAG:I = 0x1

.field private static final ORIENTATION_HYSTERESIS:I = 0x5

.field private static final REVIEW_ACTION:Ljava/lang/String; = "com.android.camera.action.REVIEW"

.field private static final SCREEN_BRIGHTNESS_MIN:F = 0.5f

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static sThumbBig:Landroid/graphics/Bitmap;


# instance fields
.field private autoExitValue:Ljava/lang/String;

.field private mAppContext:Landroid/content/Context;

.field private mBackPressedListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/app/IApp$BackPressedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBeautyFaceView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

.field private mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

.field private mCurrentCameraMode:I

.field private mFFBNoFaceIndicatorHasShow:Z

.field private mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

.field private mHasLowBattery:Z

.field private mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

.field private mIsHdrSupported:Z

.field private mIsIkoModeIntent:Z

.field private mIsResumed:Z

.field private mKeepScreenOn:Z

.field private mKeyEventListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap<",
            "Ljava/lang/String;",
            "Lcom/freeme/camera/common/app/IApp$KeyEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private final mOnOrientationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field public mPluginManagerAgent:Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

.field private mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

.field private mSecureCamera:Z

.field protected mThumbnailClickedListener:Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;

.field private mThumbnailViewListener:Lcom/freeme/camera/ui/ThumbnailViewListener;

.field protected mUri:Landroid/net/Uri;

.field private mUserInteraction:Lcom/freeme/camera/feature/mode/iko/UserInteraction;

.field private mWorkerHandler:Lcom/freeme/camera/CameraActivity$WorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/PermissionActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/CameraActivity;->mCurrentCameraMode:I

    const-string v1, "on"

    iput-object v1, p0, Lcom/freeme/camera/CameraActivity;->autoExitValue:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mIsHdrSupported:Z

    new-instance v0, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object v0, p0, Lcom/freeme/camera/CameraActivity;->mKeyEventListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    new-instance v0, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;-><init>(Z)V

    iput-object v0, p0, Lcom/freeme/camera/CameraActivity;->mBackPressedListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/CameraActivity;->mOrientation:I

    new-instance v0, Lcom/freeme/camera/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/CameraActivity$1;-><init>(Lcom/freeme/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/freeme/camera/CameraActivity;->mThumbnailClickedListener:Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;

    new-instance v0, Lcom/freeme/camera/CameraActivity$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/CameraActivity$3;-><init>(Lcom/freeme/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/freeme/camera/CameraActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/CameraActivity;)Lcom/freeme/camera/ui/CameraAppUI;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/CameraActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/CameraActivity;->mIsResumed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/CameraActivity;->keepScreenOn()V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/CameraActivity;->keepScreenOnForAWhile()V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/CameraActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/CameraActivity;->setScreenBrightness()V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/CameraActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/CameraActivity;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/CameraActivity;->mOrientation:I

    return p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/CameraActivity;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/CameraActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$700(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/freeme/camera/CameraActivity;->roundOrientation(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$900(Lcom/freeme/camera/CameraActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/CameraActivity;->mHasLowBattery:Z

    return p0
.end method

.method static synthetic access$902(Lcom/freeme/camera/CameraActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/CameraActivity;->mHasLowBattery:Z

    return p1
.end method

.method public static getsThumbBig()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/freeme/camera/CameraActivity;->sThumbBig:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private isFreemeIko()Z
    .locals 2

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_freeme_iko:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->camera_freeme_iko:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isThirdPartyIntent(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private keepScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$ScreenHandler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private keepScreenOnForAWhile()V
    .locals 4

    iget-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/CameraActivity$ScreenHandler;

    invoke-direct {v0, p0}, Lcom/freeme/camera/CameraActivity$ScreenHandler;-><init>(Lcom/freeme/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$ScreenHandler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/CameraActivity$ScreenHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mKeepScreenOn:Z

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    invoke-virtual {v1, v0}, Lcom/freeme/camera/CameraActivity$ScreenHandler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private static roundOrientation(II)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 p0, p0, 0x2d

    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0

    :cond_2
    return p1
.end method

.method private setIkoModeIntent()V
    .locals 3

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.freeme.iko"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/freeme/camera/CameraActivity;->mIsIkoModeIntent:Z

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.freeme.iko"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private setScreenBrightness()V
    .locals 5

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    move v2, v3

    :cond_0
    sget-object v3, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraBrightnessLevel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraBrightnessLevel:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public clearIkoModeIntent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mIsIkoModeIntent:Z

    return-void
.end method

.method public disableGSensorOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public enableGSensorOrientation()V
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mIsResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public enableKeepScreenOn(Z)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableKeepScreenOn enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/freeme/camera/CameraActivity;->mKeepScreenOn:Z

    iget-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mIsResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$ScreenHandler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraActivity$ScreenHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public getAppUi()Lcom/freeme/camera/common/IAppUi;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    return-object v0
.end method

.method public getAutoExitValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->autoExitValue:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()I
    .locals 1

    const v0, 0x7f080068

    return v0
.end method

.method public getCurrentCameraMode()I
    .locals 1

    iget v0, p0, Lcom/freeme/camera/CameraActivity;->mCurrentCameraMode:I

    return v0
.end method

.method public getGSensorOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/freeme/camera/CameraActivity;->mOrientation:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHdrSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mIsHdrSupported:Z

    return v0
.end method

.method public getIModeListener()Lcom/freeme/camera/common/mode/IModeListener;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorkerHandler()Lcom/freeme/camera/CameraActivity$WorkerHandler;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mWorkerHandler:Lcom/freeme/camera/CameraActivity$WorkerHandler;

    return-object v0
.end method

.method public getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mBeautyFaceView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    return-object v0
.end method

.method public getmFunnyFaceView()Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    return-object v0
.end method

.method public getmPluginManagerAgent()Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mPluginManagerAgent:Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    return-object v0
.end method

.method protected goToGallery(Landroid/net/Uri;)V
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "uri is null, can not go to gallery"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[goToGallery] uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mimeType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v3, "CAMERA_GO_TO_GOOGLE_PHOTO"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x8080000

    const/4 v4, 0x2

    const/16 v5, 0x17

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/freeme/camera/common/custom/CameraCustomXmlParser;->sCameraGenerParamMap:Ljava/util/HashMap;

    const-string v7, "CAMERA_GO_TO_GOOGLE_PHOTO"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "true"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isCamera"

    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_1

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p1

    if-ne v4, p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/freeme/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startGalleryActivity] Couldn\'t view "

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/freeme/camera/CameraActivity;->mCurrentCameraMode:I

    const/16 v7, 0x69

    if-ne v2, v7, :cond_5

    invoke-direct {p0}, Lcom/freeme/camera/CameraActivity;->isFreemeIko()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[goToGallery] uri: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", mimeType = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.REVIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isCamera"

    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_3

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p1

    if-ne v4, p1, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/freeme/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startGalleryActivity] Couldn\'t view "

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :cond_4
    const-string v2, "com.freeme.gallery"

    const-string v7, "com.freeme.gallery.app.GalleryActivity"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isCamera"

    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "isIkoStart"

    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "activity"

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_6

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p1

    if-ne v4, p1, :cond_6

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.freeme.camera"

    const-string v3, "com.freeme.camera.GalleryActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isCameraStart"

    invoke-virtual {v0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/freeme/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f01001d

    const v0, 0x7f01000e

    invoke-virtual {p0, p1, v0}, Lcom/freeme/camera/CameraActivity;->overridePendingTransition(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startGalleryActivity] Couldn\'t view "

    invoke-static {v0, v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public hasLowBattery()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mHasLowBattery:Z

    return v0
.end method

.method public isIkoModeIntent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mIsIkoModeIntent:Z

    return v0
.end method

.method public isSecureCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mSecureCamera:Z

    return v0
.end method

.method public isVideoIntent()Z
    .locals 2

    const-string v0, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public notifyCameraSelected(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/mode/IModeListener;->onCameraSelected(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public notifyNewMedia(Landroid/net/Uri;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mUri:Landroid/net/Uri;

    iget-object p2, p0, Lcom/freeme/camera/CameraActivity;->mThumbnailViewListener:Lcom/freeme/camera/ui/ThumbnailViewListener;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/freeme/camera/ui/ThumbnailViewListener;->updateUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/PermissionActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1f40

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/common/utils/StorageUtil;->SDCARD_PATH:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/freeme/camera/common/utils/DocumentsUtils;->saveTreeUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mBackPressedListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/app/IApp$BackPressedListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp$BackPressedListener;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    invoke-super {p0}, Lcom/freeme/camera/PermissionActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/freeme/camera/PermissionActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/freeme/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    sget-object v1, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3, v3}, Lcom/freeme/camera/common/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v3}, Lcom/freeme/camera/common/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/CameraAppUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method protected onCreateTasks(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0f0106

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thumbnail-creation-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/freeme/camera/CameraActivity$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/CameraActivity$WorkerHandler;-><init>(Lcom/freeme/camera/CameraActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/freeme/camera/CameraActivity;->mWorkerHandler:Lcom/freeme/camera/CameraActivity$WorkerHandler;

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mWorkerHandler:Lcom/freeme/camera/CameraActivity$WorkerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0, p0}, Lcom/freeme/camera/CameraActivity;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/freeme/camera/common/utils/CameraUtil;->launchCamera(Landroid/app/Activity;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/freeme/camera/PermissionActivity;->onCreateTasks(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x700

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0b001f

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraActivity;->setContentView(I)V

    new-instance p1, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;

    invoke-direct {p1, p0, p0}, Lcom/freeme/camera/CameraActivity$OrientationEventListenerImpl;-><init>(Lcom/freeme/camera/CameraActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    new-instance p1, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p1, p0}, Lcom/freeme/camera/ui/CameraAppUI;-><init>(Lcom/freeme/camera/common/app/IApp;)V

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {p1}, Lcom/freeme/camera/ui/CameraAppUI;->onCreate()V

    new-instance p1, Lcom/freeme/camera/common/mode/ModeManager;

    invoke-direct {p1}, Lcom/freeme/camera/common/mode/ModeManager;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/mode/IModeListener;->create(Lcom/freeme/camera/common/app/IApp;)V

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/mode/IModeListener;->setAnimationListener(Lcom/freeme/camera/common/mode/AnimationListener;)V

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    if-nez p1, :cond_2

    new-instance p1, Lcom/freeme/camera/CameraActivity$ScreenHandler;

    invoke-direct {p1, p0}, Lcom/freeme/camera/CameraActivity$ScreenHandler;-><init>(Lcom/freeme/camera/CameraActivity;)V

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraActivity$ScreenHandler;->sendEmptyMessage(I)Z

    new-instance p1, Lcom/freeme/camera/CameraActivity$MainHandler;

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/freeme/camera/CameraActivity$MainHandler;-><init>(Lcom/freeme/camera/CameraActivity;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    const p1, 0x7f0900bc

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mBeautyFaceView:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    iget-object p1, p0, Lcom/freeme/camera/CameraActivity;->mWorkerHandler:Lcom/freeme/camera/CameraActivity$WorkerHandler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->sendEmptyMessage(I)Z

    new-instance p1, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    invoke-direct {p1, p0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mFunnyFaceView:Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    return-void
.end method

.method protected onDestroyTasks()V
    .locals 2

    invoke-super {p0}, Lcom/freeme/camera/PermissionActivity;->onDestroyTasks()V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mWorkerHandler:Lcom/freeme/camera/CameraActivity$WorkerHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mWorkerHandler:Lcom/freeme/camera/CameraActivity$WorkerHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mScreenHandler:Lcom/freeme/camera/CameraActivity$ScreenHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$ScreenHandler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/IModeListener;->destroy()V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->onDestroy()V

    :cond_3
    invoke-static {p0}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->release(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mPluginManagerAgent:Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/freeme/camera/common/pluginmanager/PluginManagerAgent;->release()V

    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mKeyEventListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/app/IApp$KeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/freeme/camera/PermissionActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mKeyEventListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/app/IApp$KeyEventListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/freeme/camera/common/app/IApp$KeyEventListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/freeme/camera/PermissionActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntentTasks(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freeme/camera/PermissionActivity;->onNewIntentTasks(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPauseTasks()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0106

    invoke-virtual {p0, v0}, Lcom/freeme/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mIsResumed:Z

    invoke-super {p0}, Lcom/freeme/camera/PermissionActivity;->onPauseTasks()V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/IModeListener;->pause()V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/CameraAppUI;->onPause()V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/freeme/camera/CameraActivity;->resetScreenOn()V

    return-void
.end method

.method protected onResumeTasks()V
    .locals 3

    invoke-static {p0}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory;->setCurrentActivity(Landroid/app/Activity;)V

    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/profiler/PerformanceTracker;->create(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->start()Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/freeme/camera/CameraActivity;->mIsResumed:Z

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V

    invoke-super {p0}, Lcom/freeme/camera/PermissionActivity;->onResumeTasks()V

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    invoke-interface {v1}, Lcom/freeme/camera/common/mode/IModeListener;->resume()V

    const-string v1, "ModeManager resume done."

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v1}, Lcom/freeme/camera/ui/CameraAppUI;->onResume()V

    const-string v1, "CameraAppUI resume done."

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->mark(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mCameraAppUI:Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v2, p0, Lcom/freeme/camera/CameraActivity;->mThumbnailClickedListener:Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;

    invoke-virtual {v1, v2}, Lcom/freeme/camera/ui/CameraAppUI;->setThumbnailClickedListener(Lcom/freeme/camera/common/IAppUiListener$OnThumbnailClickedListener;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/CameraActivity;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/freeme/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/freeme/camera/CameraActivity;->keepScreenOnForAWhile()V

    invoke-interface {v0}, Lcom/freeme/camera/common/debug/profiler/IPerformanceProfile;->stop()V

    return-void
.end method

.method protected onStartTasks()V
    .locals 0

    invoke-super {p0}, Lcom/freeme/camera/PermissionActivity;->onStartTasks()V

    return-void
.end method

.method protected onStopTasks()V
    .locals 0

    invoke-super {p0}, Lcom/freeme/camera/PermissionActivity;->onStopTasks()V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mIModeListener:Lcom/freeme/camera/common/mode/IModeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/IModeListener;->onUserInteraction()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/freeme/camera/PermissionActivity;->onUserInteraction()V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mUserInteraction:Lcom/freeme/camera/feature/mode/iko/UserInteraction;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/iko/UserInteraction;->onInteraction()V

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/CameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/freeme/camera/CameraActivity;->keepScreenOnForAWhile()V

    :cond_3
    return-void
.end method

.method public registerBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;I)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "registerKeyEventListener error [why null]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mBackPressedListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "registerKeyEventListener error [why null]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mKeyEventListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-static {p2, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->getPriorityKey(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/freeme/camera/CameraActivity;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/freeme/camera/CameraActivity;->mOrientation:I

    invoke-interface {p1, v1}, Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;->onOrientationChanged(I)V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAutoExitValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->autoExitValue:Ljava/lang/String;

    return-void
.end method

.method public setCurrentCameraMode(I)V
    .locals 0

    iput p1, p0, Lcom/freeme/camera/CameraActivity;->mCurrentCameraMode:I

    return-void
.end method

.method public setHdrSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/CameraActivity;->mIsHdrSupported:Z

    return-void
.end method

.method public setInteractionListener(Lcom/freeme/camera/feature/mode/iko/UserInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mUserInteraction:Lcom/freeme/camera/feature/mode/iko/UserInteraction;

    return-void
.end method

.method public setThumbnailClickedListener(Lcom/freeme/camera/ui/ThumbnailViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraActivity;->mThumbnailViewListener:Lcom/freeme/camera/ui/ThumbnailViewListener;

    return-void
.end method

.method public showOrNotFFBNoFaceIndicator(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/CameraActivity;->mFFBNoFaceIndicatorHasShow:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/freeme/camera/CameraActivity;->mFFBNoFaceIndicatorHasShow:Z

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/freeme/camera/CameraActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/CameraActivity$2;-><init>(Lcom/freeme/camera/CameraActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unRegisterBackPressedListener(Lcom/freeme/camera/common/app/IApp$BackPressedListener;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "unRegisterBackPressedListener error [why null]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mBackPressedListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mBackPressedListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public unRegisterKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/freeme/camera/CameraActivity;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "unRegisterKeyEventListener error [why null]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mKeyEventListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mKeyEventListeners:Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->findKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freeme/camera/common/utils/PriorityConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/CameraActivity;->mOnOrientationListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
