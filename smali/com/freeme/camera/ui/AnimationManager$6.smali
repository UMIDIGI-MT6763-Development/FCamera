.class Lcom/freeme/camera/ui/AnimationManager$6;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/AnimationManager;->playSwitchCameraAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/AnimationManager;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/AnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$6;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/ui/AnimationManager;->access$300()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "fade out animation end"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$6;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$500(Lcom/freeme/camera/ui/AnimationManager;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$6;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$6;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$200(Lcom/freeme/camera/ui/AnimationManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f020002

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    check-cast p1, Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/freeme/camera/ui/AnimationManager$6;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {v0}, Lcom/freeme/camera/ui/AnimationManager;->access$400(Lcom/freeme/camera/ui/AnimationManager;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
