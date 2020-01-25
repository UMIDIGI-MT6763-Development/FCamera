.class public Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;
.super Landroid/widget/TextView;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# instance fields
.field private a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

.field private b:I

.field private c:I

.field public index:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p1, 0x7fffffff

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->b:I

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->c:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7fffffff

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->b:I

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->c:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7fffffff

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->b:I

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->c:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->initView()V

    return-void
.end method

.method private a([Landroid/graphics/drawable/Drawable;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a([Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->setTextColor(I)V

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->c:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->a([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->a([Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void
.end method

.method protected initView()V
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->bindTouchDark(Landroid/view/View;)Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    return-void
.end method

.method public loadView()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->c:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    invoke-virtual {v0, p0, p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->enabledChanged(Landroid/view/View;Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->a:Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;

    invoke-virtual {v0, p0, p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->selectedChanged(Landroid/view/View;Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->b:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->c:I

    :goto_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->changeColor(I)V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkTextButton;->b:I

    return-void
.end method

.method public viewDidLoad()V
    .locals 0

    return-void
.end method

.method public viewNeedRest()V
    .locals 0

    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    return-void
.end method
