.class Lcom/freeme/camera/ui/AnimationManager$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/AnimationManager;->playCaptureAnimation()V
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

    iput-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$8;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/AnimationManager$8;->this$0:Lcom/freeme/camera/ui/AnimationManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/AnimationManager;->access$900(Lcom/freeme/camera/ui/AnimationManager;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
