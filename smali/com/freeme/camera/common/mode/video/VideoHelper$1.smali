.class Lcom/freeme/camera/common/mode/video/VideoHelper$1;
.super Ljava/lang/Object;
.source "VideoHelper.java"

# interfaces
.implements Lcom/freeme/camera/common/mode/video/device/IDeviceController$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/common/mode/video/VideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/common/mode/video/VideoHelper;


# direct methods
.method constructor <init>(Lcom/freeme/camera/common/mode/video/VideoHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoHelper$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewCallback([BILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoHelper$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/VideoHelper;->access$100(Lcom/freeme/camera/common/mode/video/VideoHelper;)[B

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoHelper$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/VideoHelper;->access$200(Lcom/freeme/camera/common/mode/video/VideoHelper;)V

    iget-object v0, p0, Lcom/freeme/camera/common/mode/video/VideoHelper$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-static {v0}, Lcom/freeme/camera/common/mode/video/VideoHelper;->access$300(Lcom/freeme/camera/common/mode/video/VideoHelper;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/freeme/camera/common/IAppUi;->onPreviewStarted(Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lcom/freeme/camera/common/mode/video/VideoHelper$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-static {p3, p1}, Lcom/freeme/camera/common/mode/video/VideoHelper;->access$102(Lcom/freeme/camera/common/mode/video/VideoHelper;[B)[B

    iget-object p1, p0, Lcom/freeme/camera/common/mode/video/VideoHelper$1;->this$0:Lcom/freeme/camera/common/mode/video/VideoHelper;

    invoke-static {p1, p2}, Lcom/freeme/camera/common/mode/video/VideoHelper;->access$402(Lcom/freeme/camera/common/mode/video/VideoHelper;I)I

    return-void
.end method
