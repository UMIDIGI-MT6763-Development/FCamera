.class public abstract Lorg/lasque/tusdk/impl/view/widget/listview/TuGroupListView;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        "M:",
        "Ljava/lang/Object;",
        "N:",
        "Landroid/view/View;",
        ">",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView<",
        "TT;TV;TM;TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/listview/TuListTotalFootView;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/listview/TuGroupListView;->setTotalFooterViewId(I)V

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListHeaderView;->getLayoutId()I

    move-result v0

    invoke-static {}, Lorg/lasque/tusdk/impl/view/widget/listview/TuRefreshListFooterView;->getLayoutId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/listview/TuGroupListView;->setRefreshLayoutResId(II)V

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkGroupListView;->initView()V

    return-void
.end method
