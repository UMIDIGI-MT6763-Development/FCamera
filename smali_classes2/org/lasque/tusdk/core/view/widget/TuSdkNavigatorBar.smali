.class public abstract Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavigatorBarDelegate;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

.field private d:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

.field public delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavigatorBarDelegate;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;",
            "Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->e:Ljava/util/HashMap;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->f:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->e:Ljava/util/HashMap;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->f:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->e:Ljava/util/HashMap;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->f:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->back:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->a:I

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->buildView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;)V

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->loadView()V

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->setType(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private a(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->back:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;->setType(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->f:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorBackButton;->getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;)V
    .locals 2

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$2;->a:[I

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0xb

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x9

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    invoke-virtual {p2, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->back:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->left:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->showBackButton(Z)V

    :cond_1
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->b(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->getType()Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->f:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getButton(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public varargs addSegmentedText([I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getSegmented()Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->addSegmentedText([I)V

    return-void
.end method

.method public varargs addSegmentedText([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getSegmented()Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->addSegmentedText([Ljava/lang/String;)V

    return-void
.end method

.method protected buildSearchView(I)Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->buildView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    return-object p1
.end method

.method protected buildSegmented(I)Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->buildView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x428c0000    # 70.0f

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    return-object p1
.end method

.method public getButton(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;

    return-object p1
.end method

.method public getSearchView()Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    return-object v0
.end method

.method public getSegmented()Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public isBackButtonShowed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->b:Z

    return v0
.end method

.method protected onButtonClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->delegate:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavigatorBarDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;

    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavigatorBarDelegate;->onNavigatorBarButtonClicked(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;)V

    return-void
.end method

.method public searchKeyword(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getSearchView()Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->setTextAndSubmit(Ljava/lang/String;)V

    return-void
.end method

.method public setBackButtonId(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->a(I)V

    return-void
.end method

.method public setButton(Ljava/lang/String;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;
    .locals 1

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;->getBackgroundId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$TuSdkNavButtonStyleInterface;->getBackgroundId()I

    move-result p2

    invoke-virtual {p3, p2}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->setBackgroundResource(I)V

    :cond_1
    invoke-virtual {p3, p1}, Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;->setTitle(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->a(Lorg/lasque/tusdk/core/view/widget/button/TuSdkNavigatorButton;)V

    return-object p3
.end method

.method public setButtonLayoutId(I)V
    .locals 0

    iput p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->a:I

    return-void
.end method

.method public setSearchViewDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getSearchView()Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->setDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView$TuSdkSearchViewDelegate;)V

    return-void
.end method

.method public setSegmentedDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getSegmented()Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->setSegmentedDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;)V

    return-void
.end method

.method public setSegmentedSelected(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getSegmented()Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->changeSelected(I)V

    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public showBackButton(Z)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;->back:Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->getButton(Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonType;)Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->b:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-interface {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar$NavigatorBarButtonInterface;->setVisibility(I)V

    return-void
.end method

.method public viewWillDestory()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->viewWillDestory()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->viewWillDestory()V

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkNavigatorBar;->d:Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSearchView;->viewWillDestory()V

    :cond_1
    return-void
.end method
