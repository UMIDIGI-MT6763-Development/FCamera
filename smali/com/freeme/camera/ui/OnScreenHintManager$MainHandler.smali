.class Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;
.super Landroid/os/Handler;
.source "OnScreenHintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/OnScreenHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/OnScreenHintManager;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/ui/OnScreenHintManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$600(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$200(Lcom/freeme/camera/ui/OnScreenHintManager;)Lcom/freeme/camera/common/IAppUi$HintInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/ui/OnScreenHintManager$MainHandler;->this$0:Lcom/freeme/camera/ui/OnScreenHintManager;

    invoke-static {p1}, Lcom/freeme/camera/ui/OnScreenHintManager;->access$100(Lcom/freeme/camera/ui/OnScreenHintManager;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
