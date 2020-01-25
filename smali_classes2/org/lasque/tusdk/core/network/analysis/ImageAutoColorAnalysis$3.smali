.class Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

.field final synthetic c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;->b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->getFilter()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3$1;

    invoke-direct {v1, p0, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3$1;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$3;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method
