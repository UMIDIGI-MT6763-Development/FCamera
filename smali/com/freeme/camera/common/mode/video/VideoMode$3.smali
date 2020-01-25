.class Lcom/freeme/camera/common/mode/video/VideoMode$3;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;


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

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILandroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/freeme/camera/common/mode/video/VideoMode;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "[onStateChanged] storage out service Intent.ACTION_MEDIA_EJECT"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/VideoMode;

    iget-object p1, p1, Lcom/freeme/camera/common/mode/video/VideoMode;->mVideoHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
