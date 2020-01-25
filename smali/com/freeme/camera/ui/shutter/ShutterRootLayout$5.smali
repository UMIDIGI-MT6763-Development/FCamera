.class Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;
.super Ljava/lang/Object;
.source "ShutterRootLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/shutter/ShutterRootLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    const-string v0, "0"

    iget-object v1, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$400(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$OnShutterChangeListener;->getCurrentmCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$200(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$900(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iget-object v3, v3, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mNoModeDelayed:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$900(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iget-object v3, v3, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mNoModeDelayed:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$600(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$900(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iget-object v3, v3, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mNoModeDelayedForFrontCamera:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    invoke-static {v0}, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->access$900(Lcom/freeme/camera/ui/shutter/ShutterRootLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/freeme/camera/ui/shutter/ShutterRootLayout$5;->this$0:Lcom/freeme/camera/ui/shutter/ShutterRootLayout;

    iget-object v3, v3, Lcom/freeme/camera/ui/shutter/ShutterRootLayout;->mNoModeDelayedForFrontCamera:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
