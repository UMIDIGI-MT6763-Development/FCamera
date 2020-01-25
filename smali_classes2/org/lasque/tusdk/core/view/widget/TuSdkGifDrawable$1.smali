.class Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$1;
.super Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$SafeRunnable;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object v0, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->mGifHelper:Lorg/lasque/tusdk/core/utils/image/GifHelper;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/image/GifHelper;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$1;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->start()V

    :cond_0
    return-void
.end method
