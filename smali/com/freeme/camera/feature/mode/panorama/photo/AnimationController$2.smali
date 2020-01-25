.class Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->mDotCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[run]viewGroup is null,return!"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->mDotCount:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->mDotCount:I

    :cond_2
    iget v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->mDotCount:I

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$500(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v1

    if-gt v0, v1, :cond_3

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[run]mApplyDirectionAnim,return,mDotCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->mDotCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCenterDotIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$100(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->mDotCount:I

    mul-int/lit16 v1, v1, 0xb4

    const/4 v3, 0x3

    mul-int/2addr v1, v3

    const/4 v4, 0x2

    div-int/2addr v1, v4

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$500(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v5, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->mDotCount:I

    iget-object v6, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v6}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$500(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    aget-object v1, v1, v4

    iget v4, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->mDotCount:I

    iget-object v5, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v5}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$500(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$400(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)[Landroid/view/ViewGroup;

    move-result-object v1

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$500(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$508(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)I

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController$2;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;->access$300(Lcom/freeme/camera/feature/mode/panorama/photo/AnimationController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
