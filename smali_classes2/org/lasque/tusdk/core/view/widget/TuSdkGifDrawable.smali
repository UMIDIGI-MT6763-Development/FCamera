.class public final Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field volatile b:Z

.field final c:Z

.field final d:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

.field private e:J

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private final k:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;

.field private l:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private m:F

.field public final mBuffer:Landroid/graphics/Bitmap;

.field public final mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

.field private final n:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->openURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p2, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Lorg/lasque/tusdk/core/utils/image/GifHelper;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Lorg/lasque/tusdk/core/utils/image/GifHelper;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a(Landroid/content/res/Resources;I)F

    move-result p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->j:I

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->parseFile(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Lorg/lasque/tusdk/core/utils/image/GifHelper;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->parseFd(Ljava/io/FileDescriptor;)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Lorg/lasque/tusdk/core/utils/image/GifHelper;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->parseFile(Ljava/lang/String;)Lorg/lasque/tusdk/core/utils/image/GifHelper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Lorg/lasque/tusdk/core/utils/image/GifHelper;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/lasque/tusdk/core/utils/image/GifHelper;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->e:J

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->g:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->h:Landroid/graphics/RectF;

    new-instance v1, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;

    invoke-direct {v1, p0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean p4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->c:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;->getInstance()Lorg/lasque/tusdk/core/utils/image/GifRenderingExecutor;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iget-object p3, p2, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    monitor-enter p3

    :try_start_0
    iget-object p4, p2, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p4}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->isRecycled()Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p2, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p4}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getHeight()I

    move-result p4

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getHeight()I

    move-result v1

    if-lt p4, v1, :cond_1

    iget-object p4, p2, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p4}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getWidth()I

    move-result p4

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getWidth()I

    move-result v1

    if-lt p4, v1, :cond_1

    invoke-direct {p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a()V

    iget-object p1, p2, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    monitor-exit p3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getWidth()I

    move-result p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getHeight()I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

    invoke-direct {p1, p0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;->doWork()V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getWidth()I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->i:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->j:I

    return-void
.end method

.method private a(Landroid/content/res/Resources;I)F
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget p2, v0, Landroid/util/TypedValue;->density:I

    if-nez p2, :cond_0

    const/16 p2, 0xa0

    goto :goto_0

    :cond_0
    const v0, 0xffff

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-lez p2, :cond_2

    if-lez p1, :cond_2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;J)J
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->e:J

    return-wide p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->l:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->removeMessages(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->recycle()V

    return-void
.end method

.method private a(J)V
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->c:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iput-wide v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->e:J

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v1, v2}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->l:Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)J
    .locals 2

    iget-wide v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->e:J

    return-wide v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->removeMessages(I)V

    return-void
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;
    .locals 1

    :try_start_0
    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addAnimationListener(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->g:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->h:Landroid/graphics/RectF;

    iget v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->m:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    iget-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->c:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->e:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->e:J

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$RenderTask;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->l:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->m:F

    return v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getCurrentFrameIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentLoop()I
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getCurrentLoop()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getLoopCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getDuration()I

    move-result v0

    return v0
.end method

.method public getError()Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;->fromCode(I)Lorg/lasque/tusdk/core/utils/image/GifHelper$GifError;

    move-result-object v0

    return-object v0
.end method

.method public getFrameDuration(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->getNumberOfFrames()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getFrameDuration(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->j:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->i:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public isAnimationCompleted()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->isAnimationCompleted()Z

    move-result v0

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->isRecycled()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->h:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->h:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->stop()V

    return-void
.end method

.method public recycle()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public removeAnimationListener(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->n:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$1;

    invoke-direct {v1, p0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 3

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->m:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->invalidateSelf()V

    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->setLoopCount(I)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->setSpeed(F)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->c:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->reset()V

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->start()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->stop()V

    :cond_2
    :goto_0
    return v0
.end method

.method public start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->restoreRemainder()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->b()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->saveRemainder()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "GIF: size: %dx%d, frames: %d, error: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getFrameCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
