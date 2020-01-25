.class Lcom/freeme/camera/ui/preview/GLProducerThread;
.super Ljava/lang/Thread;
.source "GLProducerThread.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;
    }
.end annotation


# instance fields
.field private mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

.field private mEglSurfaceBase:Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

.field private mRenderer:Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;

.field private mSurface:Landroid/view/Surface;

.field private mSyncLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/view/Surface;Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglSurfaceBase:Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    iput-object p1, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSurface:Landroid/view/Surface;

    iput-object p2, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mRenderer:Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;

    iput-object p3, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSyncLock:Ljava/lang/Object;

    return-void
.end method

.method private destroyGL()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglSurfaceBase:Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    invoke-virtual {v0}, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->makeNothingCurrent()V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglSurfaceBase:Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    invoke-virtual {v0}, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->releaseEglSurface()V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    invoke-virtual {v0}, Lcom/freeme/camera/common/gles/egl/EglCore;->release()V

    return-void
.end method

.method private initGL()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/gles/egl/EglCore;

    invoke-direct {v0}, Lcom/freeme/camera/common/gles/egl/EglCore;-><init>()V

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    new-instance v0, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglCore:Lcom/freeme/camera/common/gles/egl/EglCore;

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;-><init>(Lcom/freeme/camera/common/gles/egl/EglCore;)V

    iput-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglSurfaceBase:Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglSurfaceBase:Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglSurfaceBase:Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    invoke-virtual {v0}, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->makeCurrent()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/ui/preview/GLProducerThread;->initGL()V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mRenderer:Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mRenderer:Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;

    check-cast v0, Lcom/freeme/camera/ui/preview/GLRendererImpl;

    invoke-virtual {v0}, Lcom/freeme/camera/ui/preview/GLRendererImpl;->initGL()V

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mRenderer:Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mRenderer:Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;

    invoke-interface {v0}, Lcom/freeme/camera/ui/preview/GLProducerThread$GLRenderer;->drawFrame()V

    :cond_1
    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mEglSurfaceBase:Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;

    invoke-virtual {v0}, Lcom/freeme/camera/common/gles/egl/EglSurfaceBase;->swapBuffers()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/freeme/camera/ui/preview/GLProducerThread;->destroyGL()V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSyncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSyncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0}, Lcom/freeme/camera/ui/preview/GLProducerThread;->destroyGL()V

    iget-object v0, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSyncLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSyncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :goto_1
    invoke-direct {p0}, Lcom/freeme/camera/ui/preview/GLProducerThread;->destroyGL()V

    iget-object v1, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSyncLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/freeme/camera/ui/preview/GLProducerThread;->mSyncLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
