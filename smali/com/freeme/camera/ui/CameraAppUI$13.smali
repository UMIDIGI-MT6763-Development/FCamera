.class Lcom/freeme/camera/ui/CameraAppUI$13;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$type:Lcom/freeme/camera/common/IAppUi$AnimationType;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/common/IAppUi$AnimationType;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$13;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$13;->val$type:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$13;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1700(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/AnimationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$13;->val$type:Lcom/freeme/camera/common/IAppUi$AnimationType;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/ui/AnimationManager;->animationEnd(Lcom/freeme/camera/common/IAppUi$AnimationType;)V

    return-void
.end method
