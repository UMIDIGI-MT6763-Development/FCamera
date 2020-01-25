.class public Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;
    }
.end annotation


# static fields
.field public static final NormalFilterCode:Ljava/lang/String; = "Normal"

.field private static a:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;


# instance fields
.field private b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;",
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

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->c:Ljava/util/List;

    new-instance v0, Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->setDownloadDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;)V

    return-void
.end method

.method public static init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V

    sput-object v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    return-object p0
.end method

.method public static shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    return-object v0
.end method


# virtual methods
.method public appenDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelDownload(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->cancelDownload(J)V

    return-void
.end method

.method public cancelLoadImage(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->cancelLoadImage(Landroid/widget/ImageView;)V

    return-void
.end method

.method public createFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->createFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p1

    return-object p1
.end method

.method public download(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->download(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllDatas()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getAllDatas()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilterWrap(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->option(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-static {p1}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendFilter(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    return-object v0
.end method

.method public getFilters(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getFilters(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGroupDefaultFilterCode(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getGroupDefaultFilterCode(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGroupFilters(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getGroupFilters(Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGroupNameKey(J)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getGroupNameKey(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGroupType(J)I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getGroupType(J)I

    move-result p1

    return p1
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->getGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isInited()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->isInited()Z

    move-result v0

    return v0
.end method

.method public loadFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->loadFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    return-void
.end method

.method public loadGroupDefaultFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->loadGroupDefaultFilterThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V

    return-void
.end method

.method public loadGroupThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->loadGroupThumb(Landroid/widget/ImageView;Lorg/lasque/tusdk/core/seles/tusdk/FilterGroup;)V

    return-void
.end method

.method public loadInternalTextures(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->loadInternalTextures(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadTextures(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/sources/SelesPicture;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->loadTextures(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onDownloadMangerStatusChanged(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->c:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;

    invoke-interface {v0, p0, p2, p3}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;->onFilterPackageStatusChanged(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public option(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->option(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    return-object p1
.end method

.method public removeDelegate(Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage$FilterLocalPackageDelegate;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDownloadWithIdt(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->removeDownloadWithIdt(J)V

    return-void
.end method

.method public setInitDelegate(Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->setInitDelegate(Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;)V

    return-void
.end method

.method public verifyCodes(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->b:Lorg/lasque/tusdk/core/secret/FilterAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/FilterAdapter;->verifyCodes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
