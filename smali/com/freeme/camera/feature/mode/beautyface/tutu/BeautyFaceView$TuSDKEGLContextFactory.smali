.class Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$TuSDKEGLContextFactory;
.super Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;
.source "BeautyFaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TuSDKEGLContextFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$TuSDKEGLContextFactory;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;-><init>(I)V

    return-void
.end method


# virtual methods
.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 4

    const-string v0, "egl factory destroy: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$TuSDKEGLContextFactory;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$300(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$TuSDKEGLContextFactory;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$300(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lorg/lasque/tusdk/api/TuSDKFilterEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/api/TuSDKFilterEngine;->onSurfaceDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView$TuSDKEGLContextFactory;->this$0:Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;

    invoke-static {v0}, Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;->access$400(Lcom/freeme/camera/feature/mode/beautyface/tutu/BeautyFaceView;)Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/facecute/gles/FunnyFaceView;->disposeInGlThread()V

    invoke-super {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/SelesEGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method
