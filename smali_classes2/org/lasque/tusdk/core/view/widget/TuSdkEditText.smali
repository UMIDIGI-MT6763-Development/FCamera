.class public Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;
.super Landroid/widget/EditText;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

.field private b:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->initView()V

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->getSubmitListener()Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;->onTuSdkEditTextSubmit(Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getInputText()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitListener()Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

    return-object v0
.end method

.method public getTextOrEmpty()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initView()V
    .locals 0

    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public loadView()V
    .locals 0

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_0

    return p1

    :cond_0
    const/4 p3, 0x6

    if-eq p2, p3, :cond_1

    packed-switch p2, :pswitch_data_0

    return p1

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->a()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->editTextFocus(Landroid/widget/EditText;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->editTextFocusLost(Landroid/widget/EditText;)V

    :goto_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->b:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->b:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setShakeAnimation()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/anim/AnimHelper;->shakeAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setSubmitListener(Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkEditText;->a:Lorg/lasque/tusdk/core/view/widget/TuSdkEditText$TuSdkEditTextListener;

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
