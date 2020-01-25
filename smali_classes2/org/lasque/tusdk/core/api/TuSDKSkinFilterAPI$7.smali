.class Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAutoColorAnalysisCompleted(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {p2}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->l(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {p2}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->l(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;->onGetAutoAdjustResult(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->l(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->l(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->m(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;->onGetAutoAdjustResult(Landroid/graphics/Bitmap;)V

    :cond_1
    const-string p1, "error on auto adjust:%s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
