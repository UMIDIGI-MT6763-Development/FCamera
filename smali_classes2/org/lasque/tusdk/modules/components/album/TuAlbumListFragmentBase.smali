.class public abstract Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuComponentFragment;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected autoSelectedAblumGroupAction(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->isDisableAutoSkipToPhotoList()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    iget v2, v1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->total:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->getSkipAlbumName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->getSkipAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v2, "Camera"

    iget-object v3, v1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    iget v2, v0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->total:I

    iget v3, v1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->total:I

    if-ge v2, v3, :cond_1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->notifySelectedGroup(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)V

    :cond_6
    :goto_2
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

.method public getSkipAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isDisableAutoSkipToPhotoList()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->a:Z

    return v0
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

.method public setDisableAutoSkipToPhotoList(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->a:Z

    return-void
.end method

.method public setSkipAlbumName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListFragmentBase;->setDisableAutoSkipToPhotoList(Z)V

    :cond_0
    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->albumListFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
