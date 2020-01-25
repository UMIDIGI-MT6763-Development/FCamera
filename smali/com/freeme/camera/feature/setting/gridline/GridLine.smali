.class public Lcom/freeme/camera/feature/setting/gridline/GridLine;
.super Lcom/freeme/camera/common/setting/SettingBase;
.source "GridLine.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView$OnGridLineClickListener;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mFeatureRootView:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

.field private mGridLines:Lcom/freeme/camera/ui/GridLines;

.field private mIsGridLineSupported:Z

.field private mIsThirdParty:Z

.field private mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

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

    const-class v1, Lcom/freeme/camera/feature/setting/gridline/GridLine;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freeme/camera/common/setting/SettingBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mIsGridLineSupported:Z

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mIsThirdParty:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSupportValues:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mFeatureRootView:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/gridline/GridLine;Lcom/freeme/camera/common/widget/PreviewFrameLayout;)Lcom/freeme/camera/common/widget/PreviewFrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mFeatureRootView:Lcom/freeme/camera/common/widget/PreviewFrameLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/ui/GridLines;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mGridLines:Lcom/freeme/camera/ui/GridLines;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/feature/setting/gridline/GridLine;Lcom/freeme/camera/ui/GridLines;)Lcom/freeme/camera/ui/GridLines;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mGridLines:Lcom/freeme/camera/ui/GridLines;

    return-object p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/gridline/GridLine;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method private addGridLines()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine$1;-><init>(Lcom/freeme/camera/feature/setting/gridline/GridLine;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initSettingValue()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mIsGridLineSupported:Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSupportValues:Ljava/util/List;

    const-string v1, "on"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSupportValues:Ljava/util/List;

    const-string v1, "off"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->setSupportedPlatformValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->setSupportedEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSupportValues:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->setEntryValues(Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method private removeGridLines()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/gridline/GridLine$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine$2;-><init>(Lcom/freeme/camera/feature/setting/gridline/GridLine;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addViewEntry()V
    .locals 2

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mIsGridLineSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    invoke-virtual {v0, p0}, Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;->setGridLineOnClickListener(Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView$OnGridLineClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->addSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public getCaptureRequestConfigure()Lcom/freeme/camera/common/setting/ICameraSetting$ICaptureRequestConfigure;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_grid_line"

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
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Lcom/freeme/camera/common/setting/ISettingManager$SettingController;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mIsThirdParty:Z

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->initSettingValue()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string p3, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getStoreScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->addGridLines()V

    :cond_2
    return-void
.end method

.method public onGridLineClicked(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onZsdClicked], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->addGridLines()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->removeGridLines()V

    :goto_1
    return-void
.end method

.method public overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mIsGridLineSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/freeme/camera/common/setting/SettingBase;->overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public postRestrictionAfterInitialized()V
    .locals 0

    return-void
.end method

.method public refreshViewEntry()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;->setChecked(Z)V

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getEntryValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;->setEnabled(Z)V

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->removeGridLines()V

    :cond_1
    return-void
.end method

.method public removeViewEntry()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mSettingView:Lcom/freeme/camera/feature/setting/gridline/GridLineSettingView;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->removeSettingView(Lcom/freeme/camera/common/setting/ICameraSettingView;)V

    return-void
.end method

.method public unInit()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/gridline/GridLine;->mDataStore:Lcom/freeme/camera/common/relation/DataStore;

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/freeme/camera/common/relation/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/gridline/GridLine;->removeGridLines()V

    :cond_0
    return-void
.end method
