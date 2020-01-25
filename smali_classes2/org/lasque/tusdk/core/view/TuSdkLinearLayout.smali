.class public Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# instance fields
.field private a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private b:Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;

.field protected mIsLayouted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->initView()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public buildView(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->buildView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public buildView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->dispatchDrawBefore(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->dispatchDrawAfter(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected dispatchDrawAfter(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->b:Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->dispatchDrawAfter(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected dispatchDrawBefore(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->b:Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;->dispatchDrawBefore(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public drawer()Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->b:Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->b:Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->b:Lorg/lasque/tusdk/core/view/TuSdkViewDrawer;

    return-object v0
.end method

.method public equalViewIds(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getViewId(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getViewId(Landroid/view/View;)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getResColor(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getResString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getResString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getResString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getResString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/TuSdkContext;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextViewText(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->getTextViewText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->loadView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewById(Ljava/lang/String;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lorg/lasque/tusdk/core/TuSdkContext;->getIDResId(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewId(Landroid/view/View;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    return p1
.end method

.method public getViewParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    return-object p1
.end method

.method protected initView()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->a()V

    return-void
.end method

.method public isLayouted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->mIsLayouted:Z

    return v0
.end method

.method public loadView()V
    .locals 0

    return-void
.end method

.method public locationInWindowTop()I
    .locals 1

    invoke-static {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowTop(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public locationInWindowTop(Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindowTop(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected onLayouted()V
    .locals 0

    return-void
.end method

.method public postRequestLayout()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout$2;-><init>(Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method public setHeight(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method public setMargin(IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewMargin(Landroid/view/View;IIII)V

    return-void
.end method

.method public setMargin(Landroid/view/View;IIII)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getViewParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMarginBottom(I)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->setMarginBottom(Landroid/view/View;I)V

    return-void
.end method

.method public setMarginBottom(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewMarginBottom(Landroid/view/View;I)V

    return-void
.end method

.method public setMarginLeft(I)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->setMarginLeft(Landroid/view/View;I)V

    return-void
.end method

.method public setMarginLeft(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewMarginLeft(Landroid/view/View;I)V

    return-void
.end method

.method public setMarginRight(I)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->setMarginRight(Landroid/view/View;I)V

    return-void
.end method

.method public setMarginRight(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewMarginRight(Landroid/view/View;I)V

    return-void
.end method

.method public setMarginTop(I)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->setMarginTop(Landroid/view/View;I)V

    return-void
.end method

.method public setMarginTop(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewMarginTop(Landroid/view/View;I)V

    return-void
.end method

.method public setSize(Landroid/view/View;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->setViewSize(Landroid/view/View;II)V

    return-void
.end method

.method public setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setTextViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setViewSize(Landroid/view/View;II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->getViewParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method public setWidth(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->setViewWidth(Landroid/view/View;I)V

    return-void
.end method

.method public showView(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->showView(Landroid/view/View;Z)V

    return-void
.end method

.method public showView(Z)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->showView(Landroid/view/View;Z)V

    return-void
.end method

.method public showViewIn(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->showViewIn(Landroid/view/View;Z)V

    return-void
.end method

.method public showViewIn(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->showViewIn(Landroid/view/View;Z)V

    return-void
.end method

.method public viewDidLoad()V
    .locals 0

    return-void
.end method

.method public viewInTop(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->locationInWindowTop(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->locationInWindowTop()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public viewNeedRest()V
    .locals 0

    return-void
.end method

.method public viewWillDestory()V
    .locals 0

    return-void
.end method
