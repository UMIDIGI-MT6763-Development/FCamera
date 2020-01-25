.class Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig$1;
.super Ljava/lang/Object;
.source "SceneModeParametersConfig.java"

# interfaces
.implements Lcom/freeme/camera/common/device/v1/CameraProxy$VendorDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->setAsdCallback(Lcom/freeme/camera/common/device/v1/CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataCallback(I[BII)V
    .locals 0

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[onDataCallback], arg1:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->access$100()Ljava/util/Map;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->access$302(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->access$200(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;)Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;

    invoke-static {p2}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->access$300(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->onSceneDetected(Ljava/lang/String;)V

    return-void
.end method

.method public onDataTaken(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDataTaken], message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->access$200(Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;)Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    move-result-object v0

    invoke-static {}, Lcom/freeme/camera/feature/setting/scenemode/SceneModeParametersConfig;->access$100()Ljava/util/Map;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->onSceneDetected(Ljava/lang/String;)V

    return-void
.end method
