.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11$1;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11$1;->this$1:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11$1;->this$1:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$1;)V

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11$1;->this$1:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    check-cast v1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->setSnapShotListener(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11$1;->this$1:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->takeSnapShot()V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11$1;->this$1:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;

    iget-object v0, v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$1502(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Z)Z

    return-void
.end method
