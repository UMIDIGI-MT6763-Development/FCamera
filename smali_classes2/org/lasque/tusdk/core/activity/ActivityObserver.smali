.class public Lorg/lasque/tusdk/core/activity/ActivityObserver;
.super Ljava/lang/Object;


# static fields
.field public static final ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lorg/lasque/tusdk/core/type/ActivityAnimType;

.field private h:Lorg/lasque/tusdk/core/type/ActivityAnimType;

.field private i:Lorg/lasque/tusdk/core/type/ActivityAnimType;

.field private j:Lorg/lasque/tusdk/core/type/ActivityAnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;-><init>()V

    sput-object v0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->ins:Lorg/lasque/tusdk/core/activity/ActivityObserver;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/activity/ActivityObserver$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/activity/ActivityObserver$1;-><init>(Lorg/lasque/tusdk/core/activity/ActivityObserver;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->e:Landroid/view/View$OnTouchListener;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->f:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->a:Ljava/util/ArrayList;

    invoke-static {}, Lorg/lasque/tusdk/impl/TuAnimType;->values()[Lorg/lasque/tusdk/impl/TuAnimType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->f:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lorg/lasque/tusdk/impl/TuAnimType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bindAutoHiddenKeyboard(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->e:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public cancelEditTextFocus()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->cancelEditTextFocus(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public cancelEditTextFocus(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->cancelEditTextFocusBinder(Landroid/content/Context;Landroid/os/IBinder;)Z

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->c:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->cancelEditTextFocusBinder(Landroid/content/Context;Landroid/os/IBinder;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->c:Landroid/widget/EditText;

    const/4 p1, 0x1

    return p1
.end method

.method public cancelEditTextFocusBinder(Landroid/content/Context;Landroid/os/IBinder;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const-string v1, "input_method"

    invoke-static {p1, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public editTextFocus(Landroid/widget/EditText;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/lasque/tusdk/core/activity/ActivityObserver;->showSoftInput(Landroid/content/Context;Landroid/widget/EditText;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->c:Landroid/widget/EditText;

    return-void
.end method

.method public editTextFocusLost(Landroid/widget/EditText;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->c:Landroid/widget/EditText;

    :cond_0
    return-void
.end method

.method public exitApp()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public getActivityAnims()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/lasque/tusdk/core/type/ActivityAnimType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->f:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getAnimDismiss()Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->h:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->down:Lorg/lasque/tusdk/impl/TuAnimType;

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->h:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->h:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-object v0
.end method

.method public getAnimPop()Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->j:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->pop:Lorg/lasque/tusdk/impl/TuAnimType;

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->j:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->j:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-object v0
.end method

.method public getAnimPresent()Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->g:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->up:Lorg/lasque/tusdk/impl/TuAnimType;

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->g:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->g:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-object v0
.end method

.method public getAnimPush()Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->i:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    if-nez v0, :cond_0

    sget-object v0, Lorg/lasque/tusdk/impl/TuAnimType;->push:Lorg/lasque/tusdk/impl/TuAnimType;

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->i:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->i:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-object v0
.end method

.method protected getAnimType(Ljava/lang/String;)Lorg/lasque/tusdk/core/type/ActivityAnimType;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-object p1
.end method

.method public getHiddenKeyboardListener()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->e:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getMainActivityClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->d:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Lorg/lasque/tusdk/impl/activity/TuFragmentActivity;

    iput-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->d:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransmit()Landroid/support/v4/app/Fragment;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->b:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->b:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public register(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimDismiss(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->h:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-void
.end method

.method public setAnimPop(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->j:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-void
.end method

.method public setAnimPresent(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->g:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-void
.end method

.method public setAnimPush(Lorg/lasque/tusdk/core/type/ActivityAnimType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->i:Lorg/lasque/tusdk/core/type/ActivityAnimType;

    return-void
.end method

.method public setMainActivityClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->d:Ljava/lang/Class;

    return-void
.end method

.method public setTransmit(Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/activity/ActivityObserver;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public showSoftInput(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "input_method"

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
