.class Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$8;
.super Ljava/lang/Object;
.source "ShortVideoMode.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$JpegCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$8;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceived([B)V
    .locals 5

    invoke-static {}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDataReceived] jpegData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getOrientationFromExif([B)I

    move-result v0

    invoke-static {p1}, Lcom/freeme/camera/common/utils/CameraUtil;->getSizeFromExif([B)Lcom/freeme/camera/common/utils/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$8;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object v2, v2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mCameraContext:Lcom/freeme/camera/common/ICameraContext;

    invoke-interface {v2}, Lcom/freeme/camera/common/ICameraContext;->getMediaSaver()Lcom/freeme/camera/common/storage/MediaSaver;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$8;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object v3, v3, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoHelper:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->prepareContentValues(ZILcom/freeme/camera/common/utils/Size;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$8;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object v3, v3, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVssSavedListener:Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/freeme/camera/common/storage/MediaSaver;->addSaveRequest([BLandroid/content/ContentValues;Ljava/lang/String;Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;)V

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$8;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->access$702(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Z)Z

    return-void
.end method
