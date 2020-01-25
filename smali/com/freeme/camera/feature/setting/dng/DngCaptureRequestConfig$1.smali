.class Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$1;
.super Ljava/lang/Object;
.source "DngCaptureRequestConfig.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRawCaptureImageListener reader = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->i(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$100(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;->onDngCreatorStateUpdate(Z)V

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$202(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/media/Image;)Landroid/media/Image;

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {p1, v1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$302(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig$1;->this$0:Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$200(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;)Landroid/media/Image;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;->access$400(Lcom/freeme/camera/feature/setting/dng/DngCaptureRequestConfig;Landroid/media/Image;)V

    return-void
.end method
