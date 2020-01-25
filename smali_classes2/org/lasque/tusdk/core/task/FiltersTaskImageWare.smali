.class public Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;
.super Ljava/lang/Object;


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

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->setImageView(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFilterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEqualView(Landroid/widget/ImageView;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->getImageView()Landroid/widget/ImageView;

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

.method public setFilterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->b:Ljava/lang/String;

    return-void
.end method

.method public setImageResult(Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->getFilterName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/task/FiltersTaskImageResult;->getImage()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 p1, 0xc8

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v2, v3}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->alphaAnimator(Landroid/view/View;IFF)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return v1
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->a:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/task/FiltersTaskImageWare;->a:Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method
