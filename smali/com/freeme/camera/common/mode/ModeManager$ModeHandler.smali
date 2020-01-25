.class Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;
.super Landroid/os/Handler;
.source "ModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/ModeManager;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/mode/ModeManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mMode:Lcom/freeme/camera/common/mode/ICameraMode;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    iget-object v1, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/freeme/camera/common/mode/ICameraMode;->onCameraSelected(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/ModeManager;->access$702(Lcom/freeme/camera/common/mode/ModeManager;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mObj:Ljava/lang/Object;

    check-cast v0, Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/mode/ICameraMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mMode:Lcom/freeme/camera/common/mode/ICameraMode;

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/ICameraMode;->unInit()V

    goto :goto_0

    :pswitch_3
    iget-object p1, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mObj:Ljava/lang/Object;

    check-cast v0, Lcom/freeme/camera/common/mode/DeviceUsage;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/mode/ICameraMode;->resume(Lcom/freeme/camera/common/mode/DeviceUsage;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/ModeManager$MsgParam;->mMode:Lcom/freeme/camera/common/mode/ICameraMode;

    iget-object v1, p0, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/ModeManager;->access$600(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager$ModeHandler;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {v2}, Lcom/freeme/camera/common/mode/ModeManager;->access$300(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/ICameraContext;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/freeme/camera/common/mode/ICameraMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V

    :goto_0
    return-void

    :cond_1
    :goto_1
    invoke-static {}, Lcom/freeme/camera/common/mode/ModeManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[handleMessage] null mode!!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
