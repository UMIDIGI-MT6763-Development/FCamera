.class Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener$3;
.super Ljava/lang/Object;
.source "ShortVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;->surfaceDestroyed(Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener$3;->this$1:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener$3;->this$1:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->access$700(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener$3;->this$1:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->access$700(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController;->updatePreviewSurface(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
