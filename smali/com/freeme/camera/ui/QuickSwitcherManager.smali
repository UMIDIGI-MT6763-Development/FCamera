.class public Lcom/freeme/camera/ui/QuickSwitcherManager;
.super Lcom/freeme/camera/ui/AbstractViewManager;
.source "QuickSwitcherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;
    }
.end annotation


# static fields
.field private static final FRONT_CAMERA_ID:Ljava/lang/String; = "1"

.field private static final ITEM_LIMIT:I = 0x4

.field private static final ITEM_WIDTH_IN_DP:I = 0x1e

.field private static final LEFT_MARGIN_IN_DP:I = 0x1e

.field private static final MARGIN_IN_DP:I = 0x2e

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;


# instance fields
.field private mOptionRoot:Landroid/view/ViewGroup;

.field private final mOrientationChangeListener:Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;

.field private mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickSwitcherLayout:Landroid/widget/LinearLayout;

.field private mTopBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/ui/QuickSwitcherManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/ui/QuickSwitcherManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freeme/camera/ui/AbstractViewManager;-><init>(Lcom/freeme/camera/common/app/IApp;Landroid/view/ViewGroup;)V

    new-instance p2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object p2, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f0901eb

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mTopBar:Landroid/view/View;

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f09016e

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    new-instance p1, Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;-><init>(Lcom/freeme/camera/ui/QuickSwitcherManager;Lcom/freeme/camera/ui/QuickSwitcherManager$1;)V

    iput-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOrientationChangeListener:Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;

    return-void
.end method

.method static synthetic access$100(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/freeme/camera/ui/QuickSwitcherManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mTopBar:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/freeme/camera/ui/QuickSwitcherManager;)Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;
    .locals 0

    iget-object p0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOrientationChangeListener:Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;

    return-object p0
.end method

.method private updateQuickItems()V
    .locals 8

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->size()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v1, v3

    mul-int/lit8 v4, v0, 0x4

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x3

    iget-object v5, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v5}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v5

    check-cast v5, Lcom/freeme/camera/ui/CameraAppUI;

    iget-object v6, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v6}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/freeme/camera/ui/CameraAppUI;->isThirdPartyIntent(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "1"

    iget-object v6, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v6}, Lcom/freeme/camera/common/app/IApp;->getAppUi()Lcom/freeme/camera/common/IAppUi;

    move-result-object v6

    invoke-interface {v6}, Lcom/freeme/camera/common/IAppUi;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v5}, Lcom/freeme/camera/common/app/IApp;->getHdrSupported()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-lez v2, :cond_2

    mul-int v3, v2, v0

    sub-int/2addr v1, v3

    sub-int/2addr v1, v3

    div-int v4, v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    mul-int/lit8 v1, v0, 0x3

    sub-int/2addr v3, v1

    div-int/lit8 v4, v3, 0x2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickSwitcherLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_3
    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickSwitcherLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListMap;->size()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_4

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v0

    invoke-virtual {v3, v7, v7, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v7, v7, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    :goto_3
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v5, v0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->updateViewOrientation()V

    :cond_6
    return-void
.end method


# virtual methods
.method public addToQuickSwitcher(Landroid/view/View;I)V
    .locals 3

    sget-object v0, Lcom/freeme/camera/ui/QuickSwitcherManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[registerToQuickSwitcher] priority = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    sget-object p1, Lcom/freeme/camera/ui/QuickSwitcherManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string p2, "already reach to limit number : 4"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->w(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mParentView:Landroid/view/ViewGroup;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->updateQuickItems()V

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickSwitcherLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public hideQuickSwitcherImmediately()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOrientationChangeListener:Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;

    invoke-interface {v0, v1}, Lcom/freeme/camera/common/app/IApp;->unregisterOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    return-void
.end method

.method public hideQuickSwitcherOption()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f01000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/freeme/camera/ui/QuickSwitcherManager$1;

    invoke-direct {v1, p0}, Lcom/freeme/camera/ui/QuickSwitcherManager$1;-><init>(Lcom/freeme/camera/ui/QuickSwitcherManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public registerQuickIconDone()V
    .locals 0

    invoke-direct {p0}, Lcom/freeme/camera/ui/QuickSwitcherManager;->updateQuickItems()V

    return-void
.end method

.method public removeFromQuickSwitcher(Landroid/view/View;)V
    .locals 6

    sget-object v0, Lcom/freeme/camera/ui/QuickSwitcherManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v1, "[removeFromQuickSwitcher]"

    invoke-static {v0, v1}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

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

    sget-object v3, Lcom/freeme/camera/ui/QuickSwitcherManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[removeFromQuickSwitcher] priority = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickItems:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickSwitcherLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mQuickSwitcherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showQuickSwitcherOption(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/freeme/camera/ui/QuickSwitcherManager;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-string v0, "[showQuickSwitcherOption] Already has options to be shown!"

    invoke-static {p1, v0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v0}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {p1}, Lcom/freeme/camera/common/app/IApp;->getGSensorOrientation()I

    move-result p1

    iget-object v1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    invoke-interface {v1}, Lcom/freeme/camera/common/app/IApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/freeme/camera/common/utils/CameraUtil;->rotateRotateLayoutChildView(Landroid/app/Activity;Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOptionRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mTopBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mApp:Lcom/freeme/camera/common/app/IApp;

    iget-object v0, p0, Lcom/freeme/camera/ui/QuickSwitcherManager;->mOrientationChangeListener:Lcom/freeme/camera/ui/QuickSwitcherManager$OnOrientationChangeListenerImpl;

    invoke-interface {p1, v0}, Lcom/freeme/camera/common/app/IApp;->registerOnOrientationChangeListener(Lcom/freeme/camera/common/app/IApp$OnOrientationChangeListener;)V

    return-void
.end method
