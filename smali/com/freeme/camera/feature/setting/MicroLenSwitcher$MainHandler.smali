.class Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;
.super Landroid/os/Handler;
.source "MicroLenSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/MicroLenSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/MicroLenSwitcher;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/MicroLenSwitcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/MicroLenSwitcher$MainHandler;->this$0:Lcom/freeme/camera/feature/setting/MicroLenSwitcher;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/MicroLenSwitcher;->access$300(Lcom/freeme/camera/feature/setting/MicroLenSwitcher;)Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/setting/MicrolenViewCtrl;->showToast()V

    :goto_0
    return-void
.end method
