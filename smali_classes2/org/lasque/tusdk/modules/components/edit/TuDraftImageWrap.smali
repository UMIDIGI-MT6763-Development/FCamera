.class public Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;

.field private d:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

.field private e:Landroid/graphics/Bitmap;

.field protected mScreenSizeScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->mScreenSizeScale:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected clearAllSteps()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->clearSteps(Ljava/util/List;)V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->clearSteps(Ljava/util/List;)V

    return-void
.end method

.method protected clearSteps(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string v2, "clearSteps (%s): %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/FileHelper;->delete(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getBrushies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->b:Ljava/util/List;

    return-object v0
.end method

.method public getBrushiesSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getBrushies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHistories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    return-object v0
.end method

.method public getHistoriesSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getHistories()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0, p1, p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getTempFilePath()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->e:Landroid/graphics/Bitmap;

    :cond_3
    return-object p1
.end method

.method public getImageDisplaySize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 3

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getScreenSize(Landroid/content/Context;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    int-to-float v1, v1

    iget v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->mScreenSizeScale:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    int-to-float v1, v1

    iget v2, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->mScreenSizeScale:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    :cond_0
    return-object v0
.end method

.method public getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->d:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    return-object v0
.end method

.method public getLastSteps()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method protected getOutputImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;-><init>()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->popLastSteps()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getTempFilePath()Ljava/io/File;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTempFilePath()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->c:Ljava/io/File;

    return-object v0
.end method

.method public getThumbImage(II)Landroid/graphics/Bitmap;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v0, p1, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>(II)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getTempFilePath()Ljava/io/File;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;ZLorg/lasque/tusdk/core/struct/TuSdkSize;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public isChanged()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->isFromCarmera()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isFromCarmera()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getImageSqlInfo()Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected popLastSteps()Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->getLastSteps()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public setBrushies(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setHistories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->e:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageSqlInfo(Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->d:Lorg/lasque/tusdk/core/utils/sqllite/ImageSqlInfo;

    return-void
.end method

.method public setTempFilePath(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuDraftImageWrap;->c:Ljava/io/File;

    return-void
.end method
