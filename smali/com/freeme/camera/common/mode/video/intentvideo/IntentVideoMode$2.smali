.class Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;
.super Ljava/lang/Object;
.source "IntentVideoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1100(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1200(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object v0

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PAUSED:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1302(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1400(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1402(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/net/Uri;)Landroid/net/Uri;

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1500(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1600(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v0, v1}, Lcom/freeme/camera/common/utils/BitmapCreator;->createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1302(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1700(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/IReviewUI;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/mode/IReviewUI;->showReviewUI(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$302(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    sget-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1800(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1900(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/IAppUi;->hideSavingDialog()V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2000(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2100(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$2;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2200(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/16 v0, 0x8

    invoke-interface {p1, v0, v1}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method
