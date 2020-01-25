.class Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;
.super Ljava/lang/Object;
.source "ModeManager.java"

# interfaces
.implements Lcom/freeme/camera/common/loader/FeatureProvider$FeatureLoadDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/ModeManager;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/common/mode/ModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/common/mode/ModeManager;Lcom/freeme/camera/common/mode/ModeManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;-><init>(Lcom/freeme/camera/common/mode/ModeManager;)V

    return-void
.end method


# virtual methods
.method public onBuildInLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/mode/ModeManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onBuildInLoadDone]+ api:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current api:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {v2}, Lcom/freeme/camera/common/mode/ModeManager;->access$200(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",camId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/ModeManager;->access$200(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/ModeManager;->access$300(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/ICameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/ModeManager;->access$200(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/loader/FeatureProvider;->getAllModeItems(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/ModeManager;->access$400(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/IAppUi;->registerMode(Ljava/util/List;)V

    iget-object p2, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/ModeManager;->access$400(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/ModeManager;->access$500(Lcom/freeme/camera/common/mode/ModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/IAppUi;->updateCurrentMode(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/mode/ModeManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onBuildInLoadDone]- modes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPluginLoadDone(Ljava/lang/String;Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/mode/ModeManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onPluginLoadDone]+ api:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", current api:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {v2}, Lcom/freeme/camera/common/mode/ModeManager;->access$200(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",camId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/ModeManager;->access$200(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/ModeManager;->access$300(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/ICameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/ICameraContext;->getFeatureProvider()Lcom/freeme/camera/common/loader/FeatureProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/ModeManager;->access$200(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freeme/camera/common/loader/FeatureProvider;->getAllModeItems(Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/ModeManager;->access$400(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/freeme/camera/common/IAppUi;->registerMode(Ljava/util/List;)V

    iget-object p2, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {p2}, Lcom/freeme/camera/common/mode/ModeManager;->access$400(Lcom/freeme/camera/common/mode/ModeManager;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/ModeManager$FeatureLoadListener;->this$0:Lcom/freeme/camera/common/mode/ModeManager;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/ModeManager;->access$500(Lcom/freeme/camera/common/mode/ModeManager;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/freeme/camera/common/IAppUi;->updateCurrentMode(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/freeme/camera/common/mode/ModeManager;->access$100()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onPluginLoadDone]- mode num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
