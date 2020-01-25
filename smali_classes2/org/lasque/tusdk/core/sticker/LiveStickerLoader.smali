.class public Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/sticker/LiveStickerLoader$TextureUploadInterface;
    }
.end annotation


# static fields
.field private static a:Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;


# instance fields
.field private b:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "com.tusdk.asyncLiveStickerLoader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;)Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->b:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    return-object p1
.end method

.method public static shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->a:Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->a:Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->a:Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->b:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;->destroy()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->b:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->e:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

.method public finalize()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->c:Landroid/os/HandlerThread;

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public init(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->b:Lorg/lasque/tusdk/core/seles/SelesPixelBuffer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->d:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader$1;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader$1;-><init>(Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;Ljavax/microedition/khronos/egl/EGLContext;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public loadImage(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->e:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->e:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadTexture(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
