.class Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;
.super Ljava/lang/Object;
.source "ShutterSpeedIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_INDICATOR:I = 0x0

.field private static final SHUTTER_SPEED_INDICATOR_PRIORITY:I = 0x32

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mMainHandler:Landroid/os/Handler;

.field private mOriginalEntryValues:[Ljava/lang/String;

.field private mOriginalIndicator:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView$MainHandler;-><init>(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mOriginalEntryValues:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mOriginalIndicator:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mOriginalIndicator:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mOriginalEntryValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mIndicatorView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)[I
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mOriginalIndicator:[I

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mIndicatorView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getViewPriority()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public updateIndicator(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/shutterspeed/ShutterSpeedIndicatorView;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
