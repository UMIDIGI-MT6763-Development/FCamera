.class public Lorg/lasque/tusdk/impl/view/widget/listview/TuListView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListView;->setTotalFooterViewId(I)V

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->getLayoutId()I

    move-result v0

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->getLayoutId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListView;->setRefreshLayoutResId(II)V

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkListView;->initView()V

    return-void
.end method
