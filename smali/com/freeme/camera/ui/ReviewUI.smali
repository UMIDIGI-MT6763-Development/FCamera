.class public Lcom/freeme/camera/ui/ReviewUI;
.super Ljava/lang/Object;
.source "ReviewUI.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/IReviewUI;


# static fields
.field private static final ORIENTATION_0:I = 0x0

.field private static final ORIENTATION_180:I = 0xb4

.field private static final ORIENTATION_270:I = 0x10e

.field private static final ORIENTATION_90:I = 0x5a

.field private static final SAVE_DONE_DESCRIPTION:Ljava/lang/String; = "Done"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mApp:Lcom/freeme/camera/common/app/IApp;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mOrientation:I

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mPlayButton:Landroid/widget/ImageView;

.field private mRetakeButton:Landroid/widget/ImageView;

.field private mReviewImage:Landroid/widget/ImageView;

.field private mReviewRootView:Landroid/view/View;

.field private mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

.field private mSaveButton:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/ReviewUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/ReviewUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/ReviewUI;->mReviewRootView:Landroid/view/View;

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/freeme/camera/ui/ReviewUI;->mParentViewGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mParentViewGroup:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/ReviewUI;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mReviewImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/freeme/camera/ui/ReviewUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mReviewImage:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/freeme/camera/ui/ReviewUI;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/app/IApp;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mApp:Lcom/freeme/camera/common/app/IApp;

    return-object p0
.end method

.method static synthetic access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/ui/ReviewUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/freeme/camera/ui/ReviewUI;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mReviewRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/freeme/camera/ui/ReviewUI;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mReviewRootView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/freeme/camera/ui/ReviewUI;)Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    return-object p0
.end method

.method static synthetic access$600(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mPlayButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/freeme/camera/ui/ReviewUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mPlayButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mSaveButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/freeme/camera/ui/ReviewUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mSaveButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/freeme/camera/ui/ReviewUI;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mRetakeButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/freeme/camera/ui/ReviewUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mRetakeButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$900(Lcom/freeme/camera/ui/ReviewUI;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/ReviewUI;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$902(Lcom/freeme/camera/ui/ReviewUI;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method


# virtual methods
.method public hideReviewUI()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/ui/ReviewUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[hideReviewUI]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/ReviewUI;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/ui/ReviewUI$2;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/ReviewUI$2;-><init>(Lcom/freeme/camera/ui/ReviewUI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initReviewUI(Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mReviewSpec:Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;

    return-void
.end method

.method public showReviewUI(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mBitmap:Landroid/graphics/Bitmap;

    sget-object p1, Lcom/freeme/camera/ui/ReviewUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[showReviewUI]"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/freeme/camera/ui/ReviewUI$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/ReviewUI$1;-><init>(Lcom/freeme/camera/ui/ReviewUI;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateOrientation(I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/ReviewUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateOrientation] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/freeme/camera/ui/ReviewUI;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mOrientation:I

    iget-object p1, p0, Lcom/freeme/camera/ui/ReviewUI;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/freeme/camera/ui/ReviewUI$3;

    invoke-direct {v0, p0}, Lcom/freeme/camera/ui/ReviewUI$3;-><init>(Lcom/freeme/camera/ui/ReviewUI;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
