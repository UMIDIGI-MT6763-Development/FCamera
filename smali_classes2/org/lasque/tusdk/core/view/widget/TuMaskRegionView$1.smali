.class Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;->a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;->a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;->a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    invoke-static {v1}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->a(Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;->a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    iget-boolean v0, v0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->isLayouted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView$1;->a:Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->isLayouted:Z

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuMaskRegionView;->onLayouted()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
