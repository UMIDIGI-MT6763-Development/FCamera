.class Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker$1;
.super Ljava/lang/Object;
.source "HeifEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker;->doSignalEOSLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker$1;->this$1:Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker$1;->this$1:Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker$1;->this$1:Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder$SurfaceEOSTracker;->this$0:Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder;->access$200(Lcom/freeme/camera/feature/mode/supdefinition/heif/HeifEncoder;)Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :cond_0
    return-void
.end method
