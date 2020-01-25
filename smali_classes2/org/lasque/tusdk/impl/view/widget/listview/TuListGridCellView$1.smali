.class Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;->a:Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSafeClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;->a:Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;

    invoke-static {v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a(Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;)Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$1;->a:Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;

    invoke-static {v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;->a(Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView;)Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;->getModel()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListGridCellView$TuListGridCellViewDelegate;->onGridItemClick(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
