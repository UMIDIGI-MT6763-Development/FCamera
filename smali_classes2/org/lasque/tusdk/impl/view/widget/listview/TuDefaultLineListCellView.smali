.class public Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_list_view_default_line_cell_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected bindModel()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->getModel()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_titleView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->a:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuDefaultLineListCellView;->a:Landroid/widget/TextView;

    return-void
.end method
