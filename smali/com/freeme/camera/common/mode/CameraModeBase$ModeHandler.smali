.class public Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;
.super Landroid/os/Handler;
.source "CameraModeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/CameraModeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/CameraModeBase;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/common/mode/CameraModeBase;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;->this$0:Lcom/freeme/camera/common/mode/CameraModeBase;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;->this$0:Lcom/freeme/camera/common/mode/CameraModeBase;

    invoke-virtual {p1}, Lcom/freeme/camera/common/mode/CameraModeBase;->doShutterButtonClick()Z

    :goto_0
    return-void
.end method
