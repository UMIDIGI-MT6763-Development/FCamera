.class public Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public analysisWithThumb(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NotInputImage:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-interface {p2, p1, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;->onImageFaceAnalysisCompleted(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->setImage(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$1;

    invoke-direct {v0, p0, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$1;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;)V

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->analysisFaces(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    :cond_0
    return-void
.end method
