.class public abstract Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;
.super Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase$1;-><init>(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;)V

    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    const/4 p1, -0x1

    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->c:I

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    invoke-virtual {p0, v2, v3, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->buildCateButton(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;ILandroid/widget/LinearLayout$LayoutParams;)Landroid/view/View;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract buildCateButton(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;ILandroid/widget/LinearLayout$LayoutParams;)Landroid/view/View;
.end method

.method protected getAllStickerDatas()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    iget-object v3, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->extendType:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->id:J

    invoke-virtual {p0, v2, v3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->getStickerDatas(J)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected getCurrentCate()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->c:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->c:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStickerDatas(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getCategory(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadCategories(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    invoke-direct {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;-><init>()V

    const-string v1, "lsq_sticker_cate_all"

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->name:Ljava/lang/String;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;->ExtendTypeAll:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    iput-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->extendType:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryExtendType;

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getCategories()Ljava/util/List;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->a()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->selectCateIndex(I)V

    return-void
.end method

.method public loadView()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->appenDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->removeDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V

    return-void
.end method

.method protected abstract refreshCateDatas()V
.end method

.method protected abstract selectCateButton(Ljava/lang/Integer;)V
.end method

.method protected selectCateIndex(I)V
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->c:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->selectCateButton(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerBarViewBase;->refreshCateDatas()V

    :cond_1
    :goto_0
    return-void
.end method
