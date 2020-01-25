.class Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;
.super Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_ImageAutoColorAnalysisWrap"
.end annotation


# direct methods
.method private constructor <init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    return-void
.end method

.method static synthetic a()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;
    .locals 1

    invoke-static {}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->b()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->a(Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V

    return-void
.end method

.method private static b()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;
    .locals 2

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap$1;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap$1;-><init>()V

    new-instance v1, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->clone()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;
    .locals 3

    invoke-static {}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->b()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;

    invoke-static {v2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;)Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;->a(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisFiler;Lorg/lasque/tusdk/core/network/analysis/ImageColorArgument;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->clone()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object v0

    return-object v0
.end method
