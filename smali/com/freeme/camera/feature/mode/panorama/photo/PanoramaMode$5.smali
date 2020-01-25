.class Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$5;
.super Ljava/lang/Object;
.source "PanoramaMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->stopAllAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$5;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$200()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    const-string v1, "[stopAllAnimations] run"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$5;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$1700(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$5;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$1800(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode$5;->this$0:Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;->access$1900(Lcom/freeme/camera/feature/mode/panorama/photo/PanoramaMode;)V

    return-void
.end method
