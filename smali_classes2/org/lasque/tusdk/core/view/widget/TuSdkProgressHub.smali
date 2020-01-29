.class public abstract Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;


# static fields
.field private static a:Z


# instance fields
.field private b:Landroid/view/WindowManager;

.field private c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

.field private d:Landroid/os/Handler;

.field private e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

.field private f:Landroid/widget/FrameLayout;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$2;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$2;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->g:Ljava/lang/Runnable;

    new-instance v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$4;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$4;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    iget-object v0, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    iget-object v0, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    return-void
.end method

.method private a(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    return-void
.end method

.method private a(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 1

    sget-boolean v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    :goto_0
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->g:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    :cond_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->f:Landroid/widget/FrameLayout;

    if-nez p2, :cond_1

    sget-boolean p2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a:Z

    if-nez p2, :cond_3

    :cond_1
    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    if-nez p2, :cond_2

    sget-boolean p2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a:Z

    if-eqz p2, :cond_3

    :cond_2
    iget-object p2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    if-nez p2, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->runViewShowableAnim(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b()V

    :goto_0
    return-void
.end method

.method public static applyToViewWithNavigationBarHidden(Z)V
    .locals 0

    sput-boolean p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a:Z

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    new-instance v1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$3;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$3;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->getHubLayoutId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-virtual {v0, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->setDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->runViewShowableAnim(Z)V

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "TuSdkProgressHub: context is not instance of Activity"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->f:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->f:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c()V

    return-void
.end method

.method private b(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->f:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private c()V
    .locals 1

    sget-boolean v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e()V

    :goto_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->getHubLayoutId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-virtual {p1, p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->setDelegate(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkProgressHubViewDelegate;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->runViewShowableAnim(Z)V

    const-string p1, "ProgressHub"

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->buildApplicationPanelParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 3

    iget-object v0, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->context:Landroid/content/Context;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    iget-object v2, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->h:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    if-nez v1, :cond_1

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    iget-object v0, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a(Landroid/content/Context;)V

    :cond_1
    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a(ZZ)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->e:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->viewWillDestory()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    :cond_2
    :goto_1
    return-void
.end method

.method private d(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->setArgs(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    iget-wide v0, p1, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;->delay:J

    invoke-direct {p0, v0, v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a(J)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;->viewWillDestory()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dismissHub(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->a(ZZ)V

    return-void
.end method

.method public existHubView()Z
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->c:Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract getHubLayoutId()I
.end method

.method public onDismissAnimEnded()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->b()V

    return-void
.end method

.method public showHubView(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V
    .locals 10

    move-object v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v9, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;-><init>(Landroid/content/Context;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$TuSdkHubViewShowType;Ljava/lang/String;IIJ)V

    iget-object v1, v0, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;->d:Landroid/os/Handler;

    new-instance v2, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$1;

    invoke-direct {v2, p0, v9}, Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub$1;-><init>(Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHub;Lorg/lasque/tusdk/core/view/widget/TuSdkProgressHubView$HubArgCache;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
