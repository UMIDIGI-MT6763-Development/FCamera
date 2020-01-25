.class public abstract Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract getFootWrap()Landroid/widget/RelativeLayout;
.end method

.method public abstract getTitleLabel()Landroid/widget/TextView;
.end method

.method public loadView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;->setViewShowed(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;->getTitleLabel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewShowed(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;->getFootWrap()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkRefreshListFooterView;->showView(Landroid/view/View;Z)V

    return-void
.end method
