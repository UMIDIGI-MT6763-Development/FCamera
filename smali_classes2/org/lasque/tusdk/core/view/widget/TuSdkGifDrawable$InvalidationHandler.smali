.class Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InvalidationHandler"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$InvalidationHandler;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->invalidateSelf()V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v2}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;->onGifAnimationCompleted(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
