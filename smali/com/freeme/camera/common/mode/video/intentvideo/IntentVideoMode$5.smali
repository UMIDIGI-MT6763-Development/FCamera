.class Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$5;
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

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$5;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[mSaveListener] onClick"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$5;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1400(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$3000(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$5;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$3100(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
