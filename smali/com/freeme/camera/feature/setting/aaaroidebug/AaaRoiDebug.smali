.class public Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "AaaRoiDebug.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;
.implements Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;
.implements Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$MainHandler;
    }
.end annotation


# static fields
.field public static final COUNT:I = 0x3

.field public static final INDEX_AE:I = 0x0

.field public static final INDEX_AF:I = 0x1

.field public static final INDEX_AWB:I = 0x2

.field private static final KEY:Ljava/lang/String; = "key_3a_roi_debug"

.field private static final MSG_INIT_VIEW:I = 0x1

.field private static final MSG_UN_INIT_VIEW:I = 0x2

.field private static final MSG_UPDATE_VIEW_RECT:I = 0x3

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mAaaRois:[[Landroid/graphics/Rect;

.field private mAaaRoisLock:Ljava/lang/Object;

.field private mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

.field private mDebugLayout:Landroid/widget/FrameLayout;

.field private mDisplayOrientation:I

.field private mMainHandler:Landroid/os/Handler;

.field private mMirror:Z

.field private mModeHandler:Landroid/os/Handler;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRectViews:[Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRoisLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->updateDisplayOrientation()V

    return-void
.end method

.method static synthetic access$102(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mPreviewWidth:I

    return p1
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;I)I
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mPreviewHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->initView()V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->unInitView()V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->updateViewRect()V

    return-void
.end method

.method private calculateViewRect([[Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    aget-object v2, p1, v1

    array-length v2, v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    aget-object v2, p1, v1

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/Rect;

    move v3, v0

    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v1

    aget-object v4, v4, v3

    iget v5, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mPreviewWidth:I

    iget v6, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mPreviewHeight:I

    invoke-static {v4, v5, v6, p2}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->sensorToNormalizedPreview(Landroid/graphics/Rect;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mPreviewWidth:I

    iget v6, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mPreviewHeight:I

    iget v7, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mDisplayOrientation:I

    iget-boolean v8, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mMirror:Z

    invoke-static {v4, v5, v6, v7, v8}, Lcom/freeme/camera/common/utils/CoordinatesTransform;->normalizedPreviewToUi(Landroid/graphics/Rect;IIIZ)Landroid/graphics/Rect;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRoisLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRois:[[Landroid/graphics/Rect;

    aput-object v2, v4, v1

    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRoisLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRois:[[Landroid/graphics/Rect;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    monitor-exit v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    return-void
.end method

.method private initView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mDebugLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mRectViews:[Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mRectViews:[Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mDebugLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f090026

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mRectViews:[Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mDebugLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f090027

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mRectViews:[Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mDebugLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-void
.end method

.method private unInitView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getPreviewFrameLayout()Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mDebugLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/PreviewFrameLayout;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method private updateDisplayOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getDisplayOrientationFromDeviceSpec(IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mDisplayOrientation:I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mMirror:Z

    return-void
.end method

.method private updateViewRect()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRoisLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRois:[[Landroid/graphics/Rect;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mRectViews:[Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRois:[[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/freeme/camera/feature/setting/aaaroidebug/ColorRectView;->setRects([Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;->setDebugInfoListener(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig$DebugInfoListener;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebugCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_3a_roi_debug"

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

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRoisLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 p3, 0x3

    :try_start_0
    new-array p3, p3, [[Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mAaaRois:[[Landroid/graphics/Rect;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mModeHandler:Landroid/os/Handler;

    new-instance p2, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mMainHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mMainHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/freeme/camera/common/IAppUi;->registerOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->updateDisplayOrientation()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mModeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$1;-><init>(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewAreaChanged(Landroid/graphics/RectF;Lcom/freeme/camera/common/utils/Size;)V
    .locals 1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mModeHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;

    invoke-direct {v0, p0, p1}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug$2;-><init>(Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;Landroid/graphics/RectF;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRangeUpdate([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [[Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-direct {p0, v1, p4}, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->calculateViewRect([[Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnPreviewAreaChangedListener(Lcom/freeme/camera/common/IAppUiListener$OnPreviewAreaChangedListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aaaroidebug/AaaRoiDebug;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
