.class Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$3;
.super Ljava/lang/Object;
.source "AiCameraViewController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$3;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$3;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$300(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    move-result-object p1

    const-string p2, "off"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->updateAiCameraTipStauts(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController$3;->this$0:Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;->access$300(Lcom/freeme/camera/feature/setting/aicamera/AiCameraViewController;)Lcom/freeme/camera/feature/setting/aicamera/AiCamera;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/aicamera/AiCamera;->updateAiCameraTipStauts(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
