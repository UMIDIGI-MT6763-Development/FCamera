.class Lcom/freeme/camera/feature/setting/scenemode/SceneMode$1;
.super Ljava/lang/Object;
.source "SceneMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->onSceneDetected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/scenemode/SceneMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/scenemode/SceneMode$1;->this$0:Lcom/freeme/camera/feature/setting/scenemode/SceneMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/scenemode/SceneMode;->access$000(Lcom/freeme/camera/feature/setting/scenemode/SceneMode;)Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/setting/ICameraSetting$ISettingChangeRequester;->sendSettingChangeRequest()V

    return-void
.end method
