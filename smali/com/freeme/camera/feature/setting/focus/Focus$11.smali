.class Lcom/freeme/camera/feature/setting/focus/Focus$11;
.super Ljava/lang/Object;
.source "Focus.java"

# interfaces
.implements Lcom/freeme/camera/common/relation/StatusMonitor$StatusChangeListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged]+ key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x64c6ff8b

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0x30d357b6

    if-eq v0, v1, :cond_2

    const v1, 0x1965e0fd

    if-eq v0, v1, :cond_1

    const v1, 0x27223a8a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "key_focus_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_1
    const-string v0, "key_exposure_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_2
    const-string v0, "key_continuous_shot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "key_face_exist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$5200(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string p2, "key_focus_state"

    const-string v0, "ACTIVE_FOCUSED"

    invoke-virtual {p1, p2, v0}, Lcom/freeme/camera/common/relation/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p1, "stop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$5000(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1400(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/feature/setting/focus/Focus$11$2;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/setting/focus/Focus$11$2;-><init>(Lcom/freeme/camera/feature/setting/focus/Focus$11;)V

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/focus/Focus$ModeHandler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1, v3}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$5002(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1, v2}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$5102(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4902(Lcom/freeme/camera/feature/setting/focus/Focus;Z)Z

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$500(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/FocusViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/focus/FocusViewController;->clearFocusUi()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$AfModeState;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$300(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/feature/setting/focus/IFocus$Listener;->updateFocusCallback()V

    goto :goto_2

    :pswitch_3
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    sget-object p2, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->STATE_LOCKING:Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4700(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/freeme/camera/feature/setting/focus/IFocus$LockState;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p2, p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$4800(Lcom/freeme/camera/feature/setting/focus/Focus;Z)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1000(Lcom/freeme/camera/feature/setting/focus/Focus;)Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[onStatusChanged]- mNeedShowFocusUi "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/focus/Focus$11;->this$0:Lcom/freeme/camera/feature/setting/focus/Focus;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/focus/Focus;->access$1100(Lcom/freeme/camera/feature/setting/focus/Focus;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
