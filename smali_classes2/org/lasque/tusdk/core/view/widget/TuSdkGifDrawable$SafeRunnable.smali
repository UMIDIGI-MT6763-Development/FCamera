.class abstract Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SafeRunnable"
.end annotation


# instance fields
.field final synthetic b:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

.field protected final mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    return-void
.end method


# virtual methods
.method abstract doWork()V
.end method

.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;->mGifDrawable:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;->doWork()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
