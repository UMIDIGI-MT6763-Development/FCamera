.class public Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_list_view_refresh_footer_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getFootWrap()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const-string v0, "lsq_footWrap"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->b:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTitleLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_titleLabel"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->a:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public setFootWrap(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->b:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setTitleLabel(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->a:Landroid/widget/TextView;

    return-void
.end method
