.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$3;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->pause(Lcom/freeme/camera/common/mode/DeviceUsage;)V
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$000(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$400(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v1

    invoke-interface {v1}, Lcom/freeme/camera/common/IAppUi;->getModeRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->removeView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$3;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$002(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;)Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;

    return-void
.end method
