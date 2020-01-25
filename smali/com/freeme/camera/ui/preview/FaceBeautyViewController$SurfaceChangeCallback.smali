.class Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;
.super Ljava/lang/Object;
.source "FaceBeautyViewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/ui/preview/FaceBeautyViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceChangeCallback"
.end annotation


# instance fields
.field private mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

.field final synthetic this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;


# direct methods
.method constructor <init>(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    return-void
.end method


# virtual methods
.method getBindStatusListener()Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    return-object v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$402(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$500(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)I

    move-result p1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$600(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)I

    move-result p1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$100(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p1

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {p2}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$500(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)I

    move-result p2

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$600(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    iget-object p2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {p2}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$100(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object p2

    invoke-interface {p2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {p2}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceChanged(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    new-instance v1, Lcom/freeme/camera/ui/preview/GLRendererImpl;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$100(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/freeme/camera/ui/preview/GLRendererImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$002(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Lcom/freeme/camera/ui/preview/GLRendererImpl;)Lcom/freeme/camera/ui/preview/GLRendererImpl;

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    new-instance v1, Lcom/freeme/camera/ui/preview/GLProducerThread;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {v2}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$000(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Lcom/freeme/camera/ui/preview/GLRendererImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {v3}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$300(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/freeme/camera/ui/preview/GLProducerThread;-><init>(Landroid/view/Surface;Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$202(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$200(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {p1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$300(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$300(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$402(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;Z)Z

    iget-object p1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->mListener:Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {v0}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$100(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)Lcom/freeme/camera/common/app/IApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/freeme/camera/CameraActivity;->getmBeautyFaceView()Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {v1}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$500(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)I

    move-result v1

    iget-object v2, p0, Lcom/freeme/camera/ui/preview/FaceBeautyViewController$SurfaceChangeCallback;->this$0:Lcom/freeme/camera/ui/preview/FaceBeautyViewController;

    invoke-static {v2}, Lcom/freeme/camera/ui/preview/FaceBeautyViewController;->access$600(Lcom/freeme/camera/ui/preview/FaceBeautyViewController;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/freeme/camera/common/IAppUiListener$ISurfaceStatusListener;->surfaceDestroyed(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method
