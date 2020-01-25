.class public Lcom/freeme/camera/ui/photo/IntentPhotoUi;
.super Ljava/lang/Object;
.source "IntentPhotoUi.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi;


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIAppUi:Lcom/freeme/camera/common/IAppUi;

.field private mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

.field private mIsShown:Z

.field private mOkButtonClickListener:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;

.field private mOkButtonListener:Landroid/view/View$OnClickListener;

.field private mRetakeButtonClickListener:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;

.field private mRetakeListener:Landroid/view/View$OnClickListener;

.field private mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/photo/IntentPhotoUi;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/freeme/camera/common/IAppUi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/freeme/camera/ui/photo/IntentPhotoUi$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/photo/IntentPhotoUi$1;-><init>(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mOkButtonListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/freeme/camera/ui/photo/IntentPhotoUi$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/photo/IntentPhotoUi$2;-><init>(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mRetakeListener:Landroid/view/View$OnClickListener;

    sget-object v0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[IntentPhotoUi] Construct"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mViewGroup:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {p3}, Lcom/freeme/camera/common/IAppUi;->getReviewUI()Lcom/freeme/camera/common/mode/IReviewUI;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    new-instance p1, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    invoke-direct {p1}, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mOkButtonClickListener:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/freeme/camera/ui/photo/IntentPhotoUi;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIsShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)Lcom/freeme/camera/common/mode/IReviewUI;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)Lcom/freeme/camera/common/IAppUi;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIAppUi:Lcom/freeme/camera/common/IAppUi;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/photo/IntentPhotoUi;)Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mRetakeButtonClickListener:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIsShown:Z

    iget-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    invoke-interface {v0}, Lcom/freeme/camera/common/mode/IReviewUI;->hideReviewUI()V

    return-void
.end method

.method public isShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIsShown:Z

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    invoke-interface {v0, p1}, Lcom/freeme/camera/common/mode/IReviewUI;->updateOrientation(I)V

    return-void
.end method

.method public onPictureReceived([B)V
    .locals 1

    sget-object p1, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[onPictureReceived]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    iget-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/mode/IReviewUI;->initReviewUI(Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIsShown:Z

    iget-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/mode/IReviewUI;->showReviewUI(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOkButtonClickListener(Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mOkButtonClickListener:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$OkButtonClickListener;

    iget-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    iget-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mOkButtonListener:Landroid/view/View$OnClickListener;

    iput-object v0, p1, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->saveListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRetakeButtonClickListener(Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mRetakeButtonClickListener:Lcom/freeme/camera/common/mode/photo/intent/IIntentPhotoUi$RetakeButtonClickListener;

    iget-object p1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    iget-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mRetakeListener:Landroid/view/View$OnClickListener;

    iput-object v0, p1, Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;->retakeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIsShown:Z

    iget-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    iget-object v1, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/IReviewUI;->initReviewUI(Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/photo/IntentPhotoUi;->mIReviewUI:Lcom/freeme/camera/common/mode/IReviewUI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/mode/IReviewUI;->showReviewUI(Landroid/graphics/Bitmap;)V

    return-void
.end method
