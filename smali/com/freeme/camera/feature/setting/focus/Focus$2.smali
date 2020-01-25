.class Lcom/freeme/camera/feature/setting/focus/Focus$2;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;->onSingleTapUp(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

.field final synthetic val$isNeeedCancelAutoFocus:Z

.field final synthetic val$touchCapturede:Ljava/lang/String;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;ZFFLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    iput-boolean p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$isNeeedCancelAutoFocus:Z

    iput p3, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$x:F

    iput p4, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$y:F

    iput-object p5, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$touchCapturede:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$102(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$202(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    iget-boolean v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$isNeeedCancelAutoFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->cancelAutoFocus()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$400(Lcom/freeme/camera/feature/setting/focus/Focus;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$600(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v3

    const-string v4, "auto"

    invoke-virtual {v3, v4, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$x:F

    iget v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$y:F

    invoke-static {v0, v3, v4}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$800(Lcom/freeme/camera/feature/setting/focus/Focus;FF)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$x:F

    iget v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$y:F

    invoke-static {v0, v3, v4}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$900(Lcom/freeme/camera/feature/setting/focus/Focus;FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1100(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object v0

    iget v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$x:F

    float-to-int v3, v3

    iget v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$y:F

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->showActiveFocusAt(II)V

    :cond_2
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1200(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1300(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->updateFocusArea(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    const-string v3, "auto"

    invoke-interface {v0, v3}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->updateFocusMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->autoFocus()V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1500(Lcom/freeme/camera/feature/setting/focus/Focus;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->val$touchCapturede:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1600(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v3, 0x67

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1800(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v3, 0x68

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1900(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v3, 0x69

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2100(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2200(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$2400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->triggerShutterButtonClick(I)V

    :cond_3
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[onSingleTapUp]-"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :catch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$2;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "onSingleTapUp IllegalArgumentException"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
