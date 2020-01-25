.class public abstract Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;
.super Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;,
        Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

.field protected buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;",
            ">;"
        }
    .end annotation
.end field

.field protected currentButton:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;

.field protected mDelegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;

.field protected segmentedWrap:Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buttons:Ljava/util/ArrayList;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buttons:Ljava/util/ArrayList;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buttons:Ljava/util/ArrayList;

    new-instance p1, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    return-void
.end method


# virtual methods
.method public varargs addSegmentedText([I)V
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget v4, p1, v2

    invoke-virtual {p0, v4}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->getResString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->addSegmentedText([Ljava/lang/String;)V

    return-void
.end method

.method public varargs addSegmentedText([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buildSegmented(Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->a:Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->segmentedWrap:Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;

    invoke-virtual {v4, v3}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->addView(Landroid/view/View;)V

    check-cast v3, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;

    invoke-interface {v3, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buildSplitView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->segmentedWrap:Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;

    invoke-virtual {v3, v1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->segmentedWrap:Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected abstract buildSegmented(Ljava/lang/String;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected buildSplitView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public changeSelected(I)V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;

    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-interface {v3, v4}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;->onChangeSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected abstract findSegmentedWrap()Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;
.end method

.method public loadView()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->loadView()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->findSegmentedWrap()Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->segmentedWrap:Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->segmentedWrap:Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->removeAllViews()V

    return-void
.end method

.method protected onSegmentedClicked(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;)V
    .locals 1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedButton;->isSegmentSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->changeSelected(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->mDelegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;->onLasqueSegmentedSelected(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;I)V

    :cond_1
    return-void
.end method

.method public setSegmentedDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->mDelegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;

    return-void
.end method

.method public viewWillDestory()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkRelativeLayout;->viewWillDestory()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->mDelegate:Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented$TuSdkSegmentedDelegate;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkSegmented;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
