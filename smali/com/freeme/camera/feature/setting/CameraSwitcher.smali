.class public Lcom/freeme/camera/feature/setting/CameraSwitcher;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "CameraSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;
    }
.end annotation


# static fields
.field private static final BACK_CAMERA_ID:Ljava/lang/String; = "0"

.field private static final BACK_MAIN2_CAMERA_ID:Ljava/lang/String; = "2"

.field private static final CAMERA_DEFAULT_FACING:Ljava/lang/String; = "back"

.field private static final CAMERA_FACING_BACK:Ljava/lang/String; = "back"

.field private static final CAMERA_FACING_FRONT:Ljava/lang/String; = "front"

.field private static final DEBUG_CAMERA_ID_PROPERTY:Ljava/lang/String; = "mtk.camera.switch.id.debug"

.field private static final DEBUG_MAIN2:Ljava/lang/String; = "vendor.debug.camera.single_main2"

.field private static final FRONT_CAMERA_ID:Ljava/lang/String; = "1"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "key_camera_id"

.field private static final KEY_CAMERA_SWITCHER:Ljava/lang/String; = "key_camera_switcher"

.field private static final KEY_DEBUG_STEREO_MAIN2:Ljava/lang/String; = "key_stereo_main2"

.field private static final MICRO_LEN_CAMERA_ID:Ljava/lang/String; = "4"

.field private static final SWITCH_CAMERA_DEBUG_PROPERTY:Ljava/lang/String; = "mtk.camera.switch.camera.debug"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final WIDE_ANGLE_CAMERA_ID:Ljava/lang/String; = "3"


# instance fields
.field private mFacing:Ljava/lang/String;

.field private mIdList:[Ljava/lang/String;

.field private mKeyEventListener:Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;

.field private mLastRequestCameraId:Ljava/lang/String;

.field private mPreBackCamera:Ljava/lang/String;

.field private mSwitcherView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/CameraSwitcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mLastRequestCameraId:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mPreBackCamera:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mIdList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/CameraSwitcher;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mSwitcherView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->switchCameraInDebugMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->switchCameraInDebugMain2()V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->switchCameraInNormal()V

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/setting/CameraSwitcher$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher$2;-><init>(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private switchCameraInDebugMain2()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mIdList:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_stereo_main2"

    const-string v3, "0"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[switchCameraInDebugMain2] last cameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mIdList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mIdList:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v6

    if-gt v1, v3, :cond_4

    if-gez v1, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mIdList:[Ljava/lang/String;

    aget-object v1, v2, v1

    sget-object v2, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[switchCameraInDebugMain2] current cameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2, v1}, Lcom/freeme/camera/common/app/IApp;->notifyCameraSelected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[switchCameraInDebugMain2] switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v3, "key_stereo_main2"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v6}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_switcher"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mSwitcherView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_7
    :goto_3
    return-void
.end method

.method private switchCameraInDebugMode()V
    .locals 8

    sget-object v0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[switchCameraInDebugMode]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "mtk.camera.switch.id.debug"

    const-string v1, "back-0"

    invoke-static {v0, v1}, Lcom/mediatek/camera/portability/SystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/freeme/camera/common/utils/CameraUtil;->getCamIdsByFacing(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v4}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lcom/freeme/camera/common/utils/CameraUtil;->getCamIdsByFacing(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "back"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v2, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[switchCameraInDebugMode] backIds is null"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v7, "front"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v4, :cond_1

    sget-object v0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[switchCameraInDebugMode] frontIds is null"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v7, "back"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[switchCameraInDebugMode] invalid back camera index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v2, "front"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[switchCameraInDebugMode] invalid front camera index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    sget-object v2, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[switchCameraInDebugMode] requestCamera "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",resultCameraId "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",mLastRequestCameraId "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mLastRequestCameraId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mLastRequestCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    iput-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mLastRequestCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2, v1}, Lcom/freeme/camera/common/app/IApp;->notifyCameraSelected(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mSwitcherView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v1, "key_camera_switcher"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private switchCameraInNormal()V
    .locals 6

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    const-string v1, "back"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[switchCameraInNormal], switch camera to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_camera_id"

    const-string v3, "0"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    const-string v2, "back"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getCamIdsByFacing(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "3"

    goto :goto_1

    :cond_2
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    const-string v2, "back"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getCamIdsByFacing(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "4"

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    const-string v2, "back"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getCamIdsByFacing(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getCamIdsByFacing(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2, v1}, Lcom/freeme/camera/common/app/IApp;->notifyCameraSelected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v4, "[switchCameraInNormal], switch camera success."

    invoke-static {v2, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_camera_switcher"

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string v2, "key_camera_id"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mSwitcherView:Landroid/view/View;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

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

    const-string v0, "key_camera_switcher"

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {v0}, Lcom/freeme/camera/common/relation/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    const-string p2, "key_camera_switcher"

    const-string p3, "back"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-le p1, p3, :cond_2

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->getCamerasFacing(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->setValue(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->setSupportedPlatformValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->setSupportedEntryValues(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->setEntryValues(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->initView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mSwitcherView:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mSwitcherView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->setSwitchCameraViewEntry(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    if-ne p1, p3, :cond_4

    new-instance p1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p2, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v0, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_3

    const-string p1, "back"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, p3, :cond_4

    const-string p1, "front"

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mFacing:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/CameraSwitcher;->setValue(Ljava/lang/String;)V

    const-string p1, "vendor.debug.camera.single_main2"

    invoke-static {p1, p2}, Lcom/mediatek/camera/portability/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p3, :cond_5

    :try_start_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "camera"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mIdList:[Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mIdList:[Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mIdList:[Ljava/lang/String;

    array-length p3, p1

    :goto_1
    if-ge p2, p3, :cond_5

    aget-object v0, p1, p2

    sget-object v1, Lcom/freeme/camera/feature/setting/CameraSwitcher;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<getCameraIdList> id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_5
    new-instance p1, Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;-><init>(Lcom/freeme/camera/feature/setting/CameraSwitcher;Lcom/freeme/camera/feature/setting/CameraSwitcher$1;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mKeyEventListener:Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mKeyEventListener:Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;

    const p3, 0x7fffffff

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/app/IApp;->registerKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;I)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/CameraSwitcher$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/CameraSwitcher$1;-><init>(Lcom/freeme/camera/feature/setting/CameraSwitcher;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mSwitcherView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/CameraSwitcher;->mKeyEventListener:Lcom/freeme/camera/feature/setting/CameraSwitcher$KeyEventListenerImpl;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unRegisterKeyEventListener(Lcom/freeme/camera/common/app/IApp$KeyEventListener;)V

    return-void
.end method
