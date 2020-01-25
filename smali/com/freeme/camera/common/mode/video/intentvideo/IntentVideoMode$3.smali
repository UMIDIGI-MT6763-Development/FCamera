.class Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;
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

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$800()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string v0, "[mRetakeListener] onClick"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$302(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    sget-object v1, Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;->STATE_PREVIEW:Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;

    invoke-static {p1, v1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Lcom/freeme/camera/common/mode/video/VideoMode$VideoState;)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1700(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/mode/IReviewUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/mode/IReviewUI;->hideReviewUI()V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2400(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2500(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/16 v1, 0x8

    invoke-interface {p1, v1, v0}, Lcom/freeme/camera/common/IAppUi;->setUIVisibility(II)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2600(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Lcom/freeme/camera/common/IAppUi;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/IAppUi;->applyAllUIEnabled(Z)V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1300(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$1302(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode$3;->this$0:Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;

    invoke-static {p1}, Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;->access$2700(Lcom/freeme/camera/common/mode/video/intentvideo/IntentVideoMode;)V

    return-void
.end method
