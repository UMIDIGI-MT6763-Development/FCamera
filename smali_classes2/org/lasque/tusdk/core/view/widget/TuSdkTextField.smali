.class public Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;
.super Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->a:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setClearIconVisible(Z)V

    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->c(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->b(Landroid/view/MotionEvent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->setDark(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->c:Z

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->c:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lorg/lasque/tusdk/core/listener/TuSdkTouchColorChangeListener;->clearColorType(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->d(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, ""

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;->onTextFieldClickClear(Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;)V

    :cond_2
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_2

    int-to-float v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method protected initView()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->initView()V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->a()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setClearIconVisible(Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->a(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected setClearIconVisible(Z)V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object p1, p1, v3

    invoke-virtual {p0, v1, v2, v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setClearListener(Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;

    return-void
.end method
