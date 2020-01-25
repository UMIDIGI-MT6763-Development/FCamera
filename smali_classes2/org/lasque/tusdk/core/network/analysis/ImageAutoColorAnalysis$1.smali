.class Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->analysisWithImage(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->a:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAnalysisCompleted(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(TT;",
            "Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;",
            ")V"
        }
    .end annotation

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    if-eq p2, v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->a:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;->onImageAutoColorAnalysisCompleted(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void

    :cond_0
    check-cast p1, Lorg/lasque/tusdk/core/network/analysis/ImageAnalysisResult;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageAnalysisResult;->color:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageAnalysisResult;->color:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->getFilter()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-static {p2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;)Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V

    sget-wide p1, Lorg/lasque/tusdk/modules/components/ComponentActType;->image_Analysis_color:J

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/secret/StatisticsManger;->appendComponent(J)V

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    iget-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;->a:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    invoke-static {p1, p2, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V

    return-void
.end method
