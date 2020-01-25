.class Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$4;
.super Ljava/lang/Object;
.source "IntentVideoMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[mPlayListener] onClick"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1400(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$4;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2800(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2900(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/net/Uri;Landroid/media/CamcorderProfile;)V

    return-void
.end method
