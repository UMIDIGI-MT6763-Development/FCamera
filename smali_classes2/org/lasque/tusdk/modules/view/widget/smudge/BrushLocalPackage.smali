.class public Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;
    }
.end annotation


# static fields
.field public static final EraserBrushCode:Ljava/lang/String; = "Eraser"

.field private static a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;


# instance fields
.field private b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;",
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

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->c:Ljava/util/List;

    new-instance v0, Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-direct {v0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V

    iput-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    iget-object p1, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->setDownloadDelegate(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger$TuSdkDownloadMangerDelegate;)V

    return-void
.end method

.method public static init(Lorg/lasque/tusdk/core/TuSdkConfigs;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;)V

    sput-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    :cond_0
    sget-object p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    return-object p0
.end method

.method public static shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    return-object v0
.end method


# virtual methods
.method public appenDelegate(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public cancelDownload(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->cancelDownload(J)V

    return-void
.end method

.method public cancelLoadImage(Landroid/widget/ImageView;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->cancelLoadImage(Landroid/widget/ImageView;)V

    return-void
.end method

.method public download(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->download(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAllDatas()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getAllDatas()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getBrushWithCode(Ljava/lang/String;)Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object p1

    return-object p1
.end method

.method public getBrushWithCodes(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getBrushWithCodes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEeaserBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->getEraserBrush()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    move-result-object v0

    return-object v0
.end method

.method public isInited()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->isInited()Z

    move-result v0

    return v0
.end method

.method public loadBrushData(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->loadBrushData(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)Z

    move-result p1

    return p1
.end method

.method public loadThumbWithBrush(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p2, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->loadThumbWithBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;Landroid/widget/ImageView;)V

    return-void
.end method

.method public onDownloadMangerStatusChanged(Lorg/lasque/tusdk/core/network/TuSdkDownloadManger;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V
    .locals 1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->c:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;

    invoke-interface {v0, p0, p2, p3}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;->onBrushPackageStatusChanged(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;Lorg/lasque/tusdk/core/network/TuSdkDownloadItem;Lorg/lasque/tusdk/core/type/DownloadTaskStatus;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeDelegate(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage$BrushLocalPackageDelegate;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDownloadWithIdt(J)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->removeDownloadWithIdt(J)V

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

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->b:Lorg/lasque/tusdk/core/secret/BrushAdapter;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/secret/BrushAdapter;->verifyCodes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
