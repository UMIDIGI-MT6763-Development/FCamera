.class Lcom/freeme/camera/ui/CameraAppUI$15;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->showZoomRatioHint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$15;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-boolean p2, p0, Lcom/freeme/camera/ui/CameraAppUI$15;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$15;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1600(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/OnScreenHintManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/freeme/camera/ui/CameraAppUI$15;->val$show:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/OnScreenHintManager;->showZoomRatioHint(Ljava/lang/Boolean;)V

    return-void
.end method
