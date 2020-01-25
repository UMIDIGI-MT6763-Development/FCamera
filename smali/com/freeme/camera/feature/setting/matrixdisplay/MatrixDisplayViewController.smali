.class public Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;
.super Ljava/lang/Object;
.source "MatrixDisplayViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;
    }
.end annotation


# static fields
.field private static final MARTRIX_ENTRY_LIST_INDEX_0:I = 0x0

.field private static final MARTRIX_ENTRY_LIST_INDEX_1:I = 0x1

.field private static final MARTRIX_OFF_VALUE:Ljava/lang/String; = "off"

.field private static final MARTRIX_ON_VALUE:Ljava/lang/String; = "on"

.field private static final MARTRIX_PRIORITY:I = 0xc

.field private static final MARTRIX_SHUTTER_PRIORITY:I = 0x3c

.field private static final MARTRIX_VIEW_ADD_QUICK_SWITCH:I = 0x1

.field private static final MARTRIX_VIEW_INIT:I = 0x0

.field private static final MARTRIX_VIEW_REMOVE_QUICK_SWITCH:I = 0x2

.field private static final MARTRIX_VIEW_UPDATE_INDICATOR:I = 0x3

.field private static final MARTRIX_VIEW_UPDATE_QUICK_SWITCH_ICON:I = 0x4

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private final mApp:Lcom/freeme/camera/common/app/IApp;

.field private mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;

.field private final mMatrixDisplay:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

.field private final mMatrixDisplayEntryListener:Landroid/view/View$OnClickListener;

.field private mMatrixDisplayEntryView:Landroid/widget/ImageView;

.field private mMatrixDisplayIndicatorView:Landroid/widget/ImageView;

.field private mMatrixDisplayOffIcon:Landroid/widget/ImageView;

.field private mMatrixDisplayOnIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$1;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayEntryListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplay:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    new-instance p2, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayEntryView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayEntryView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplay:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->updateMatrixDisplayViewState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->updateMatrixDisplayIndicator(Z)V

    return-void
.end method

.method private updateMatrixDisplayEntryView(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

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

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayEntryView:Landroid/widget/ImageView;

    const v0, 0x7f080193

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayEntryView:Landroid/widget/ImageView;

    const v0, 0x7f080192

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayEntryView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateMatrixDisplayIndicator(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayIndicatorView:Landroid/widget/ImageView;

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->addToIndicatorView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayIndicatorView:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->removeFromIndicatorView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private updateMatrixDisplayViewState(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->updateMatrixDisplayEntryView(Ljava/lang/String;)V

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->updateMatrixDisplayIndicator(Z)V

    return-void
.end method


# virtual methods
.method public addQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public initMatrixDisplayEntryView()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayIndicatorView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayIndicatorView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplay:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    iget-object v1, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->mEntryViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplayIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onMatrixDisplayClick()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplay:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplay:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplay:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMatrixDisplay:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplay;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->updateMatrixDisplayViewState(Ljava/lang/String;)V

    return-void
.end method

.method public removeQuickSwitchIcon()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showMatrixDisplayIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showQuickSwitchIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController;->mMainHandler:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewController$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
