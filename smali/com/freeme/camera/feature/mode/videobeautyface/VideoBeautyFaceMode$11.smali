.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$500()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mVssListener] click video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v1, v1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVideoState:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "mCanTakePicture = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$1500(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->getVideoState()Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->getVideoState()Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    move-result-object p1

    sget-object v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$VideoState;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$1500(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    sget-object v0, Lcom/freeme/camera/common/IAppUi$AnimationType;->TYPE_CAPTURE:Lcom/freeme/camera/common/IAppUi$AnimationType;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->animationStart(Lcom/freeme/camera/common/IAppUi$AnimationType;Lcom/freeme/camera/common/IAppUi$AnimationData;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$1700(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;

    move-result-object p1

    new-instance v0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11$1;

    invoke-direct {v0, p0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11$1;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$11;)V

    invoke-virtual {p1, v0}, Lcom/freeme/camera/common/mode/CameraModeBase$ModeHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
