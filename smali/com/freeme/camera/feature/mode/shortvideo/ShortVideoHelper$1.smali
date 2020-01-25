.class Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;
.super Ljava/lang/Object;
.source "ShortVideoHelper.java"

# interfaces
.implements Lcom/freeme/camera/feature/mode/shortvideo/device/IDeviceController$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewCallback([BILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->access$100(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)[B

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->access$200(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->access$300(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/freeme/camera/common/IAppUi;->onPreviewStarted(Ljava/lang/String;)V

    :cond_0
    iget-object p3, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-static {p3, p1}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->access$102(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;[B)[B

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper$1;->this$0:Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;

    invoke-static {p1, p2}, Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;->access$402(Lcom/freeme/camera/feature/mode/shortvideo/ShortVideoHelper;I)I

    return-void
.end method
