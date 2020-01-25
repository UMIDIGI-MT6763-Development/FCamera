.class Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;
.super Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->mainThreadRequest(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

.field final synthetic c:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->c:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->a:Ljava/lang/Class;

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onRequestedFailed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->getError()Lorg/lasque/tusdk/core/utils/TuSdkError;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->getError()Lorg/lasque/tusdk/core/utils/TuSdkError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/TuSdkError;->getErrorCode()I

    move-result v0

    const/16 v2, -0x259

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->getError()Lorg/lasque/tusdk/core/utils/TuSdkError;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->getError()Lorg/lasque/tusdk/core/utils/TuSdkError;

    move-result-object p1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkError;->getErrorCode()I

    move-result p1

    const/16 v0, -0x12f

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NoAccessRight:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->ServiceFailed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    :goto_0
    invoke-interface {p1, v1, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;->onImageAnalysisCompleted(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void
.end method

.method protected onRequestedFinish(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->c:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Lorg/lasque/tusdk/core/http/RequestHandle;)Lorg/lasque/tusdk/core/http/RequestHandle;

    return-void
.end method

.method protected onRequestedSucceed(Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;)V
    .locals 2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpHandler;->getJson()Lorg/lasque/tusdk/core/utils/json/JsonWrapper;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->a:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/utils/json/JsonWrapper;->getJsonWithType(Ljava/lang/Class;)Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;->b:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;

    sget-object v1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-interface {v0, p1, v1}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;->onImageAnalysisCompleted(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void
.end method
