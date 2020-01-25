.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$9;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->prepareStartRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$9;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$9;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$000(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$9;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$000(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$9;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$1100(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->removeView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
