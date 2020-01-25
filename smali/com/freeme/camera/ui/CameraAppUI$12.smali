.class Lcom/freeme/camera/ui/CameraAppUI$12;
.super Ljava/lang/Object;
.source "CameraAppUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/ui/CameraAppUI;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/ui/CameraAppUI;

.field final synthetic val$data:Lcom/freeme/camera/common/IAppUi$AnimationData;

.field final synthetic val$type:Lcom/freeme/camera/common/IAppUi$AnimationType;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/CameraAppUI;Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/CameraAppUI$12;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    iput-object p2, p0, Lcom/freeme/camera/ui/CameraAppUI$12;->val$type:Lcom/freeme/camera/common/IAppUi$AnimationType;

    iput-object p3, p0, Lcom/freeme/camera/ui/CameraAppUI$12;->val$data:Lcom/freeme/camera/common/IAppUi$AnimationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/CameraAppUI$12;->this$0:Lcom/freeme/camera/ui/CameraAppUI;

    invoke-static {v0}, Lcom/freeme/camera/ui/CameraAppUI;->access$1700(Lcom/freeme/camera/ui/CameraAppUI;)Lcom/freeme/camera/ui/AnimationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/CameraAppUI$12;->val$type:Lcom/freeme/camera/common/IAppUi$AnimationType;

    iget-object v2, p0, Lcom/freeme/camera/ui/CameraAppUI$12;->val$data:Lcom/freeme/camera/common/IAppUi$AnimationData;

    invoke-virtual {v0, v1, v2}, Lcom/freeme/camera/ui/AnimationManager;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    return-void
.end method
