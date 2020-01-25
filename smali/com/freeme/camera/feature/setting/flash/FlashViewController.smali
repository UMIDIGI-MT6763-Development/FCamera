.class public Lcom/freeme/camera/feature/setting/flash/FlashViewController;
.super Ljava/lang/Object;
.source "FlashViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;
    }
.end annotation


# static fields
.field protected static final BACK_CAMERA_ID:Ljava/lang/String; = "0"

.field private static final FLASH_AUTO_VALUE:Ljava/lang/String; = "auto"

.field private static final FLASH_ENTRY_LIST_INDEX_0:I = 0x0

.field private static final FLASH_ENTRY_LIST_INDEX_1:I = 0x1

.field private static final FLASH_ENTRY_LIST_SWITCH_SIZE:I = 0x2

.field private static final FLASH_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final FLASH_ON_VALUE:Ljava/lang/String; = "on"

.field private static final FLASH_PRIORITY:I = 0x1e

.field private static final FLASH_SHUTTER_PRIORITY:I = 0x46

.field private static final FLASH_VIEW_ADD_QUICK_SWITCH:I = 0x1

.field private static final FLASH_VIEW_HIDE_CHOICE_VIEW:I = 0x3

.field private static final FLASH_VIEW_INIT:I = 0x0

.field private static final FLASH_VIEW_REMOVE_QUICK_SWITCH:I = 0x2

.field private static final FLASH_VIEW_UPDATE_QUICK_SWITCH_ICON:I = 0x4

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private isFirstInit:Z

.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private final mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

.field private mFlashAutoIcon:Landroid/widget/ImageView;

.field private mFlashChoiceView:Landroid/view/View;

.field private mFlashChoiceViewListener:Landroid/view/View$OnClickListener;

.field private final mFlashEntryListener:Landroid/view/View$OnClickListener;

.field public mFlashEntryView:Landroid/widget/ImageView;

.field private mFlashIcon:Lcom/freeme/camera/common/widget/RotateImageView;

.field private mFlashIndicatorView:Landroid/widget/ImageView;

.field private mFlashOffIcon:Landroid/widget/ImageView;

.field private mFlashOnIcon:Landroid/widget/ImageView;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;

.field private mOptionLayout:Landroid/view/View;

.field private mPreviewRatio:I

.field private final mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/flash/FlashViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/flash/Flash;Lcom/freeme/camera/common/app/IApp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mPreviewRatio:I

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->isFirstInit:Z

    new-instance v1, Lcom/freeme/camera/feature/setting/flash/FlashViewController$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$2;-><init>(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$3;-><init>(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashChoiceViewListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/freeme/camera/feature/setting/flash/FlashViewController$4;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$4;-><init>(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance p1, Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/flash/FlashViewController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->isFirstInit:Z

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/feature/setting/flash/Flash;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mOptionLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashAutoIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOnIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Landroid/widget/ImageView;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->initFlashEntryView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashChoiceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->isFirstInit:Z

    return p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/setting/flash/FlashViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->isFirstInit:Z

    return p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->initializeFlashChoiceView()V

    return-void
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->updateFlashViewLayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->updateChoiceView()V

    return-void
.end method

.method private initFlashEntryView()Landroid/widget/ImageView;
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b004f

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b0050

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashIndicatorView:Landroid/widget/ImageView;

    return-object v1
.end method

.method private initializeFlashChoiceView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashChoiceView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mOptionLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0051

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mOptionLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashChoiceView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0900cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOnIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0900cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOffIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashAutoIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOffIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOnIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashAutoIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private updateChoiceView()V
    .locals 4

    const-string v0, "on"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f080186

    const v2, 0x7f080188

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOnIcon:Landroid/widget/ImageView;

    const v3, 0x7f08018b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOffIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashAutoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v0, "off"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x7f08018a

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOnIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOffIcon:Landroid/widget/ImageView;

    const v2, 0x7f080189

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashAutoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOnIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashOffIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashAutoIcon:Landroid/widget/ImageView;

    const v1, 0x7f080187

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateFlashIndicator(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashIndicatorView:Landroid/widget/ImageView;

    const/16 v1, 0x1e

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->addToIndicatorView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashIndicatorView:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->removeFromIndicatorView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateFlashViewLayout()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/freeme/camera/ui/CameraAppUI;->getPreviewRatio()I

    move-result v2

    iput v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mPreviewRatio:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mPreviewRatio:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070065

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070066

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/flash/Flash;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected getKeyEventListener()Lcom/freeme/camera/common/app/IApp$KeyEventListener;
    .locals 1

    new-instance v0, Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$1;-><init>(Lcom/freeme/camera/feature/setting/flash/FlashViewController;)V

    return-object v0
.end method

.method public hideFlashChoiceView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public removeQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setFlashIconEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashIcon:Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashIcon:Lcom/freeme/camera/common/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public showQuickSwitchIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/flash/FlashViewController$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateFlashEntryView(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFlashView] currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlash:Lcom/freeme/camera/feature/setting/flash/Flash;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/flash/Flash;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    const v0, 0x7f08018b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    const v0, 0x7f080187

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    const v0, 0x7f080188

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mFlashEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/flash/FlashViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
