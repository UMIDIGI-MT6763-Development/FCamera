.class Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2$1;->b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;

    iput-boolean p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2$1;->b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;

    iget-object v0, v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->c:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    iget-boolean v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2$1;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2$1;->b:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;

    iget-object v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$2;->b:Ljava/io/File;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;->onImageAutoColorAnalysisCopyCompleted(Ljava/io/File;)V

    return-void
.end method
