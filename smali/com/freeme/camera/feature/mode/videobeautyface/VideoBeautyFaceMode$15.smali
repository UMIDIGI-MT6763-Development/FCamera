.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$15;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$15;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onError] what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eq p1, p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$15;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object p2, p2, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    const/16 p2, -0x44f

    if-ne p2, p3, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$15;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object p2, p2, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVideoHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
