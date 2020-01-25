.class Lcom/freeme/camera/feature/mode/iko/IKOMode$3;
.super Ljava/lang/Object;
.source "IKOMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOMode;->init(Lcom/freeme/camera/common/app/IApp;Lcom/freeme/camera/common/ICameraContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/IKOMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1600(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/freeme/camera/CameraActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1700(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->hasLowBattery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/OnScreenHint;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/freeme/camera/OnScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/OnScreenHint;->showToast()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/iko/IKOMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1800(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Z

    move-result v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/feature/mode/iko/device/IDeviceController;->openTorch(ZLcom/freeme/camera/common/widget/RotateImageView;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$3;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1800(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1802(Lcom/freeme/camera/feature/mode/iko/IKOMode;Z)Z

    :goto_1
    return-void
.end method
