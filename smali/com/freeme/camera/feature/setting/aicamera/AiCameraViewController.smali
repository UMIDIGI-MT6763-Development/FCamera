.class public Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;
.super Ljava/lang/Object;
.source "AiCameraViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;
    }
.end annotation


# static fields
.field private static final AICAMERA_ENTRY_LIST_INDEX_0:I = 0x0

.field private static final AICAMERA_ENTRY_LIST_INDEX_1:I = 0x1

.field private static final AICAMERA_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final AICAMERA_ON_VALUE:Ljava/lang/String; = "on"

.field private static final AICAMERA_PRIORITY:I = 0xf

.field private static final AICAMERA_SHUTTER_PRIORITY:I = 0x3c

.field private static final AICAMERA_VIEW_ADD_QUICK_SWITCH:I = 0x1

.field private static final AICAMERA_VIEW_INIT:I = 0x0

.field private static final AICAMERA_VIEW_REFRESH_QUICK_SWITCH_ICON:I = 0x5

.field private static final AICAMERA_VIEW_REMOVE_QUICK_SWITCH:I = 0x2

.field private static final AICAMERA_VIEW_UPDATE_INDICATOR:I = 0x3

.field private static final AICAMERA_VIEW_UPDATE_QUICK_SWITCH_ICON:I = 0x4

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private isTipNeedShow:Ljava/lang/Boolean;

.field private final mAiCamera:Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

.field private final mAiCameraEntryListener:Landroid/view/View$OnClickListener;

.field private mAiCameraEntryView:Landroid/widget/ImageView;

.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

.field private tipDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/aicamera/AiCamera;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->isTipNeedShow:Ljava/lang/Boolean;

    new-instance v0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$1;-><init>(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCameraEntryListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCamera:Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    new-instance p2, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCameraEntryView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCameraEntryView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/widget/ImageView;
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->initAiCameraEntryView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Lcom/freeme/camera/feature/setting/aicamera/AiCamera;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCamera:Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->updateAiCameraViewState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$602(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->isTipNeedShow:Ljava/lang/Boolean;

    return-object p1
.end method

.method private initAiCameraEntryView()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCameraEntryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private showAiCameraTip(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->isTipNeedShow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "off"

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCamera:Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->tip_status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f100004

    invoke-direct {v0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0022

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const v0, 0x7f09002b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$2;-><init>(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$3;-><init>(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method private showAicameraStartOn()V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0f0051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/common/OnScreenToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-static {}, Lcom/freeme/camera/common/OnScreenToast;->getToast()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/16 v3, 0x87

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private updateAiCameraEntryView(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCameraEntryView:Landroid/widget/ImageView;

    const v0, 0x7f080183

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCameraEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCamera:Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    iget-object p1, p1, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->isSettingRestore:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->showAiCameraTip(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->showAicameraStartOn()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->isTipNeedShow:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCamera:Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->isSettingRestore:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCameraEntryView:Landroid/widget/ImageView;

    const v0, 0x7f080182

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mAiCameraEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->cancelAicameraStartOn()V

    :goto_0
    return-void
.end method

.method private updateAiCameraViewState(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->updateAiCameraEntryView(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public cancelAicameraStartOn()V
    .locals 0

    invoke-static {}, Lcom/freeme/camera/common/OnScreenToast;->cancelToast()V

    return-void
.end method

.method public hideAiCameraTipDialog()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[hideAiCameraTipDialog]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->tipDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public refreshQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public removeQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showAiCameraIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showQuickSwitchIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
