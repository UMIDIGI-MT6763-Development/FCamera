.class public Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;
.super Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;
.source "Device2Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/Device2Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/Device2Controller;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/mode/Device2Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;->this$0:Lcom/freeme/camera/common/mode/Device2Controller;

    invoke-direct {p0}, Lcom/freeme/camera/common/device/v2/Camera2Proxy$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;->this$0:Lcom/freeme/camera/common/mode/Device2Controller;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/Device2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onDisconnected(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;->this$0:Lcom/freeme/camera/common/mode/Device2Controller;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/Device2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(Lcom/freeme/camera/common/device/v2/Camera2Proxy;I)V
    .locals 3
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;->this$0:Lcom/freeme/camera/common/mode/Device2Controller;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/Device2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOpened(Lcom/freeme/camera/common/device/v2/Camera2Proxy;)V
    .locals 2
    .param p1    # Lcom/freeme/camera/common/device/v2/Camera2Proxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/freeme/camera/common/mode/Device2Controller$DeviceStateCallback;->this$0:Lcom/freeme/camera/common/mode/Device2Controller;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/Device2Controller;->mModeHandler:Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/freeme/camera/common/mode/Device2Controller$ModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
