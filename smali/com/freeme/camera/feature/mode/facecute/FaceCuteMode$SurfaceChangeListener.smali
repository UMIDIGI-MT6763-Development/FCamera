.class Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;
.super Ljava/lang/Object;
.source "FaceCuteMode.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public surfaceAvailable(Ljava/lang/Object;II)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceAvailable,device controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",h = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$2100(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$2200(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    move-result-object p2

    new-instance p3, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener$1;

    invoke-direct {p3, p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener$1;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public surfaceChanged(Ljava/lang/Object;II)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged, device controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",h = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$2300(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$2400(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    move-result-object p2

    new-instance p3, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener$2;

    invoke-direct {p3, p0, p1}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener$2;-><init>(Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Ljava/lang/Object;II)V
    .locals 0

    invoke-static {}, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->access$900()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "surfaceDestroyed,device controller = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;

    iget-object p3, p3, Lcom/freeme/camera/feature/mode/facecute/FaceCuteMode;->mIDeviceController:Lcom/freeme/camera/feature/mode/facecute/device/IDeviceController;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void
.end method
