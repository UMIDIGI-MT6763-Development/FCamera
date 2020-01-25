.class Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->analysisWithThumb(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

.field final synthetic b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Ljava/io/File;

.field final synthetic e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->a:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    iput-object p4, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->c:Ljava/io/File;

    iput-object p5, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->d:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAutoColorAnalysisCompleted(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->a:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;->onImageAutoColorAnalysisCompleted(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    sget-object p1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    if-eq p2, p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;->onImageAutoColorAnalysisCopyCompleted(Ljava/io/File;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->e:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    iget-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->c:Ljava/io/File;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->d:Ljava/io/File;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;->b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    invoke-virtual {p1, p2, v0, v1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->copyAnalysis(Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V

    return-void
.end method
