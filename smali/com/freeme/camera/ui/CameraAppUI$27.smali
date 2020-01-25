.class Lcom/freeme/camera/ui/CameraAppUI$27;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->removeSwitchWideAngleViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$27;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$27;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$2700(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/SwitchWideAngleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/ui/SwitchWideAngleManager;->removeViewEntry()V

    return-void
.end method
