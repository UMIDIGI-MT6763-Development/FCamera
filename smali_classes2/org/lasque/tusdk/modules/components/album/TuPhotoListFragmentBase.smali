.class public abstract Lorg/lasque/tusdk/modules/components/album/TuPhotoListFragmentBase;
.super Lorg/lasque/tusdk/impl/activity/TuComponentFragment;


# instance fields
.field private a:Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/impl/activity/TuComponentFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumInfo()Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListFragmentBase;->a:Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    return-object v0
.end method

.method protected loadView(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public abstract notifySelectedPhoto(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V
.end method

.method public setAlbumInfo(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/album/TuPhotoListFragmentBase;->a:Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    return-void
.end method

.method protected viewDidLoad(Landroid/view/ViewGroup;)V
    .locals 2

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->photoListFragment:J

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    return-void
.end method
