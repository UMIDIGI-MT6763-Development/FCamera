.class public abstract Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetAnimaExitDelegate;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;

.field private l:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetAnimaExitDelegate;

.field private m:Z

.field private n:Landroid/view/View$OnClickListener;

.field private o:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

.field private p:Z

.field private q:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b:I

    iput v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->c:I

    iput v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$2;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->o:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$3;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$3;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->q:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a()V

    return-void
.end method

.method private a(Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->getActionsheetBottomSpace(Z)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-object v0
.end method

.method private a(II)Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->getActionsheetButtonStyleResId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResStyleContext(Landroid/content/Context;I)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;

    invoke-direct {v1, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;-><init>(Landroid/content/Context;)V

    iput p1, v1, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->index:I

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->getButtonTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->getButtonBackgroundResId(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->setBackgroundResource(I)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->getButtonColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->setTextColor(I)V

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->getActionSheetLayoutId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->q:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->setAnimationListener(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->setDismissClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->e:Ljava/lang/String;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->showView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b(Z)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;)V
    .locals 4

    const-string v0, "ActionSheet"

    invoke-static {v0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildApplicationPanelParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x1a8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    invoke-static {v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    instance-of v3, v2, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->o:Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;

    invoke-virtual {v2, v3}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->setActivityKeyListener(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;)V

    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a:Z

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->m:Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->runViewShowableAnim(Z)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;)V
    .locals 1

    iget p1, p1, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->index:I

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->d:I

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->d:I

    invoke-interface {p1, p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;->onActionSheetClicked(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;I)V

    return-void
.end method

.method private a([I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->addButtonTitle(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->m:Z

    return p0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->c()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;)V

    return-void
.end method

.method private b(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->e()V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->showView(Z)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$4;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$4;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;)V

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->m:Z

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getSheetTable()Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1, v2}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(II)Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    instance-of v0, v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getCancelButton()Landroid/widget/Button;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->index:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkButton;->index:I

    iput v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->c:I

    :cond_1
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->showView(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    instance-of v1, v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity;->setActivityKeyListener(Lorg/lasque/tusdk/core/activity/TuSdkFragmentActivity$TuSdkFragmentActivityEventListener;)V

    :cond_2
    iput-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v0, v2}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->setAnimationListener(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView$TuSdkActionSheetViewAnimation;)V

    iput-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a:Z

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->l:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetAnimaExitDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->d:I

    invoke-interface {v0, p0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetAnimaExitDelegate;->onActionSheetAnimaExited(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;I)V

    return-void
.end method

.method public static isExsitInWindow()Z
    .locals 1

    sget-boolean v0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a:Z

    return v0
.end method


# virtual methods
.method public addButtonTitle(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->addButtonTitle(Ljava/lang/String;)V

    return-void
.end method

.method public addButtonTitle(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buttonsSize()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->p:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->m:Z

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->runViewShowableAnim(Z)V

    return-void
.end method

.method public dismissRightNow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->p:Z

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b(Z)V

    return-void
.end method

.method protected abstract getActionSheetLayoutId()I
.end method

.method protected abstract getActionsheetBottomSpace(Z)I
.end method

.method protected abstract getActionsheetButtonStyleResId()I
.end method

.method protected abstract getButtonBackgroundResId(II)I
.end method

.method protected abstract getButtonColor(I)I
.end method

.method public getButtonTitle(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCancelIndex()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->c:I

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->i:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    return-object v0
.end method

.method public getDestructiveIndex()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->e:Ljava/lang/String;

    return-object v0
.end method

.method public varargs init(III[I)Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(I)V

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b(I)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->g:Landroid/content/Context;

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->h:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p4}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a([I)V

    return-object p0
.end method

.method public varargs init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->h:Ljava/lang/String;

    invoke-direct {p0, p4}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->a([Ljava/lang/String;)V

    return-object p0
.end method

.method public setButtonColor(II)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getSheetTable()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->f:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheetView;->getSheetTable()Landroid/widget/LinearLayout;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setCancelIndex(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->c:I

    return-void
.end method

.method public setDestructiveIndex(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b:I

    return-void
.end method

.method public showInView(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->showInView(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;I)V

    return-void
.end method

.method public showInView(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->showInView(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetAnimaExitDelegate;I)V

    return-void
.end method

.method public showInView(Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetAnimaExitDelegate;I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->k:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetClickDelegate;

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->l:Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet$ActionSheetAnimaExitDelegate;

    iput p3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->i:I

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkActionSheet;->b()V

    return-void
.end method
