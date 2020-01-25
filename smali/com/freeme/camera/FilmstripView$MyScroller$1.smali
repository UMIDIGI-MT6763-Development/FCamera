.class Lcom/freeme/camera/FilmstripView$MyScroller$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripView$MyScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/FilmstripView$MyScroller;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$MyScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyScroller$1;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller$1;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5000(Lcom/freeme/camera/FilmstripView$MyScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller$1;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5100(Lcom/freeme/camera/FilmstripView$MyScroller;)Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/FilmstripView$MyScroller$Listener;->onScrollEnd()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller$1;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5100(Lcom/freeme/camera/FilmstripView$MyScroller;)Lcom/freeme/camera/FilmstripView$MyScroller$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/FilmstripView$MyScroller$1;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {v1}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5000(Lcom/freeme/camera/FilmstripView$MyScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyScroller$1;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5000(Lcom/freeme/camera/FilmstripView$MyScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/FilmstripView$MyScroller$Listener;->onScrollUpdate(II)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller$1;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5200(Lcom/freeme/camera/FilmstripView$MyScroller;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyScroller$1;->this$0:Lcom/freeme/camera/FilmstripView$MyScroller;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView$MyScroller;->access$5200(Lcom/freeme/camera/FilmstripView$MyScroller;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
