.class public Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;
    }
.end annotation


# static fields
.field private static a:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;


# instance fields
.field private b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

.field private c:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->setInitDelegate(Lorg/lasque/tusdk/core/secret/FilterAdapter$FiltersConfigDelegate;)V

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;->onFilterManagerInited(Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;

    :cond_0
    return-void
.end method

.method public static init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V

    sput-object v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    return-object p0
.end method

.method public static shared()Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->a:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;

    return-object v0
.end method


# virtual methods
.method public checkFilterManager(Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->c:Lorg/lasque/tusdk/core/seles/tusdk/FilterManager$FilterManagerDelegate;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->a()V

    return-void
.end method

.method public getFilterNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupTypeByCode(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->option(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    iget-wide v1, p1, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->groupId:J

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->getGroupType(J)I

    move-result p1

    return p1
.end method

.method public isInited()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->b:Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterLocalPackage;->isInited()Z

    move-result v0

    return v0
.end method

.method public isNormalFilter(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onFiltersConfigInited()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->a()V

    return-void
.end method

.method public process(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/graphics/Bitmap;Ljava/lang/String;F)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/seles/SelesParameters;F)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v4, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/seles/SelesParameters;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/seles/SelesParameters;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->filterAPIEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "You are not allowed to use the filterAPI feature, please see http://tusdk.com"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->isNormalFilter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/secret/SdkValid;->getFilterWrapWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "You are not allowed to use the filter [%s] in Filter API, please see http://tusdk.com"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    invoke-virtual {v0, p3}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    invoke-virtual {v0, p1, p4, p5}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/seles/tusdk/FilterManager;->process(Landroid/graphics/Bitmap;Ljava/lang/String;Lorg/lasque/tusdk/core/seles/SelesParameters;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
