.class Lcom/freeme/camera/feature/mode/iko/IKOMode$4;
.super Ljava/lang/Object;
.source "IKOMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/iko/IKOMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$4;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOMode$4;->this$0:Lcom/freeme/camera/feature/mode/iko/IKOMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/iko/IKOMode;->access$1300(Lcom/freeme/camera/feature/mode/iko/IKOMode;)Lcom/freeme/camera/common/widget/RotateImageView;

    move-result-object v0

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/widget/RotateImageView;->setImageResource(I)V

    return-void
.end method
