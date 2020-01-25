.class public Lcom/freeme/camera/feature/setting/MicroLenSwitcher;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "MicroLenSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;
    }
.end annotation


# static fields
.field private static final BACK_CAMERA_ID:Ljava/lang/String; = "0"

.field private static final CAMERA_DEFAULT_FACING:Ljava/lang/String; = "back"

.field private static final CAMERA_FACING_BACK:Ljava/lang/String; = "back"

.field private static final CAMERA_FACING_FRONT:Ljava/lang/String; = "front"

.field private static final FRONT_CAMERA_ID:Ljava/lang/String; = "1"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "key_camera_id"

.field private static final KEY_MICRO_LEN_MAIN4:Ljava/lang/String; = "key_micro_len_main4"

.field private static final KEY_MICRO_LEN_SWITCHER:Ljava/lang/String; = "key_micro_len_switcher"

.field private static final MICRO_LEN_CAMERA_ID:Ljava/lang/String; = "4"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WIDE_ANGLE_CAMERA_ID:Ljava/lang/String; = "3"


# instance fields
.field private mFacing:Ljava/lang/String;

.field private mIdList:[Ljava/lang/String;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;

.field private mMicroLenSwitcher:Landroid/view/View;

.field private mMicroLenSwitcherView:Landroid/view/View;

.field private mMicroLenViewCtrl:Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/WideAngleSwitcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mIdList:[Ljava/lang/String;

    new-instance v0, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenViewCtrl:Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcherView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)Lcom/freeme/camera/common/relation/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenViewCtrl:Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcher:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->switchMicroLenMain4()V

    return-void
.end method

.method private getCamerasFacing(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v3, 0x0

    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_0

    const-string v3, "back"

    goto :goto_1

    :cond_0
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const-string v3, "front"

    :cond_1
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private initView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMainHandler:Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcher:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcher:Landroid/view/View;

    new-instance v1, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$3;-><init>(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcher:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcher:Landroid/view/View;

    return-object v0
.end method

.method private switchMicroLenMain4()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mIdList:[Ljava/lang/String;

    if-eqz v0, :cond_6

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[switchWideAngleMain3] nextFacing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_micro_len_main4"

    const-string v3, "0"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[switchWideAngleMain3] last cameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_3

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcher:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v2, v4}, Lcom/freeme/camera/common/IAppUi;->showFaceBeautyView(Z)V

    :cond_2
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v2, v4}, Lcom/freeme/camera/common/IAppUi;->showZoomRatioHint(Z)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenViewCtrl:Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->showView()V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMainHandler:Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;

    invoke-virtual {v2, v5}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;->sendEmptyMessage(I)Z

    move v4, v1

    goto :goto_1

    :cond_3
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcher:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenViewCtrl:Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->hideView()V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    if-eq v1, v5, :cond_4

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v1, v5}, Lcom/freeme/camera/common/IAppUi;->showFaceBeautyView(Z)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mIdList:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2, v1}, Lcom/freeme/camera/common/app/IApp;->notifyCameraSelected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[switchWideAngleMain3] switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v3, "key_micro_len_main4"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v3, "key_camera_id"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_micro_len_switcher"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcherView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_micro_len_switcher"

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

.method public getStoreScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string p3, "key_micro_len_switcher"

    const-string v0, "back"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-le p2, v0, :cond_2

    invoke-direct {p0, p2}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->getCamerasFacing(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->setValue(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->setEntryValues(Ljava/util/List;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenViewCtrl:Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->init(Lcom/freeme/camera/common/app/IApp;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->initView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcherView:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcherView:Landroid/view/View;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/IAppUi;->setMicroLenSwitcherViewEntry(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_4

    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p3, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget p2, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez p2, :cond_3

    const-string p1, "back"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v0, :cond_4

    const-string p1, "front"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->setValue(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mIdList:[Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mIdList:[Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mIdList:[Ljava/lang/String;

    array-length p2, p1

    :goto_1
    if-ge p3, p2, :cond_5

    aget-object v0, p1, p3

    sget-object v1, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getCameraIdList> id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_5
    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$1;-><init>(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$2;-><init>(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unInit()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mMicroLenSwitcherView:Landroid/view/View;

    return-void
.end method

.method public unSupportedMode()Z
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
