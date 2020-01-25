.class public Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;
    }
.end annotation


# static fields
.field private static a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;


# instance fields
.field private b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->c:Ljava/util/List;

    new-instance v0, Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->setDownloadDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;)V

    return-void
.end method

.method public static init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    return-object p0
.end method

.method public static shared()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->a:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;

    return-object v0
.end method


# virtual methods
.method public appenDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelDownload(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->cancelDownload(J)V

    return-void
.end method

.method public cancelLoadImage(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->cancelLoadImage(Landroid/widget/ImageView;)V

    return-void
.end method

.method public containsGroupId(J)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->containsGroupId(J)Z

    move-result p1

    return p1
.end method

.method public download(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->download(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllDatas()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getAllDatas()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getCategories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCategories(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getCategories(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCategory(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getCategory(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory;

    move-result-object p1

    return-object p1
.end method

.method public getSmartStickerGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->getSmartStickerGroups(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmartStickerGroups(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;->StickerCategorySmart:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getGroupListByType(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerCategory$StickerCategoryType;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    if-nez p1, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {v2}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;->requireFaceFeature()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public getSticker(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getSticker(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    move-result-object p1

    return-object p1
.end method

.method public getStickerGroup(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->getStickerGroup(J)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;

    move-result-object p1

    return-object p1
.end method

.method public isInited()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->isInited()Z

    move-result v0

    return v0
.end method

.method public loadGroupThumb(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->loadGroupThumb(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerGroup;Landroid/widget/ImageView;)V

    return-void
.end method

.method public loadSmartStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->loadSmartStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->loadStickerItem(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)Z

    move-result p1

    return p1
.end method

.method public loadThumb(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->loadThumb(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onDownloadMangerStatusChanged(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->c:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;

    invoke-interface {v0, p0, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;->onStickerPackageStatusChanged(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeDelegate(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage$StickerPackageDelegate;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDownloadWithIdt(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerLocalPackage;->b:Lorg/lasque/tusdk/core/secret/StickerAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/StickerAdapter;->removeDownloadWithIdt(J)V

    return-void
.end method
