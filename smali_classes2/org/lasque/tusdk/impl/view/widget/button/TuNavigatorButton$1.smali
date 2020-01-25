.class Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;->a:Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;->a:Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->a(Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;->a:Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->a(Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;->a:Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
