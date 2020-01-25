.class public Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;
.super Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View$OnClickListener;

.field protected badgeView:Landroid/widget/TextView;

.field protected buttonBg:Landroid/widget/RelativeLayout;

.field protected buttonTitle:Landroid/widget/TextView;

.field protected dotView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;-><init>(Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;-><init>(Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton$1;-><init>(Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;)V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->a:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static getLayoutId()I
    .locals 1

    const-string v0, "tusdk_view_widget_navigator_button"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->getTextViewText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadView()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->loadView()V

    const-string v0, "lsq_buttonTitle"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonTitle:Landroid/widget/TextView;

    const-string v0, "lsq_buttonBg"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonBg:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonBg:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->bindTouchDark(Landroid/view/View;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->colorChangeListener:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    const-string v0, "lsq_dotView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->dotView:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->dotView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "lsq_badgeView"

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->getViewById(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->badgeView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->badgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonBg:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->badgeView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->showView(Landroid/view/View;Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->badgeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->colorChangeListener:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonBg:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->colorChangeListener:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    iget-object v1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->enabledChanged(Landroid/view/View;Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->a:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonBg:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->b:Landroid/view/View$OnClickListener;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->buttonTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public showDot(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->dotView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/impl/view/widget/button/TuNavigatorButton;->showView(Landroid/view/View;Z)V

    return-void
.end method
