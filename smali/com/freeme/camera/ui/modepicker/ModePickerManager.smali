.class public Lcom/freeme/camera/ui/modepicker/ModePickerManager;
.super Lcom/freeme/camera/ui/AbstractViewManager;
.source "ModePickerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeSelectedListenerImpl;,
        Lcom/freeme/camera/ui/modepicker/ModePickerManager$FragmentStateListener;,
        Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;,
        Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;
    }
.end annotation


# static fields
.field private static final ITEM_WIDTH_IN_DP:I = 0x1e

.field private static final LEFT_MARGIN_IN_DP:I = 0xb

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final mModeFragmentText:Ljava/lang/String; = "ModePickerFragment"


# instance fields
.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private mCurrentCameraId:Ljava/lang/String;

.field private mCurrentModeName:Ljava/lang/String;

.field private mFragment:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

.field private mIsSettingIconVisible:Z

.field private mModeChangeListener:Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;

.field private mModePickerView:Lcom/freeme/camera/common/widget/RotateImageView;

.field private mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

.field private mSettingClickedListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/AbstractViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    const-string p2, "0"

    iput-object p2, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mCurrentCameraId:Ljava/lang/String;

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mFragment:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Lcom/freeme/camera/ui/modepicker/ModePickerFragment;)Lcom/freeme/camera/ui/modepicker/ModePickerFragment;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mFragment:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->createModePickerList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Lcom/freeme/camera/common/IAppUi$ModeItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->updateModePickerView(Lcom/freeme/camera/common/IAppUi$ModeItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/modepicker/ModePickerManager;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->isCameraIDSupported([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/common/widget/RotateImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModePickerView:Lcom/freeme/camera/common/widget/RotateImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mCurrentModeName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModeChangeListener:Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mSettingClickedListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private createModePickerList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/modepicker/ModeProvider;->getModes2()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/common/IAppUi$ModeItem;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    iget-object v4, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find one mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance v4, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;

    invoke-direct {v4, p0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)V

    iget-object v5, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    iput-object v5, v4, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mName:Ljava/lang/String;

    iget-object v5, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeSelectedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, v4, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mSelectedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeUnselectedIcon:Landroid/graphics/drawable/Drawable;

    iput-object v5, v4, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mUnselectedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mSupportedCameraIds:[Ljava/lang/String;

    iput-object v5, v4, Lcom/freeme/camera/ui/modepicker/ModePickerManager$ModeInfo;->mSupportedCameraIds:[Ljava/lang/String;

    iget v5, v2, Lcom/freeme/camera/common/IAppUi$ModeItem;->mPriority:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private hideModePickerFragment()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ModePickerFragment"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method private isCameraIDSupported([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCameraIDSupported [] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private updateModePickerView(Lcom/freeme/camera/common/IAppUi$ModeItem;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModePickerView:Lcom/freeme/camera/common/widget/RotateImageView;

    const v0, 0x7f0801a2

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModePickerView:Lcom/freeme/camera/common/widget/RotateImageView;

    new-instance v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager$3;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f090129

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModePickerView:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModePickerView:Lcom/freeme/camera/common/widget/RotateImageView;

    return-object v0
.end method

.method public modeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/freeme/camera/ui/AbstractViewManager;->onPause()V

    invoke-direct {p0}, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->hideModePickerFragment()V

    return-void
.end method

.method public onPreviewStarted(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted  previewCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mCurrentCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager$1;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerModeProvider(Lcom/freeme/camera/ui/modepicker/ModeProvider;)V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "registerModeProvider "

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModeProvider:Lcom/freeme/camera/ui/modepicker/ModeProvider;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freeme/camera/ui/AbstractViewManager;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mFragment:Lcom/freeme/camera/ui/modepicker/ModePickerFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerFragment;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setModeChangeListener(Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mModeChangeListener:Lcom/freeme/camera/ui/modepicker/ModePickerManager$OnModeChangedListener;

    return-void
.end method

.method public setSettingClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mSettingClickedListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSettingIconVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mIsSettingIconVisible:Z

    return-void
.end method

.method public updateCurrentModeItem(Lcom/freeme/camera/common/IAppUi$ModeItem;)V
    .locals 2

    iget-object v0, p1, Lcom/freeme/camera/common/IAppUi$ModeItem;->mModeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mCurrentModeName:Ljava/lang/String;

    iget-object v0, p0, Lcom/freeme/camera/ui/modepicker/ModePickerManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/modepicker/ModePickerManager$2;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/ui/modepicker/ModePickerManager$2;-><init>(Lcom/freeme/camera/ui/modepicker/ModePickerManager;Lcom/freeme/camera/common/IAppUi$ModeItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
