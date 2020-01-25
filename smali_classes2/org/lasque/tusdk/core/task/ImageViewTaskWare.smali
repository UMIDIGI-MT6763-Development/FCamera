.class public abstract Lorg/lasque/tusdk/core/task/ImageViewTaskWare;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->b:Z

    const/16 v0, 0x5a

    iput v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->d:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->c:Z

    return-void
.end method

.method public getImageCompress()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->d:I

    return v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public imageLoaded(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p1, Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;->TypeMomery:Lorg/lasque/tusdk/core/task/ImageViewTaskWare$LoadType;

    if-eq p2, p1, :cond_2

    const/16 p1, 0x78

    const p2, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, p2, v1}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->alphaAnimator(Landroid/view/View;IFF)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :cond_2
    :goto_0
    return-void
.end method

.method public isCancel()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->c:Z

    return v0
.end method

.method public isEqualView(Landroid/widget/ImageView;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isSaveToDisk()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->b:Z

    return v0
.end method

.method public setImageCompress(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->d:I

    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->a:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->a:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public setSaveToDisk(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/task/ImageViewTaskWare;->b:Z

    return-void
.end method
