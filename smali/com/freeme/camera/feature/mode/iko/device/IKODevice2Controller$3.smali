.class Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller$3;
.super Ljava/lang/Object;
.source "IKODevice2Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller;->openTorch(ZLcom/freeme/camera/common/widget/RotateImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller;

.field final synthetic val$rotateImageView:Lcom/freeme/camera/common/widget/RotateImageView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller;Lcom/freeme/camera/common/widget/RotateImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller$3;->this$0:Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller;

    iput-object p2, p0, Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller$3;->val$rotateImageView:Lcom/freeme/camera/common/widget/RotateImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/device/IKODevice2Controller$3;->val$rotateImageView:Lcom/freeme/camera/common/widget/RotateImageView;

    const v1, 0x7f080191

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    return-void
.end method
