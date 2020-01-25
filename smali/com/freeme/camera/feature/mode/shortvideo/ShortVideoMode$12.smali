.class Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;
.super Ljava/lang/Object;
.source "ShortVideoMode.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "what = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " extra = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    const/16 p1, 0x37f

    if-eq p2, p1, :cond_2

    const/16 p1, 0x383

    const/4 p3, 0x1

    if-eq p2, p1, :cond_1

    const/16 p1, 0x7ce

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->access$200(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->showInfo(I)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->access$200(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-static {p1, p3}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->access$402(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    sget-object p2, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;->STATE_RECORDING:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;

    invoke-interface {p1, p2}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateUIState(Lcom/freeme/camera/common/mode/video/videoui/IVideoUI$VideoUIState;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    iget-object p2, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object p2, p2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 p2, 0x3

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/IAppUi;->setUIEnabled(IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    invoke-interface {p1, p3}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->showInfo(I)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->access$200(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->getVideoState()Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    move-result-object p1

    sget-object p2, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;->STATE_RECORDING:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$VideoState;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode$12;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;

    iget-object p1, p1, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoMode;->mVideoUi:Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;

    int-to-long p2, p3

    invoke-interface {p1, p2, p3}, Lcom/freeme/camera/common/mode/video/videoui/IVideoUI;->updateRecordingSize(J)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
