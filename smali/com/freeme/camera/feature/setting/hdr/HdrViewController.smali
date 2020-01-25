.class public Lcom/freeme/camera/feature/setting/hdr/HdrViewController;
.super Ljava/lang/Object;
.source "HdrViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;
    }
.end annotation


# static fields
.field private static final HDR_AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final HDR_ENTRY_LIST_INDEX_0:I = 0x0

.field private static final HDR_ENTRY_LIST_INDEX_1:I = 0x1

.field private static final HDR_ENTRY_LIST_SWITCH_SIZE:I = 0x2

.field private static final HDR_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final HDR_ON_VALUE:Ljava/lang/String; = "on"

.field private static final HDR_PRIORITY:I = 0x14

.field private static final HDR_SHUTTER_PRIORITY:I = 0x3c

.field private static final HDR_VIEW_ADD_QUICK_SWITCH:I = 0x1

.field private static final HDR_VIEW_CLOSE_CHOICE_VIEW:I = 0x4

.field private static final HDR_VIEW_INIT:I = 0x0

.field private static final HDR_VIEW_REMOVE_QUICK_SWITCH:I = 0x2

.field private static final HDR_VIEW_UPDATE_INDICATOR:I = 0x3

.field private static final HDR_VIEW_UPDATE_QUICK_SWITCH_ICON:I = 0x5

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private mChoiceViewLayout:Landroid/view/View;

.field private final mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

.field private mHdrAutoIcon:Landroid/widget/ImageView;

.field private mHdrChoiceView:Landroid/view/View;

.field private final mHdrChoiceViewListener:Landroid/view/View$OnClickListener;

.field private final mHdrEntryListener:Landroid/view/View$OnClickListener;

.field private mHdrEntryView:Landroid/widget/ImageView;

.field private mHdrIndicatorView:Landroid/widget/ImageView;

.field private mHdrOffIcon:Landroid/widget/ImageView;

.field private mHdrOnIcon:Landroid/widget/ImageView;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

.field private final mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/hdr/Hdr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$1;-><init>(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$2;-><init>(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrChoiceViewListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$3;-><init>(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    new-instance p2, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->initHdrEntryView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mChoiceViewLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrAutoIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOnIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/feature/setting/hdr/Hdr;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->updateHdrViewState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->updateHdrIndicator(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->onChoiceViewClosed()V

    return-void
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->initializeHdrChoiceView()V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/hdr/HdrViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->updateChoiceView()V

    return-void
.end method

.method private initHdrEntryView()Landroid/widget/ImageView;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b005f

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b0060

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrIndicatorView:Landroid/widget/ImageView;

    return-object v1
.end method

.method private initializeHdrChoiceView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrChoiceView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mChoiceViewLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0061

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mChoiceViewLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mChoiceViewLayout:Landroid/view/View;

    const v1, 0x7f0900eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrChoiceView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mChoiceViewLayout:Landroid/view/View;

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOnIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mChoiceViewLayout:Landroid/view/View;

    const v1, 0x7f0900ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOffIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mChoiceViewLayout:Landroid/view/View;

    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrAutoIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOffIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOnIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrAutoIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private onChoiceViewClosed()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrChoiceView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->hideQuickSwitcherOption()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->updateHdrViewState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateChoiceView()V
    .locals 4

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0801ac

    const v2, 0x7f08018c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOnIcon:Landroid/widget/ImageView;

    const v3, 0x7f08018f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOffIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrAutoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v0, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdr:Lcom/freeme/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/hdr/Hdr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x7f0801b1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOnIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOffIcon:Landroid/widget/ImageView;

    const v2, 0x7f08018d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrAutoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOnIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrOffIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrAutoIcon:Landroid/widget/ImageView;

    const v1, 0x7f0801ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateHdrEntryView(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHdrEntryView, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryView:Landroid/widget/ImageView;

    const v0, 0x7f08018f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryView:Landroid/widget/ImageView;

    const v0, 0x7f0801ac

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryView:Landroid/widget/ImageView;

    const v0, 0x7f08018c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateHdrIndicator(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrIndicatorView:Landroid/widget/ImageView;

    const/16 v1, 0x14

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->addToIndicatorView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mHdrIndicatorView:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->removeFromIndicatorView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateHdrViewState(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->updateHdrEntryView(Ljava/lang/String;)V

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->updateHdrIndicator(Z)V

    return-void
.end method


# virtual methods
.method public addQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public closeHdrChoiceView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public removeQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showHdrIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showQuickSwitchIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/hdr/HdrViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/hdr/HdrViewController$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
