.class Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;
.super Landroid/os/Handler;
.source "Focus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/focus/Focus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/focus/Focus;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/focus/Focus;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[handleMessage] mFocusViewController is null "

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3802(Lcom/freeme/camera/feature/setting/focus/Focus;Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;)Lcom/freeme/camera/feature/setting/focus/IFocusController$AutoFocusState;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3900(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getCurrentCameraMode()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4100(Lcom/freeme/camera/feature/setting/focus/Focus;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler$1;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->stopFocusAnimations()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3500(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->restoreContinue()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3602(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$3700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-static {}, Lcom/freeme/camera/feature/setting/focus/FocusRestriction;->getRestriction()Lcom/freeme/camera/common/relation/RelationGroup;

    move-result-object v0

    const-string v1, "continuous-picture"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/freeme/camera/common/relation/Relation;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/freeme/camera/common/relation/Relation;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
