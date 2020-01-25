.class public abstract Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

.field private b:Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

.field private c:Landroid/view/View$OnFocusChangeListener;

.field private d:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;

.field protected delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;

.field private e:Landroid/text/TextWatcher;

.field protected isClearClicked:Z

.field protected isFocused:Z

.field protected searchButton:Landroid/view/View;

.field protected searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->c:Landroid/view/View$OnFocusChangeListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->e:Landroid/text/TextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->c:Landroid/view/View$OnFocusChangeListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->e:Landroid/text/TextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$2;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$3;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->c:Landroid/view/View$OnFocusChangeListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$4;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$5;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->e:Landroid/text/TextWatcher;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;->onSearchViewFocusChange(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->a()V

    return-void
.end method


# virtual methods
.method public closeSearchModel()V
    .locals 2

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->cancelEditTextFocus()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->isFocused:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->a()V

    return-void
.end method

.method protected abstract findSearchButton()Landroid/view/View;
.end method

.method protected abstract findSearchFiled()Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;
.end method

.method public isFocusModel()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->isFocused:Z

    return v0
.end method

.method public loadView()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->findSearchFiled()Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->c:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setClearListener(Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->b:Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setSubmitListener(Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->findSearchButton()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchButton:Landroid/view/View;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchButton:Landroid/view/View;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onFiledTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-boolean p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->isFocused:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;->onSearchViewTextChanged(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onSubmitSearch()Z
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getInputText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->getInputText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;->onSearchViewSubmited(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAndSubmit(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->setText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->onSubmitSearch()Z

    return-void
.end method

.method public viewWillDestory()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->viewWillDestory()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->e:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setClearListener(Lorg/lasque/tusdk/core/view/widget/TuSdkTextField$TuSdkTextFieldListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchFiled:Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkTextField;->setSubmitListener(Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->searchButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;

    return-void
.end method
