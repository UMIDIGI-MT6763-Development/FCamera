.class public Lorg/lasque/tusdk/impl/view/widget/TuGifView;
.super Landroid/widget/ImageView;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

.field private b:Z

.field private c:Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->b:Z

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->b:Z

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->removeAnimationListener(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->recycle()V

    iput-object v1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    :cond_0
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "src"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->addAnimationListener(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable$TuGifAnimationListener;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->gifViewer:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method

.method private a(I)Z
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a()V

    new-instance v1, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-direct {v1, v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a()V

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public dispose()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a()V

    return-void
.end method

.method public getDelegate()Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->c:Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->invalidate()V

    return-void
.end method

.method public isAutoPlay()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->b:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onGifAnimationCompleted(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->getDelegate()Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->getDelegate()Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;->onGifAnimationComplete(I)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->pause()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->reset()V

    :cond_0
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->b:Z

    return-void
.end method

.method public setDelegate(Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->c:Lorg/lasque/tusdk/impl/view/widget/TuGifView$TuGifViewDelegate;

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->isAutoPlay()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->start()V

    :cond_1
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkGifDrawable;->start()V

    :cond_1
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/impl/view/widget/TuGifView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
