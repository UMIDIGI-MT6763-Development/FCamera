.class public abstract Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuComponentFragment;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase$1;-><init>(Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->b:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->a:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getCategories()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->a:Ljava/util/List;

    return-object v0
.end method

.method protected getCategory(I)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->getCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->onDestroyView()V

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->b:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->removeDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V

    return-void
.end method

.method protected reloadStickers()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getCategories(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->setCategories(Ljava/util/List;)V

    return-void
.end method

.method protected removeStickerGroup(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object v0

    iget-wide v1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->groupId:J

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->removeDownloadWithIdt(J)V

    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->a:Ljava/util/List;

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/sticker/TuStickerChooseFragmentBase;->b:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->appenDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editStickerLocalFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
