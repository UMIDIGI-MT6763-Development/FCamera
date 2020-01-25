.class Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$4;
.super Ljava/lang/Object;
.source "CameraWaterMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->onPreviewSizeReady(Lcom/freeme/camera/common/utils/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$4;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode$4;->this$0:Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;->access$1600(Lcom/freeme/camera/feature/mode/camerawater/CameraWaterMode;)V

    return-void
.end method
