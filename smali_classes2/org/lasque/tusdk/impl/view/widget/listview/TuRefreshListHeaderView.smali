.class public Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_list_view_refresh_header_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getHeadWrap()Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->a:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const-string v0, "lsq_headWrap"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->a:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getLastLoadTime()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_lastLoadTime"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->c:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLoadIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const-string v0, "lsq_loadIcon"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->d:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "lsq_titleLabel"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->b:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public setHeadWrap(Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->a:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setLastDate(Ljava/util/Calendar;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setLastDate(Ljava/util/Calendar;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->getLastLoadTime()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lsq_refresh_list_view_state_lasttime"

    invoke-static {v2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/TuDateHelper;->timestampSNS(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLastLoadTime(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->c:Landroid/widget/TextView;

    return-void
.end method

.method public setLoadIcon(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->d:Landroid/widget/ImageView;

    return-void
.end method

.method public setState(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView;->setState(Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView$1;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListHeaderView$TuSdkRefreshState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "lsq_refresh_list_view_state_loading"

    goto :goto_0

    :pswitch_1
    const-string p1, "lsq_refresh_list_view_state_triggered"

    goto :goto_0

    :pswitch_2
    const-string p1, "lsq_refresh_list_view_state_visible"

    goto :goto_0

    :pswitch_3
    const-string p1, "lsq_refresh_list_view_state_hidden"

    :goto_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getStringResId(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTitleLabel(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->b:Landroid/widget/TextView;

    return-void
.end method
