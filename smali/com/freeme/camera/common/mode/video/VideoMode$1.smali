.class Lcom/freeme/camera/common/mode/video/VideoMode$1;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/VideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/VideoMode;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/VideoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileSaved(Landroid/net/Uri;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onFileSaved] uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mApp:Lcom/freeme/camera/common/app/IApp;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/freeme/camera/common/app/IApp;->notifyNewMedia(Landroid/net/Uri;Z)V

    sget-object v0, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_SAVING:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    iget-object v2, p0, Lcom/freeme/camera/common/mode/video/VideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-virtual {v2}, Lcom/freeme/camera/common/mode/video/VideoMode;->getVideoState()Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    move-result-object v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    sget-object v2, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-virtual {v0, v2}, Lcom/freeme/camera/common/mode/video/VideoMode;->updateVideoState(Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    invoke-interface {v0}, Lcom/freeme/camera/common/IAppUi;->hideSavingDialog()V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object v0, v0, Lcom/freeme/camera/common/mode/video/VideoMode;->mAppUi:Lcom/freeme/camera/common/IAppUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/IAppUi;->applyAllUIVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoMode$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-static {v0, p1}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$100(Lcom/freeme/camera/common/mode/video/VideoMode;Landroid/net/Uri;)V

    return-void
.end method
