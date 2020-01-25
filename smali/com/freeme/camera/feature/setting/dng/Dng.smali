.class public Lcom/freeme/camera/feature/setting/dng/Dng;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "Dng.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/dng/Dng$ModeHandler;
    }
.end annotation


# static fields
.field private static final KEY_CSHOT:Ljava/lang/String; = "key_continuous_shot"

.field private static final KEY_DNG_SHUTTER_PRIORITY:I = 0x28

.field private static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field private static final MSG_MODE_ON_ITEM_VIEW_CLICK:I = 0x1

.field private static final MSG_MODE_ON_SHUTTER_BUTTON_CLICK:I

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mCameraContext:Lcom/freeme/camera/common/ICameraContext;

.field private mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

.field private mDngSettingViewListener:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$OnDngSettingViewListener;

.field private mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

.field private mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

.field private mImageOrientation:I

.field private volatile mIsDngCreatorBusy:Z

.field private mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

.field private mModeHandler:Landroid/os/Handler;

.field private mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

.field private mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

.field private mShutterDateTaken:J

.field private mSupportValues:Ljava/util/List;
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

    const-class v1, Lcom/freeme/camera/feature/setting/dng/Dng;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mImageOrientation:I

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSupportValues:Ljava/util/List;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-direct {v0}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/Dng$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/dng/Dng$1;-><init>(Lcom/freeme/camera/feature/setting/dng/Dng;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/Dng$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/dng/Dng$2;-><init>(Lcom/freeme/camera/feature/setting/dng/Dng;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/Dng$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/dng/Dng$3;-><init>(Lcom/freeme/camera/feature/setting/dng/Dng;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/dng/Dng$4;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/dng/Dng$4;-><init>(Lcom/freeme/camera/feature/setting/dng/Dng;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngSettingViewListener:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$OnDngSettingViewListener;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/dng/Dng;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getCachedValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/dng/Dng;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mModeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/dng/Dng;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->doShutterButtonClick()V

    return-void
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/dng/Dng;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->doItemViewClick(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/dng/Dng;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->needDngStart(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/dng/Dng;)Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/dng/Dng;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->requestDng()V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/dng/Dng;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mImageOrientation:I

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/dng/Dng;III)Landroid/content/ContentValues;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/freeme/camera/feature/setting/dng/Dng;->updateRawCaptureContentValues(III)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/dng/Dng;)Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mMediaSaverListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/dng/Dng;)Lcom/freeme/camera/common/ICameraContext;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    return-object p0
.end method

.method static synthetic access$902(Lcom/freeme/camera/feature/setting/dng/Dng;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mIsDngCreatorBusy:Z

    return p1
.end method

.method private doItemViewClick(Z)V
    .locals 7

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onItemViewClick], isOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const-string v1, "key_hdr"

    invoke-virtual {p0, v1}, Lcom/freeme/camera/feature/setting/dng/Dng;->removeOverride(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngStatus(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->refreshViewEntry()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->refreshSettingView()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->requestChangeOverrideValues()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->showDngIndicatorView(Z)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->requestDng()V

    return-void
.end method

.method private doShutterButtonClick()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onShutterButtonClick] value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/dng/Dng;->updateDisplayOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mImageOrientation:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mShutterDateTaken:J

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngStatus(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private getCachedValue()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getCachedValue] value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private initDngResBySwitch(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->showDngIndicatorView(Z)V

    sget-object p1, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[initDngResBySwitch] is off"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getCachedValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/dng/Dng;->needDngStart(Ljava/lang/String;)Z

    move-result p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->showDngIndicatorView(Z)V

    return-void
.end method

.method private initSettingValue()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSupportValues:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSupportValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->setEntryValues(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getCachedValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/dng/Dng;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method private needDngStart(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private requestChangeOverrideValues()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->requestChangeOverrideValues()V

    :cond_0
    return-void
.end method

.method private requestDng()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method

.method private updateDisplayOrientation(I)I
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateDisplayOrientation] cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/freeme/camera/common/utils/CameraUtil;->getJpegRotation(IILandroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private updateRawCaptureContentValues(III)Landroid/content/ContentValues;
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getStorageService()Lcom/freeme/camera/common/storage/IStorageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/storage/IStorageService;->getFileDirectory()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v0}, Lcom/freeme/camera/common/ICameraContext;->getLocation()Landroid/location/Location;

    move-result-object v7

    iget-wide v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mShutterDateTaken:J

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/freeme/camera/feature/setting/dng/DngUtils;->getContentValue(JLjava/lang/String;IIILandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addViewEntry()V
    .locals 0

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingDevice2Requester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->getCaptureRequestConfigure(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngStatus(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_dng"

    return-object v0
.end method

.method public getParametersConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingDeviceRequester:Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->getParametersConfigure(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;)Lcom/freeme/camera/common/setting/ICameraSetting$IParametersConfigure;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingChangeRequester:Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    check-cast v0, Lcom/freeme/camera/feature/setting/dng/DngParameterConfig;

    return-object v0
.end method

.method public getPreviewStateCallback()Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mPreviewStateCallback:Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;

    return-object v0
.end method

.method public getSettingType()Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;->PHOTO:Lcom/freeme/camera/common/setting/ICameraSetting$SettingType;

    return-object v0
.end method

.method public init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    new-instance p2, Lcom/freeme/camera/feature/setting/dng/Dng$ModeHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/freeme/camera/feature/setting/dng/Dng$ModeHandler;-><init>(Lcom/freeme/camera/feature/setting/dng/Dng;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mModeHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {p2, p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->init(Lcom/freeme/camera/common/app/IApp;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngSettingViewListener:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$OnDngSettingViewListener;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->setDngSettingViewListener(Lcom/freeme/camera/feature/setting/dng/DngViewCtrl$OnDngSettingViewListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngValueListener:Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngValueUpdateListener(Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/16 p2, 0x28

    invoke-interface {p1, p0, p2}, Lcom/freeme/camera/common/IAppUi;->registerOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;I)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->initSettingValue()V

    return-void
.end method

.method public onModeClosed(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeClosed modeKey :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/freeme/camera/common/setting/SettingBase;->onModeClosed(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->onModeClosed()V

    return-void
.end method

.method public onModeOpened(Ljava/lang/String;Lcom/freeme/camera/common/mode/ICameraMode$ModeType;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeOpened modeKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    sget-object v0, Lcom/freeme/camera/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/freeme/camera/common/mode/ICameraMode$ModeType;

    if-ne v0, p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    invoke-virtual {p0, p1, v0, p2}, Lcom/freeme/camera/feature/setting/dng/Dng;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onShutterButtonClick()Z
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mIsDngCreatorBusy:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[onShutterButtonClick] dng creator busy return"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mModeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1
.end method

.method public onShutterButtonFocus(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShutterButtonLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
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

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[overrideValues], headerKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", supportValues:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", isOn:"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "key_continuous_shot"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, v1, p3}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngStatus(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-virtual {p1, v1}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->notifyOverrideValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getEntryValues()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->setEntryValue(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {p1, v2}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->showDngIndicatorView(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->updateDngView()V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 4

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[postRestrictionAfterInitialized] value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mSettingController:Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    :cond_0
    return-void
.end method

.method public refreshViewEntry()V
    .locals 4

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v3, "[refreshViewEntry], enable"

    invoke-static {v0, v3}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/freeme/camera/feature/setting/dng/Dng;->initDngResBySwitch(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getEntryValues()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->setEntryValue(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/dng/Dng;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngStatus(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freeme/camera/feature/setting/dng/Dng;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[refreshViewEntry], disable"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/freeme/camera/feature/setting/dng/Dng;->initDngResBySwitch(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngDeviceCtrl:Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;

    const-string v1, "off"

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/feature/setting/dng/DngDeviceCtrl;->setDngStatus(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public removeViewEntry()V
    .locals 0

    return-void
.end method

.method public setSettingDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V
    .locals 0
    .param p1    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/freeme/camera/common/setting/SettingBase;->setSettingDeviceRequester(Lcom/freeme/camera/common/setting/ISettingManager$SettingDeviceRequester;Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->setSettingDeviceRequest(Lcom/freeme/camera/common/setting/ISettingManager$SettingDevice2Requester;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mDngViewCtrl:Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/dng/DngViewCtrl;->showDngIndicatorView(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/Dng;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, p0}, Lcom/freeme/camera/common/IAppUi;->unregisterOnShutterButtonListener(Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;)V

    return-void
.end method
