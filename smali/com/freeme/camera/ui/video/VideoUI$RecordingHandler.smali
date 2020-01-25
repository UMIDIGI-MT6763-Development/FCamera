.class Lcom/freeme/camera/ui/video/VideoUI$RecordingHandler;
.super Landroid/os/Handler;
.source "VideoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/video/VideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/video/VideoUI;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/video/VideoUI;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI$RecordingHandler;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

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
    iget-object p1, p0, Lcom/freeme/camera/ui/video/VideoUI$RecordingHandler;->this$0:Lcom/freeme/camera/ui/video/VideoUI;

    invoke-static {p1}, Lcom/freeme/camera/ui/video/VideoUI;->access$800(Lcom/freeme/camera/ui/video/VideoUI;)V

    :goto_0
    return-void
.end method
