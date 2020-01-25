.class public Lcom/freeme/camera/feature/setting/zoom/Zoom;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "Zoom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;,
        Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;,
        Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;
    }
.end annotation


# static fields
.field private static final DISTANCE_RATIO_STEP:F = 0.01f

.field private static final MSG_DELAY:I = 0x32

.field private static final MSG_ZOOM_IN:I = 0x0

.field private static final MSG_ZOOM_OUT:I = 0x1

.field private static final RATIO_INDEX_EMPTY:I = 0x1

.field private static final RATIO_INDEX_NULL:I = 0x0

.field private static final RATIO_INDEX_X10:I = 0x2

.field private static final RATIO_INDEX_X20:I = 0x3

.field private static final RATIO_INDEX_X30:I = 0x4

.field private static final RATIO_INDEX_X40:I = 0x5

.field private static final ZOOM_IN_TARGET_RATIO:[Ljava/lang/String;

.field private static final ZOOM_OUT_Target_RATIO:[Ljava/lang/String;


# instance fields
.field private mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

.field private mCurrentRatioMsg:Ljava/lang/String;

.field private mLastDistanceRatio:F

.field private mMainHandler:Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

.field private mModeHandler:Landroid/os/Handler;

.field private mOnZoomHintClickListener:Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;

.field private mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

.field private mOverrideValue:Ljava/lang/String;

.field private mParametersConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mSupportValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private mZoomConfig:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

.field private mZoomGestureImpl:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;

.field private mZoomKeyEventListener:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;

.field private mZoomLevelUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

.field private mZoomViewCtrl:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "2.x"

    const-string v1, "2.x"

    const-string v2, "2.x"

    const-string v3, "3.x"

    const-string v4, "4.x"

    const-string v5, "4.x"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->ZOOM_IN_TARGET_RATIO:[Ljava/lang/String;

    const-string v1, "1.0x"

    const-string v2, "1.0x"

    const-string v3, "1.0x"

    const-string v4, "1.0x"

    const-string v5, "2.0x"

    const-string v6, "3.0x"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->ZOOM_OUT_Target_RATIO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;Lcom/freeme/camera/feature/setting/zoom/Zoom$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomGestureImpl:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomViewCtrl:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    const-string v0, "on"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mOverrideValue:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSupportValues:Ljava/util/List;

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;Lcom/freeme/camera/feature/setting/zoom/Zoom$1;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomKeyEventListener:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mLastDistanceRatio:F

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/Zoom$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom$1;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomLevelUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/Zoom$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom$2;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mOnZoomHintClickListener:Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/Zoom$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom$3;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomConfig:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->requestZoom()V

    return-void
.end method

.method static synthetic access$1400(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCurrentRatioMsg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/zoom/Zoom;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCurrentRatioMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/freeme/camera/feature/setting/zoom/Zoom;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getTargetRatioMsg(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)F
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mLastDistanceRatio:F

    return p0
.end method

.method static synthetic access$2602(Lcom/freeme/camera/feature/setting/zoom/Zoom;F)F
    .locals 0

    iput p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mLastDistanceRatio:F

    return p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomViewCtrl:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mOverrideValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/zoom/Zoom;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method private getTargetRatioMsg(Z)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->ZOOM_IN_TARGET_RATIO:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->ZOOM_OUT_Target_RATIO:[Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCurrentRatioMsg:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCurrentRatioMsg:Ljava/lang/String;

    const-string v2, "1.x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCurrentRatioMsg:Ljava/lang/String;

    const-string v2, "2.x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCurrentRatioMsg:Ljava/lang/String;

    const-string v2, "3.x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCurrentRatioMsg:Ljava/lang/String;

    const-string v2, "4.x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_1

    :cond_6
    const-string v0, "1.0x"

    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getTargetRatioMsg] isZoomIn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentRatioMsg = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCurrentRatioMsg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", return "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private initSettingValue()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSupportValues:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSupportValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomViewCtrl:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    const-string v1, "1x"

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->showView(Ljava/lang/String;)V

    return-void
.end method

.method private requestZoom()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mModeHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/freeme/camera/feature/setting/zoom/Zoom$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom$4;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateRestrictionValue(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mOverrideValue:Ljava/lang/String;

    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomViewCtrl:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->hideView()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;-><init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;Lcom/freeme/camera/common/app/IApp;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomLevelUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;->setZoomUpdateListener(Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mCaptureRequestConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomConfig:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCaptureRequestConfigure]mZoomConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/zoom/ZoomCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_camera_zoom"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;-><init>(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomLevelUpdateListener:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;->setZoomUpdateListener(Lcom/freeme/camera/feature/setting/zoom/IZoomConfig$OnZoomLevelUpdateListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mParametersConfig:Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomConfig:Lcom/freeme/camera/feature/setting/zoom/IZoomConfig;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getParametersConfigure]mZoomConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/zoom/ZoomParameterConfig;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;
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
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    new-instance p2, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/freeme/camera/feature/setting/zoom/Zoom;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mModeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomGestureImpl:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;

    invoke-virtual {p2}, Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;->init()V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomViewCtrl:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->init(Lcom/freeme/camera/common/app/IApp;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->initSettingValue()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomGestureImpl:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;

    const p3, 0x7fffffff

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/IAppUi;->registerGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[init] zoom: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Gesture: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomGestureImpl:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/zoom/Zoom;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mMainHandler:Lcom/freeme/camera/feature/setting/zoom/Zoom$MainHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomKeyEventListener:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/app/IApp;->registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mOnZoomHintClickListener:Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/IAppUi;->setZoomClickListener(Lcom/freeme/camera/common/app/IApp$OnZoomHintClickListener;)V

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

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[overrideValues] headerKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", currentValue = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/zoom/Zoom;->updateRestrictionValue(Ljava/lang/String;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public unInit()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomViewCtrl:Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/zoom/ZoomViewCtrl;->unInit()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mOrientationListener:Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomGestureImpl:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->unregisterGestureListener(Lcom/freeme/camera/common/IAppUiListener$OnGestureListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mTag:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unInit] zoom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Gesture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomGestureImpl:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomGestureImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/zoom/Zoom;->mZoomKeyEventListener:Lcom/freeme/camera/feature/setting/zoom/Zoom$ZoomKeyEventListener;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unRegisterKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;)V

    return-void
.end method
