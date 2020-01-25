.class public Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;,
        Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;,
        Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;,
        Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

.field private b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

.field private c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;)Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NotInputImage:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-interface {p2, v0, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;->onImageAutoColorAnalysisCompleted(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    if-nez v1, :cond_1

    sget-object p1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->ServiceFailed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-interface {p2, v0, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;->onImageAutoColorAnalysisCompleted(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V

    return-void
.end method


# virtual methods
.method public analysisWithImage(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NotInputImage:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-interface {p2, p1, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;->onImageAutoColorAnalysisCompleted(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V

    return-void

    :cond_2
    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->setImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    new-instance v1, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;

    invoke-direct {v1, p0, p2, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$1;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->analysisColor(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    return-void
.end method

.method public analysisWithThumb(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V
    .locals 7

    if-nez p4, :cond_0

    return-void

    :cond_0
    new-instance v6, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$4;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p0, p1, v6}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->analysisWithImage(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V

    return-void
.end method

.method public copyAnalysis(Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V
    .locals 1

    if-eqz p3, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;->onImageAutoColorAnalysisCopyCompleted(Ljava/io/File;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getFilter()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->clone()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->a()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    return-object v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->cancel()V

    iput-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    :cond_0
    iput-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    iput-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a:Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    return-void
.end method
