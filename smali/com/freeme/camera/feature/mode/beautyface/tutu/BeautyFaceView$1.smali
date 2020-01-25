.class Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;
.super Landroid/os/Handler;
.source "BeautyFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;
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

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$100(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;

    move-result-object p1

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$200(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$SurfaceTextureListener;->onBfSurfaceTextureUpdate(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {p1}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$000(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$1;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$000(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
