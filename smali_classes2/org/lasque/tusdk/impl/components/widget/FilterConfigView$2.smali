.class Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSafeClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getResetButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->equalViewIds(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->handleResetAction()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getStateButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->equalViewIds(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$2;->a:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->handleShowStateAction()V

    :cond_1
    :goto_0
    return-void
.end method
