.class public abstract Lorg/lasque/tusdk/modules/components/album/TuAlbumListCellBase;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout<",
        "Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListCellBase;->getPosterView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    sget-object v1, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->shared:Lorg/lasque/tusdk/core/task/AlbumTaskManager;

    iget-object p1, p1, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;->cover:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-virtual {v1, v0, p1}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->loadThumbImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V

    return-void
.end method


# virtual methods
.method protected bindModel()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListCellBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListCellBase;->a(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)V

    return-void
.end method

.method public abstract getPosterView()Landroid/widget/ImageView;
.end method

.method public viewNeedRest()V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->shared:Lorg/lasque/tusdk/core/task/AlbumTaskManager;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListCellBase;->getPosterView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->cancelLoadImage(Landroid/widget/ImageView;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListCellBase;->a(Lorg/lasque/tusdk/core/utils/sqllite/AlbumSqlInfo;)V

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;->viewNeedRest()V

    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuAlbumListCellBase;->viewNeedRest()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;->viewWillDestory()V

    return-void
.end method
