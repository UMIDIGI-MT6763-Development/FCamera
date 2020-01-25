.class Lcom/freeme/camera/feature/setting/focus/Focus$7;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Lcom/freeme/camera/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/Focus;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStarted]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->resetConfiguration()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4202(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2800(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4400(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->restoreContinue()V

    :cond_0
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onPreviewStopped]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->resetConfiguration()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2800(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$7;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4202(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    return-void
.end method
