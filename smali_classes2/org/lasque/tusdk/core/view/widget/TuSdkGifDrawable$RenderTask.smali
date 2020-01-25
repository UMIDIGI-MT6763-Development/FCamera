.class Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;
.super Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderTask"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V

    return-void
.end method


# virtual methods
.method public final doWork()V
    .locals 7

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v0, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v1, v1, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    invoke-static {v4, v5, v6}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;J)J

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-boolean v4, v4, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-boolean v4, v4, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->c:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v4, v4, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v5, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v5, v5, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v0, v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->getCurrentFrameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v1, v1, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getFrameCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v0, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->getCurrentLoop()I

    move-result v1

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-static {v4}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v0, v4, v5}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;J)J

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v0, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v0, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

    invoke-virtual {v0, v1, v2, v3}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_3
    return-void
.end method
