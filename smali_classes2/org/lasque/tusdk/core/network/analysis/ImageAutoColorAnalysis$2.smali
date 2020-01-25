.class Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->copyAnalysis(Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

.field final synthetic d:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->d:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->a:Ljava/io/File;

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->b:Ljava/io/File;

    iput-object p4, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->a:Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkGPU;->getMaxTextureOptimizedSize()I

    move-result v1

    invoke-static {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(I)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->getBitmap(Ljava/io/File;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->d:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->getFilter()Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$_ImageAutoColorAnalysisWrap;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->b:Ljava/io/File;

    const/16 v2, 0x5f

    invoke-static {v1, v0, v2}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    move-result v0

    new-instance v1, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2$1;

    invoke-direct {v1, p0, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2$1;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;Z)V

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method
