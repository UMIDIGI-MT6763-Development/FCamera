.class public abstract Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;
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

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/TuSdkDate;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-wide p2, p2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->id:J

    invoke-static {p1, p2, p3}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlHelper;->getPhotoList(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->b:Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->b:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    iget-object v3, v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->createDate:Ljava/util/Calendar;

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->create(Ljava/util/Calendar;)Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->beginingOfDay()Lorg/lasque/tusdk/core/utils/TuSdkDate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->buildIndexPaths(Ljava/util/Hashtable;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected buildIndexPaths(Ljava/util/Hashtable;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/TuSdkDate;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/lasque/tusdk/core/utils/TuSdkDate;

    new-instance v6, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-direct {v6, v4, v7, v8}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;-><init>(III)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/TuSdkDate;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lorg/lasque/tusdk/core/utils/ArrayHelper;->splitForGroupsize(Ljava/util/List;I)Lorg/lasque/tusdk/core/utils/ArrayHelper$ArrayGroup;

    move-result-object v5

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/utils/ArrayHelper$ArrayGroup;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v4, v8, v3}, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;-><init>(III)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-object p2, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->d:Ljava/util/List;

    iput-object v1, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->a:Ljava/util/List;

    return-void
.end method

.method public count()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIndexPath(I)Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->a:Ljava/util/List;

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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItem(Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->row:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->viewType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget p1, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkIndexPath;->section:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public rowCount(I)I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->d:Ljava/util/List;

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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListDataSource;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

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
