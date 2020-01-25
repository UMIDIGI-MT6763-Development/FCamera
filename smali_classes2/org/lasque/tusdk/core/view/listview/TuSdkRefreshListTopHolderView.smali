.class public Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;
.super Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public loadView()V
    .locals 3

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->loadView()V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->a:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->a:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setVisiableHeight(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListTopHolderView;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
