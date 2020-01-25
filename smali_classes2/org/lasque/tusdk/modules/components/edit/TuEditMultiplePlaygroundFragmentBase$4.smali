.class Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$4;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAutoColorAnalysisCompleted(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V
    .locals 2

    sget-object p1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "error on auto adjust:%s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$4;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    const-string p2, "lsq_edit_process_adjust_color_error"

    invoke-static {p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
