.class public Lcom/freeme/camera/ui/IndicatorViewManager;
.super Lcom/freeme/camera/ui/AbstractViewManager;
.source "IndicatorViewManager.java"


# static fields
.field private static final ITEM_LIMIT:I = 0x5

.field private static final PADDING_IN_DP:I = 0x14

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/IndicatorViewManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/IndicatorViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/AbstractViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object p1, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    return-void
.end method

.method private updateQuickItems()V
    .locals 7

    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorViewLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v1, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorViewLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v3, :cond_1

    invoke-virtual {v4, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    iget-object v5, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/freeme/camera/ui/IndicatorViewManager;->updateViewOrientation()V

    :cond_3
    return-void
.end method


# virtual methods
.method public addToIndicatorView(Landroid/view/View;I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/IndicatorViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[registerToIndicatorView] priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    sget-object p1, Lcom/freeme/camera/ui/IndicatorViewManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "already reach to limit number : 5"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/freeme/camera/ui/IndicatorViewManager;->updateQuickItems()V

    :cond_1
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/freeme/camera/ui/IndicatorViewManager;->updateQuickItems()V

    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorViewLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public registerQuickIconDone()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/IndicatorViewManager;->updateQuickItems()V

    return-void
.end method

.method public removeFromIndicatorView(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/freeme/camera/ui/IndicatorViewManager;->updateQuickItems()V

    :cond_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/ui/IndicatorViewManager;->mIndicatorViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
