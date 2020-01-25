.class Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->analysisWithThumb(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

.field final synthetic b:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$1;->b:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$1;->a:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

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

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$1;->a:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;->onImageFaceAnalysisCompleted(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void

    :cond_0
    check-cast p1, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$1;->a:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

    invoke-interface {v0, p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;->onImageFaceAnalysisCompleted(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void
.end method
