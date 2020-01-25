.class Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;
.super Ljava/lang/Object;
.source "CameraLargeMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->onOrientationChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;I)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    iput p2, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->val$orientation:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$4000(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$4100(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$4200(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$4300(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$4400(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->getShutterButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$3800(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {v0, v2, v3}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode$6;->this$0:Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;->access$3900(Lcom/freeme/camera/feature/mode/largemode/CameraLargeMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lcom/freeme/camera/common/IAppUi;->setUIVisibilityImmediately(II)V

    :goto_1
    return-void
.end method
