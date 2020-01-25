.class public Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;,
        Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_NO_ACCESS_RIGHT:I = -0x12f

.field public static final ERROR_CODE_NO_FACE_FOUND:I = -0x259


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lorg/lasque/tusdk/core/http/RequestHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Lorg/lasque/tusdk/core/http/RequestHandle;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->b:Lorg/lasque/tusdk/core/http/RequestHandle;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    sget-object p2, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NotInputImage:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-interface {p4, p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;->onImageAnalysisCompleted(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void

    :cond_1
    new-instance v6, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$1;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    invoke-static {v6}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a:Landroid/graphics/Bitmap;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageLimit(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a:Landroid/graphics/Bitmap;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->bitmap2InputStream(Landroid/graphics/Bitmap;I)Ljava/io/InputStream;

    move-result-object v4

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$2;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public analysisColor(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 3

    const-string v0, "/image/infos"

    const-class v1, Lorg/lasque/tusdk/core/network/analysis/ImageAnalysisResult;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    return-void
.end method

.method public analysisFaces(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "marks"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "normalize"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mutiple"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "/face/landmark"

    const-class v2, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;

    invoke-direct {p0, v1, v0, v2, p1}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    return-void
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->b:Lorg/lasque/tusdk/core/http/RequestHandle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/http/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->b:Lorg/lasque/tusdk/core/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/http/RequestHandle;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->b:Lorg/lasque/tusdk/core/http/RequestHandle;

    return-void
.end method

.method protected mainThreadRequest(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    sget-object p2, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NotInputImage:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-interface {p5, p1, p2}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;->onImageAnalysisCompleted(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->cancel()V

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;

    invoke-direct {v0, p0, p4, p5}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$3;-><init>(Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;Ljava/lang/Class;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;)V

    new-instance p4, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;

    invoke-direct {p4}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;-><init>()V

    const-string p5, "pic"

    invoke-virtual {p4, p5, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->put(Ljava/lang/String;Ljava/io/InputStream;)V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, p5, v1}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->service()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    move-result-object p1

    invoke-virtual {p1, p2, p4, v0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->postService(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;->a:Landroid/graphics/Bitmap;

    return-void
.end method
