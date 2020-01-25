.class public Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_list_view_total_footer_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_titleView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->b:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public bridge synthetic getWrapView()Landroid/widget/RelativeLayout;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getWrapView()Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getWrapView()Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->a:Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

    if-nez v0, :cond_0

    const-string v0, "lsq_wrapView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->a:Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->a:Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

    return-object v0
.end method

.method public setTitle(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getTitleFormater()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getTitleFormater()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->b:Landroid/widget/TextView;

    return-void
.end method

.method public setTotal(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListTotalFootView;->setTotal(I)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->setTitle(I)V

    return-void
.end method

.method public setmWrapView(Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->a:Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;

    return-void
.end method
