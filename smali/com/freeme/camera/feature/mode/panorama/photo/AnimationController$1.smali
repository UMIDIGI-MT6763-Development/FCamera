.class Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;
.super Ljava/lang/Object;
.source "AnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDotCount:I

.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->mDotCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->mDotCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$000(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->mDotCount:I

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->mDotCount:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$100(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v1

    if-gt v0, v1, :cond_1

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[run]mApplyCenterArrowAnim return, mDotCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->mDotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCenterDotIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$100(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x5a0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$000(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$000(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$100(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$108(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x168

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$1;->mDotCount:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
