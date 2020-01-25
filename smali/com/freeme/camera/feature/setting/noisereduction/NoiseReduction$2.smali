.class Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;
.super Ljava/lang/Object;
.source "NoiseReduction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->refreshViewEntry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->access$000(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->access$000(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView;

    move-result-object v0

    const-string v1, "on"

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v2}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView;->setChecked(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->access$000(Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;)Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction$2;->this$0:Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReduction;->getEntryValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/freeme/camera/feature/setting/noisereduction/NoiseReductionSettingView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
