.class Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3$1;
.super Ljava/lang/Object;
.source "NoiseReduction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;->onItemViewClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3$1;->this$1:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;

    iput-object p2, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3$1;->this$1:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3$1;->this$1:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->access$200(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3$1;->this$1:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;

    iget-object v0, v0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$3;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->access$200(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    :cond_0
    return-void
.end method
