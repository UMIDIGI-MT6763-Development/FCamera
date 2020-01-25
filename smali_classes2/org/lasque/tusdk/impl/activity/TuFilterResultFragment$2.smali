.class Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->refreshConfigView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$2;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$2;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;

    invoke-static {v0}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->a(Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment$2;->a:Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;

    invoke-virtual {v1}, Lorg/lasque/tusdk/impl/activity/TuFilterResultFragment;->getConfigView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgKeys()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/lasque/tusdk/impl/view/widget/ParameterConfigViewInterface;->setParams(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method
