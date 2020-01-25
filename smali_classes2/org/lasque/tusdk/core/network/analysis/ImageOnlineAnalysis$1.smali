.class Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/Class;

.field final synthetic d:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

.field final synthetic e:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->e:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->b:Ljava/util/Map;

    iput-object p4, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->c:Ljava/lang/Class;

    iput-object p5, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->d:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->e:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->b:Ljava/util/Map;

    iget-object v3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->c:Ljava/lang/Class;

    iget-object v4, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;->d:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    return-void
.end method
