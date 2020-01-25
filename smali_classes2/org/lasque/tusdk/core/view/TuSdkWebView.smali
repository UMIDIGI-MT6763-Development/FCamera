.class public Lorg/lasque/tusdk/core/view/TuSdkWebView;
.super Landroid/webkit/WebView;

# interfaces
.implements Lorg/lasque/tusdk/core/view/TuSdkViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;,
        Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;,
        Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

.field private c:Z

.field private d:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkWebView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->d:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkWebView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->d:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lorg/lasque/tusdk/core/view/TuSdkWebView$1;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView$1;-><init>(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->d:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->initView()V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TuSdkWebView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->c:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0xf0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->d:Lorg/lasque/tusdk/core/utils/anim/AnimHelper$TuSdkViewAnimatorAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/view/TuSdkWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->c:Z

    return p0
.end method


# virtual methods
.method public disableCache()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public disableHardwareAccelerated()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public getAdapter()Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->b:Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected initView()V
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewClient;-><init>(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebChromeClient;-><init>(Lorg/lasque/tusdk/core/view/TuSdkWebView;)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public loadView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setSupportZoom(Z)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public setAdapter(Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->b:Lorg/lasque/tusdk/core/view/TuSdkWebView$TuSdkWebViewAdapter;

    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    return-void
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    return-void
.end method

.method public setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 1

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->a:Landroid/widget/ProgressBar;

    iget-object p1, p0, Lorg/lasque/tusdk/core/view/TuSdkWebView;->a:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    :cond_0
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method

.method public setWebPageUrl(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
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
