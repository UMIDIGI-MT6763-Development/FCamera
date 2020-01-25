.class Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/lang/Class;

.field final synthetic e:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

.field final synthetic f:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->f:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->c:Ljava/util/Map;

    iput-object p5, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->d:Ljava/lang/Class;

    iput-object p6, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->e:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->f:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->c:Ljava/util/Map;

    iget-object v4, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->d:Ljava/lang/Class;

    iget-object v5, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;->e:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->mainThreadRequest(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    return-void
.end method
