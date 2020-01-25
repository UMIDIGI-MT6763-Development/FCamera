.class public Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;
.super Ljava/lang/Object;
.source "WhiteBalanceIndicatorView.java"


# static fields
.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VIEW_PRIORITY:I = 0x8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mOriginalEntryValues:[Ljava/lang/String;

.field private mOriginalIndicator:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mOriginalEntryValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030013

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mOriginalIndicator:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mOriginalIndicator:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mOriginalEntryValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mIndicatorView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)[I
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mOriginalIndicator:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getViewPriority()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public updateIndicator(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateIndicator], scene:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView$1;-><init>(Lcom/freeme/camera/feature/setting/whitebalance/WhiteBalanceIndicatorView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
