.class public abstract Lorg/lasque/tusdk/modules/components/album/TuAlbumMultipleListFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuComponentFragment;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public autoSelectedAblumGroupAction(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    iget v3, v2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->total:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/lasque/tusdk/modules/components/album/TuAlbumMultipleListFragmentBase;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    iget-object v4, p0, Lorg/lasque/tusdk/modules/components/album/TuAlbumMultipleListFragmentBase;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    :cond_4
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumMultipleListFragmentBase;->notifySelectedGroup(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)V

    return-void
.end method

.method public abstract getGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreviewFragmentClazz()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected getPreviewFragmentInstance()Lorg/lasque/tusdk/impl/activity/TuFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/impl/activity/TuFragment;",
            ">()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumMultipleListFragmentBase;->getPreviewFragmentClazz()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ReflectUtils;->classInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/activity/TuFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumMultipleListFragmentBase;->getPreviewFragmentLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/activity/TuFragment;->setRootViewLayoutId(I)V

    return-object v0
.end method

.method public abstract getPreviewFragmentLayoutId()I
.end method

.method public getSkipAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuAlbumMultipleListFragmentBase;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public abstract notifySelectedGroup(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)V
.end method

.method public onDestroyView()V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->shared:Lorg/lasque/tusdk/core/task/AlbumTaskManager;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->resetQueues()V

    invoke-super {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;->onDestroyView()V

    return-void
.end method

.method public setSkipAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/album/TuAlbumMultipleListFragmentBase;->a:Ljava/lang/String;

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->albumMultipleListFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
