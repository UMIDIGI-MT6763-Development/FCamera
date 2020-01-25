.class Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;
.super Ljava/lang/Object;
.source "VideoBeautyFaceMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapShotHost"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;


# direct methods
.method private constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;-><init>(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;)V

    return-void
.end method


# virtual methods
.method public onSnapShot([B)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getOrientationFromExif([B)I

    move-result v0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v2}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v3, v3, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceHelper;->prepareContentValues(ZILcom/freeme/camera/common/utils/Size;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    iget-object v3, v3, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->mVssSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode$SnapShotHost;->this$0:Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;->access$1502(Lcom/freeme/camera/feature/mode/videobeautyface/VideoBeautyFaceMode;Z)Z

    return-void
.end method
