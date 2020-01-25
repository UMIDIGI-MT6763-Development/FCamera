.class public abstract Lorg/lasque/tusdk/modules/components/album/TuPhotoListGridBase;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout<",
        "Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;",
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


# virtual methods
.method protected bindModel()V
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->shared:Lorg/lasque/tusdk/core/task/AlbumTaskManager;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListGridBase;->getPosterView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListGridBase;->getModel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->loadThumbImage(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V

    return-void
.end method

.method public abstract getPosterView()Landroid/widget/ImageView;
.end method

.method public viewNeedRest()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListGridBase;->getPosterView()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    sget-object v0, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->shared:Lorg/lasque/tusdk/core/task/AlbumTaskManager;

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListGridBase;->getPosterView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/task/AlbumTaskManager;->cancelLoadImage(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListGridBase;->getPosterView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListGridBase;->getPosterView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;->viewNeedRest()V

    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/album/TuPhotoListGridBase;->viewNeedRest()V

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;->viewWillDestory()V

    return-void
.end method
