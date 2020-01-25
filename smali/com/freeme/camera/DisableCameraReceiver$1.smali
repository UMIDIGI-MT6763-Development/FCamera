.class Lcom/freeme/camera/DisableCameraReceiver$1;
.super Landroid/os/AsyncTask;
.source "DisableCameraReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/DisableCameraReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/DisableCameraReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/freeme/camera/DisableCameraReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/DisableCameraReceiver$1;->this$0:Lcom/freeme/camera/DisableCameraReceiver;

    iput-object p2, p0, Lcom/freeme/camera/DisableCameraReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/DisableCameraReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getCameraApiType(Ljava/lang/String;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v0, p0, Lcom/freeme/camera/DisableCameraReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    iget-object v0, p0, Lcom/freeme/camera/DisableCameraReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureLoader;->loadBuildInFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/freeme/camera/DisableCameraReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureLoader;->loadPluginFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    return-object p1
.end method
