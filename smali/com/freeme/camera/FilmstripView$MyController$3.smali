.class Lcom/freeme/camera/FilmstripView$MyController$3;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView$MyController;-><init>(Lcom/freeme/camera/FilmstripView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/FilmstripView$MyController;

.field final synthetic val$this$0:Lcom/freeme/camera/FilmstripView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$MyController;Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->val$this$0:Lcom/freeme/camera/FilmstripView;

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

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2700(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2800(Lcom/freeme/camera/FilmstripView;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->zoomAtIndexChanged()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2500(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$000(Lcom/freeme/camera/FilmstripView;)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$3;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$2600(Lcom/freeme/camera/FilmstripView;)V

    :cond_1
    :goto_0
    return-void
.end method
