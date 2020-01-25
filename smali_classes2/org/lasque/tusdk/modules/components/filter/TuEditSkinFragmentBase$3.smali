.class Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFaceAnalysisCompleted(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    if-eqz p1, :cond_2

    iget p2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;->count:I

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;->count:I

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-static {p2, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;)[Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->a(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;[Landroid/graphics/PointF;)[Landroid/graphics/PointF;

    new-instance p1, Lorg/lasque/tusdk/core/face/FaceAligment;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/face/FaceAligment;-><init>()V

    iget-object p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-static {p2}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->c(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)[Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p1, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    iget-object p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-static {p2}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->d(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    move-result-object p2

    new-array v0, v2, [Lorg/lasque/tusdk/core/face/FaceAligment;

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p2, v0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;->updateFaceFeatures([Lorg/lasque/tusdk/core/face/FaceAligment;F)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-static {p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->e(Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->hubDismiss()V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-virtual {p1, v2}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->onFaceDetectionResult(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    const-string p2, "lsq_edit_process_error_multi_face"

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    const-string p2, "lsq_edit_process_error_no_face"

    goto :goto_1

    :cond_3
    sget-object p1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NoAccessRight:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    if-ne p2, p1, :cond_4

    const-string p1, "You are not allowed to use the face mark api, please see http://tusdk.com"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    const-string p2, "lsq_edit_process_error_no_face_access"

    goto :goto_1

    :cond_4
    const-string p1, "error on face mark :%s"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    const-string p2, "lsq_edit_process_skin_error"

    :goto_1
    invoke-static {p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->hubError(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase$3;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/modules/components/filter/TuEditSkinFragmentBase;->onFaceDetectionResult(Z)V

    return-void
.end method
