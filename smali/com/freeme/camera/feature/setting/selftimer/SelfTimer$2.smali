.class Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;
.super Ljava/lang/Object;
.source "SelfTimer.java"

# interfaces
.implements Lcom/freeme/camera/feature/setting/selftimer/ISelfTimerViewListener$OnSelfTimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerDone()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onTimerDone]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "self_timer_key"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$402(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$500(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$700(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$602(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;I)I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$800(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->triggerShutterButtonClick(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$900(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/freeme/camera/common/IAppUi;->setPluginVisibility(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$1000(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$602(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;I)I

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->unSupportFrontSLR()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$1100(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    :cond_1
    return-void
.end method

.method public onTimerInterrupt(Z)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$402(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;Z)Z

    invoke-static {}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v2, "[onTimerInterrupt]"

    invoke-static {v0, v2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v2, "self_timer_key"

    const-string v3, "stop"

    invoke-virtual {v0, v2, v3}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$1200(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->setPluginVisibility(Z)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$1300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibilityImmediately(I)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$1400(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$602(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;I)I

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->unSupportFrontSLR()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$1500(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/16 v0, 0xa

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    :cond_2
    return-void
.end method

.method public onTimerStart()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onTimerStart]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$300(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string v1, "self_timer_key"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$402(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$1600(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer$2;->this$0:Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;->access$1700(Lcom/freeme/camera/feature/setting/selftimer/SelfTimer;)Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->setPluginVisibility(Z)V

    return-void
.end method
