.class Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase$1;->a:Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->getCutRegionView()Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/modules/components/edit/TuEditTurnAndCutFragmentBase;->onRegionLayoutChanged(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)V

    :cond_1
    return-void
.end method
