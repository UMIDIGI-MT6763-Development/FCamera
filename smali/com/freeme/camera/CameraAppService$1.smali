.class Lcom/freeme/camera/CameraAppService$1;
.super Landroid/os/AsyncTask;
.source "CameraAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/CameraAppService;->onCreate()V
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
.field final synthetic this$0:Lcom/freeme/camera/CameraAppService;


# direct methods
.method constructor <init>(Lcom/freeme/camera/CameraAppService;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/CameraAppService$1;->this$0:Lcom/freeme/camera/CameraAppService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/freeme/camera/CameraAppService$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getCameraApiType(Ljava/lang/String;)Lcom/freeme/camera/common/device/CameraDeviceManagerFactory$CameraApi;

    iget-object v0, p0, Lcom/freeme/camera/CameraAppService$1;->this$0:Lcom/freeme/camera/CameraAppService;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/mode/CameraApiHelper;->getDeviceSpec(Landroid/content/Context;)Lcom/freeme/camera/common/loader/DeviceSpec;

    iget-object v0, p0, Lcom/freeme/camera/CameraAppService$1;->this$0:Lcom/freeme/camera/CameraAppService;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraAppService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/loader/FeatureLoader;->loadBuildInFeatures(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    const/16 v1, 0x100

    invoke-static {v0, v0, v1, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    return-object p1
.end method
