.class Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$3;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->handleShowStateAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$3;->b:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    iput-boolean p2, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$3;->a:Z

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-boolean p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$3;->a:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$3;->b:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->getConfigWrap()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->showViewIn(Landroid/view/View;Z)V

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView$3;->b:Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;->a(Lorg/lasque/tusdk/impl/components/widget/FilterConfigView;Z)Z

    return-void
.end method
