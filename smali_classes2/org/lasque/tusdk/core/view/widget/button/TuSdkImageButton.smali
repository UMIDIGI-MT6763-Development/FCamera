.class public Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;
.super Lorg/lasque/tusdk/core/view/TuSdkImageView;


# instance fields
.field private a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

.field public index:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bindColorChangeListener()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->bindTouchDark(Landroid/view/View;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    return-void
.end method

.method protected initView()V
    .locals 0

    return-void
.end method

.method protected removeColorChangeListener()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    invoke-virtual {v0, p0, p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->enabledChanged(Landroid/view/View;Z)V

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->bindColorChangeListener()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->removeColorChangeListener()V

    :goto_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    invoke-virtual {v0, p0, p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->selectedChanged(Landroid/view/View;Z)V

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkImageView;->setSelected(Z)V

    return-void
.end method
