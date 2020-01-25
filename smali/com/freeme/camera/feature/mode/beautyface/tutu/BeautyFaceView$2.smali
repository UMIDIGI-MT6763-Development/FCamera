.class Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;
.super Ljava/lang/Object;
.source "BeautyFaceView.java"

# interfaces
.implements Lorg/lasque/tusdk/api/TuSDKFilterEngine$TuSDKFilterEngineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->constructFilterEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterChanged(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$802(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/FacebeautyAdjustManager;->setFilterParams(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V

    return-void
.end method

.method public onPictureDataCompleted(Ljava/nio/IntBuffer;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$700(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getWorkerHandler()Lcom/freeme/camera/CameraActivity$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2$1;-><init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;Lorg/lasque/tusdk/core/struct/TuSdkSize;Ljava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/CameraActivity$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewScreenShot(Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->bitmap2byteArrayTurbo(Landroid/graphics/Bitmap;I)[B

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$900(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$2;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$900(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SnapShotListener;->onSnapShot([B)V

    :cond_1
    return-void
.end method
