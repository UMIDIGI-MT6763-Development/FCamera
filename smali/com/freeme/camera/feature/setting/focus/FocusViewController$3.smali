.class Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;
.super Ljava/lang/Object;
.source "FocusViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/FocusViewController;->stopFocusAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$200(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->isPassiveFocusRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$400(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$500(Lcom/freeme/camera/feature/setting/focus/FocusViewController;[Lcom/freeme/camera/feature/setting/focus/MultiZoneAfView$MultiWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$600(Lcom/freeme/camera/feature/setting/focus/FocusViewController;Z)V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/FocusViewController$3;->this$0:Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->access$000(Lcom/freeme/camera/feature/setting/focus/FocusViewController;)Lcom/freeme/camera/feature/setting/focus/FocusView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusView;->stopFocusAnimations()V

    return-void
.end method
