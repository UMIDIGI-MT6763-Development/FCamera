.class public abstract Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath$TuSdkDataSource;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;)V
    .locals 9

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;->datas:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->d:I

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    iget-object v6, v5, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v6, v4, v7, v8}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;-><init>(III)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->d:I

    iget-object v7, v5, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->d:I

    iget-object v5, v5, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->stickers:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lorg/lasque/tusdk/core/utils/ArrayHelper;->splitForGroupsize(Ljava/util/List;I)Lorg/lasque/tusdk/core/utils/ArrayHelper$ArrayGroup;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/ArrayHelper$ArrayGroup;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v4, v8, v2}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;-><init>(III)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->b:Ljava/util/List;

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->c:Ljava/util/List;

    iput-object v1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->a:Ljava/util/List;

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public count()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->d:I

    return v0
.end method

.method public getIndexPath(I)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexPaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItem(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->row:I

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget p1, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->section:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public rowCount(I)I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sectionCount()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerListDataSource;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public viewTypes()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
