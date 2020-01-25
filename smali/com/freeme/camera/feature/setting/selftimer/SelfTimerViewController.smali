.class public Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;
.super Ljava/lang/Object;
.source "SelfTimerViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;
    }
.end annotation


# static fields
.field private static final SELFTIMER_10_VALUE:Ljava/lang/String; = "10"

.field private static final SELFTIMER_2_VALUE:Ljava/lang/String; = "2"

.field private static final SELFTIMER_3_VALUE:Ljava/lang/String; = "3"

.field private static final SELFTIMER_ENTRY_LIST_INDEX_0:I = 0x0

.field private static final SELFTIMER_ENTRY_LIST_INDEX_1:I = 0x1

.field private static final SELFTIMER_ENTRY_LIST_SWITCH_SIZE:I = 0x2

.field private static final SELFTIMER_OFF_VALUE:Ljava/lang/String; = "0"

.field private static final SELFTIMER_PRIORITY:I = 0x28

.field private static final SELFTIMER_SHUTTER_PRIORITY:I = 0x46

.field private static final SELFTIMER_VIEW_ADD_QUICK_SWITCH:I = 0x1

.field private static final SELFTIMER_VIEW_HIDE_CHOICE_VIEW:I = 0x3

.field private static final SELFTIMER_VIEW_INIT:I = 0x0

.field private static final SELFTIMER_VIEW_REMOVE_QUICK_SWITCH:I = 0x2

.field private static final SELFTIMER_VIEW_UPDATE_QUICK_SWITCH_ICON:I = 0x4

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private isFirstInit:Z

.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;

.field private mOptionLayout:Landroid/view/View;

.field private mPreviewRatio:I

.field private final mSelfTimer:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

.field private mSelfTimer10Icon:Landroid/widget/ImageView;

.field private mSelfTimer2Icon:Landroid/widget/ImageView;

.field private mSelfTimer3Icon:Landroid/widget/ImageView;

.field private mSelfTimerChoiceView:Landroid/view/View;

.field private mSelfTimerChoiceViewListener:Landroid/view/View$OnClickListener;

.field private final mSelfTimerEntryListener:Landroid/view/View$OnClickListener;

.field private mSelfTimerEntryView:Landroid/widget/ImageView;

.field private mSelfTimerHint:Lcom/freeme/camera/OnScreenHint;

.field private mSelfTimerOffIcon:Landroid/widget/ImageView;

.field private final mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;Lcom/freeme/camera/common/app/IApp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mPreviewRatio:I

    iput-boolean v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->isFirstInit:Z

    new-instance v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$1;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$2;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerChoiceViewListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$3;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$3;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    new-instance p1, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->initSelfTimerEntryView()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;

    invoke-virtual {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->isFirstInit:Z

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mOptionLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerOffIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/OnScreenHint;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerHint:Lcom/freeme/camera/OnScreenHint;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;Lcom/freeme/camera/OnScreenHint;)Lcom/freeme/camera/OnScreenHint;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerHint:Lcom/freeme/camera/OnScreenHint;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer3Icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mShutterListener:Lcom/freeme/camera/common/IAppUiListener$OnShutterButtonListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerChoiceView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->isFirstInit:Z

    return p0
.end method

.method static synthetic access$700(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->initializeSelfTimerChoiceView()V

    return-void
.end method

.method static synthetic access$800(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->updateTimerLayout()V

    return-void
.end method

.method static synthetic access$900(Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->updateChoiceView()V

    return-void
.end method

.method private initSelfTimerEntryView()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private initializeSelfTimerChoiceView()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerChoiceView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mOptionLayout:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b008c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mOptionLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerChoiceView:Landroid/view/View;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0901a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerOffIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0901a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer3Icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0901a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer10Icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerOffIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer3Icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer10Icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerChoiceViewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private updateChoiceView()V
    .locals 4

    const-string v0, "0"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f080199

    const v2, 0x7f08019b

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerOffIcon:Landroid/widget/ImageView;

    const v3, 0x7f0801a0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer3Icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer10Icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const-string v0, "3"

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-virtual {v3}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x7f08019f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerOffIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer3Icon:Landroid/widget/ImageView;

    const v2, 0x7f08019c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer10Icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerOffIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer3Icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer10Icon:Landroid/widget/ImageView;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private updateTimerLayout()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mOptionLayout:Landroid/view/View;

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/ui/CameraAppUI;

    invoke-virtual {v2}, Lcom/freeme/camera/ui/CameraAppUI;->getPreviewRatio()I

    move-result v2

    iput v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mPreviewRatio:I

    iget v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mPreviewRatio:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

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
    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

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

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideSelfTimerChoiceView()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public removeQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showQuickSwitchIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateSelfTimerEntryView(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateFlashView] currentValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimer:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const-string v0, "10"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryView:Landroid/widget/ImageView;

    const v0, 0x7f08019a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryView:Landroid/widget/ImageView;

    const v0, 0x7f08019c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryView:Landroid/widget/ImageView;

    const v0, 0x7f080198

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mSelfTimerEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimerViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
