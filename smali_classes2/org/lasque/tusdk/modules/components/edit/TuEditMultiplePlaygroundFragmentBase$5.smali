.class Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;


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

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$5;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAutoColorAnalysisCopyCompleted(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$5;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->appendHistory(Ljava/io/File;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$5;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubDismiss()V

    goto :goto_0

    :cond_0
    const-string p1, "error on saving temp file"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase$5;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;

    const-string v0, "lsq_edit_process_adjust_color_error"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/modules/components/edit/TuEditMultiplePlaygroundFragmentBase;->hubError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
