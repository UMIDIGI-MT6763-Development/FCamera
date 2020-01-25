.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;
.super Ljava/lang/Object;
.source "VideoBeautyFaceHelper.java"

# interfaces
.implements Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public surfaceAvailable(Ljava/lang/Object;II)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[surfaceAvailable] holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {v1, p2, p3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->updatePreviewSize(Lcom/freeme/camera/common/utils/Size;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$600(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$600(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener$1;

    invoke-direct {p3, p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener$1;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public surfaceChanged(Ljava/lang/Object;II)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[surfaceChanged] holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {v1, p2, p3}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->updatePreviewSize(Lcom/freeme/camera/common/utils/Size;)V

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$600(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-static {p2}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$600(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener$2;

    invoke-direct {p3, p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener$2;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Ljava/lang/Object;II)V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[surfaceDestroyed] holder = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$600(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->access$600(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener$3;

    invoke-direct {p2, p0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener$3;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper$SurfaceChangeListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
