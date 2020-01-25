.class Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFaceAnalysisCompleted(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->f(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_3

    if-eqz p1, :cond_2

    iget p2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;->count:I

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    iget p2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;->count:I

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    iget-object v1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;)[Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;[Landroid/graphics/PointF;)[Landroid/graphics/PointF;

    new-instance p1, Lorg/lasque/tusdk/core/face/FaceAligment;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/face/FaceAligment;-><init>()V

    iget-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {p2}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->g(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)[Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    iget-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {p2}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->k(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    move-result-object p2

    new-array v1, v2, [Lorg/lasque/tusdk/core/face/FaceAligment;

    aput-object p1, v1, v3

    const/4 p1, 0x0

    invoke-virtual {p2, v1, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->f(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :cond_1
    const-string p1, "Error: multiple faces detected"

    new-array p2, v3, [Ljava/lang/Object;

    :goto_0
    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "Error: no face detected"

    new-array p2, v3, [Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NoAccessRight:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    if-ne p2, p1, :cond_4

    const-string p1, "You are not allowed to use the face mark api, please see http://tusdk.com"

    new-array p2, v3, [Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string p1, "error on face mark :%s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;->a:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;

    invoke-static {p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->f(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
