.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$17;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$MediaRecorderInfoListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$17;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaRecoderProgressChanged(F)V
    .locals 0

    return-void
.end method

.method public onMediaRecoderStateChanged(Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;)V
    .locals 4

    sget-object v0, Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;->RecordCompleted:Lorg/lasque/tusdk/api/TuSDKMediaRecoder$State;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/freeme/camera/common/utils/StorageUtil;->saveSdcard()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$17;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2600(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$17;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2600(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2702(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$17;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2800(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2702(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$17;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2700(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$17;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$2900(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Z)V

    :cond_1
    return-void
.end method
