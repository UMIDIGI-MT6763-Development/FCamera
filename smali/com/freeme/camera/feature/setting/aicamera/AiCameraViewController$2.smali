.class Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$2;
.super Ljava/lang/Object;
.source "AiCameraViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->showAiCameraTip(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$2;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$2;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$500(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$2;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$500(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$2;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$602(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$2;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$502(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method
