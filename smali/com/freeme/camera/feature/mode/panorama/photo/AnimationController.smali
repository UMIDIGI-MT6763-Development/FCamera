.class public Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"


# static fields
.field private static final ANIM_DURATION:I = 0xb4

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mApplyCenterArrowAnim:Ljava/lang/Runnable;

.field private mApplyDirectionAnim:Ljava/lang/Runnable;

.field private mCenterArrow:Landroid/view/ViewGroup;

.field private mCenterDotIndex:I

.field private mDirectionDotIndex:I

.field private mDirectionIndicators:[Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>([Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterDotIndex:I

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mDirectionDotIndex:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mApplyCenterArrowAnim:Ljava/lang/Runnable;

    new-instance v0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;-><init>(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)V

    iput-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mApplyDirectionAnim:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterDotIndex:I

    return p0
.end method

.method static synthetic access$108(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterDotIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterDotIndex:I

    return v0
.end method

.method static synthetic access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)[Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mDirectionIndicators:[Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I
    .locals 0

    iget p0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mDirectionDotIndex:I

    return p0
.end method

.method static synthetic access$508(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I
    .locals 2

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mDirectionDotIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mDirectionDotIndex:I

    return v0
.end method


# virtual methods
.method public startCenterAnimation()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startCenterAnimation]..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterDotIndex:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mApplyCenterArrowAnim:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public startDirectionAnimation()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[startDirectionAnimation]..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mDirectionDotIndex:I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mApplyDirectionAnim:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public stopCenterAnimation()V
    .locals 2

    sget-object v0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[stopCenterAnimation]..."

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->mCenterArrow:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
