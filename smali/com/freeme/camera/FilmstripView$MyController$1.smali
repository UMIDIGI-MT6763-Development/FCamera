.class Lcom/freeme/camera/FilmstripView$MyController$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/freeme/camera/FilmstripView$MyScroller$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/FilmstripView$MyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/FilmstripView$MyController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView$MyController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollEnd()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/FilmstripView$MyController;->access$2002(Lcom/freeme/camera/FilmstripView$MyController;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object v0, v0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object v0, v0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$2100(Lcom/freeme/camera/FilmstripView;)V

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object v0, v0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$2200(Lcom/freeme/camera/FilmstripView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object v0, v0, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    iget-object v2, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object v2, v2, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/freeme/camera/FilmstripView;->access$2300(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    invoke-virtual {v0}, Lcom/freeme/camera/FilmstripView$MyController;->goToFullScreen()V

    :cond_1
    return-void
.end method

.method public onScrollUpdate(II)V
    .locals 0

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p2, p2, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2, p1}, Lcom/freeme/camera/FilmstripView;->access$1802(Lcom/freeme/camera/FilmstripView;I)I

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$1900(Lcom/freeme/camera/FilmstripView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p1}, Lcom/freeme/camera/FilmstripView;->access$400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/FilmstripView$MyController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/freeme/camera/FilmstripView$MyController;->stopScrolling(Z)Z

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/FilmstripView$MyController$1;->this$1:Lcom/freeme/camera/FilmstripView$MyController;

    iget-object p1, p1, Lcom/freeme/camera/FilmstripView$MyController;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-virtual {p1}, Lcom/freeme/camera/FilmstripView;->invalidate()V

    return-void
.end method
